using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBanDoAnOnline.All_User_Control
{
    public partial class UC_BaoCao : UserControl
    {
        public UC_BaoCao()
        {
            InitializeComponent();
        }

        private void btnBaoCao_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = SQL.getConnection())
                {
                    conn.Open();

                    // Calculate daily revenue
                    using (SqlCommand cmd = new SqlCommand("SELECT SUM(TongTien) FROM HoaDon WHERE DAY(ThoiGianTT) = @ngay AND MONTH(ThoiGianTT) = @thang AND YEAR(ThoiGianTT) = @nam", conn))
                    {
                        cmd.Parameters.AddWithValue("@ngay", DateTime.Today.Day);
                        cmd.Parameters.AddWithValue("@thang", DateTime.Today.Month);
                        cmd.Parameters.AddWithValue("@nam", DateTime.Today.Year);
                        object result = cmd.ExecuteScalar();
                        double dailyRevenue = result != DBNull.Value ? Convert.ToDouble(result) : 0;
                        labelDoanhThuTheoNgay.Text = "Doanh thu theo ngày: " + dailyRevenue.ToString() + " VND";
                    }

                    // Calculate monthly revenue
                    using (SqlCommand cmd = new SqlCommand("SELECT SUM(TongTien) FROM HoaDon WHERE MONTH(ThoiGianTT) = @thang AND YEAR(ThoiGianTT) = @nam", conn))
                    {
                        cmd.Parameters.AddWithValue("@thang", DateTime.Today.Month);
                        cmd.Parameters.AddWithValue("@nam", DateTime.Today.Year);
                        object result = cmd.ExecuteScalar();
                        double monthlyRevenue = result != DBNull.Value ? Convert.ToDouble(result) : 0;
                        labelDoanhThuTheoThang.Text = "Doanh thu theo tháng: " + monthlyRevenue.ToString() + " VND";
                    }

                    // Calculate yearly revenue
                    using (SqlCommand cmd = new SqlCommand("SELECT SUM(TongTien) FROM HoaDon WHERE YEAR(ThoiGianTT) = @nam", conn))
                    {
                        cmd.Parameters.AddWithValue("@nam", DateTime.Today.Year);
                        object result = cmd.ExecuteScalar();
                        double yearlyRevenue = result != DBNull.Value ? Convert.ToDouble(result) : 0;
                        labelDoanhThuTheoNam.Text = "Doanh thu theo năm: " + yearlyRevenue.ToString() + " VND";
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã xảy ra lỗi: " + ex.Message);
            }

        }
    }
}
