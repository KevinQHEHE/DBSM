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
    public partial class UC_LapDonHang : UserControl
    {
        public UC_LapDonHang()
        {
            InitializeComponent();
        }

        private void btnThemVaoDonHang_Click(object sender, EventArgs e)
        {
            
                using (SqlConnection conn = SQL.getConnection())

                {
                    int MaDH = int.Parse(textBoxMaDH.Text);
                    int MaMon = int.Parse(textBoxMaMon.Text);
                    int SoLuong = int.Parse(textBoxSoLuong.Text);
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("ThemMonAnVaoDonHang", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MaDH", MaDH);
                        cmd.Parameters.AddWithValue("@MaMon", MaMon);
                        cmd.Parameters.AddWithValue("@SoLuong", SoLuong);
                        int rowsAffected = cmd.ExecuteNonQuery();

                    //if (rowsAffected > 0)
                    //{
                    //    MessageBox.Show("Thêm món ăn vào đơn hàng thành công! ");
                    //}
                    //else
                    //{
                    //    MessageBox.Show("Thêm thất bại");
                    //}
                }
                }
            
            
        }

        private void btnSuaSL_Click(object sender, EventArgs e)
        {
            
                using (SqlConnection conn = SQL.getConnection())
                {
                    int MaDH = int.Parse(textBoxMaDH.Text);
                    int MaMon = int.Parse(textBoxMaMon.Text);
                    int SoLuong = int.Parse(textBoxSoLuong.Text);
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("SuaSoLuongMonAnTrongDonHang", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MaDH", MaDH);
                        cmd.Parameters.AddWithValue("@MaMon", MaMon);
                        cmd.Parameters.AddWithValue("@SoLuong", SoLuong);
                        int rowsAffected = cmd.ExecuteNonQuery();

                        //if (rowsAffected > 0)
                        //{
                        //    MessageBox.Show("Sửa số lượng thành công! ");
                        //}
                        //else
                        //{
                        //    MessageBox.Show("Sửa thất bại");
                        //}
                    }
                }                 
        }

        private void btnXoaOrder_Click(object sender, EventArgs e)
        {
                using (SqlConnection conn = SQL.getConnection())
                {
                    int MaDH = int.Parse(textBoxMaDH.Text);
                    int MaMon = int.Parse(textBoxMaMon.Text);
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("XoaMonAnKhoiDonHang", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MaDH", MaDH);
                        cmd.Parameters.AddWithValue("@MaMon", MaMon);
                        int rowsAffected = cmd.ExecuteNonQuery();

                        //if (rowsAffected > 0)
                        //{
                        //    MessageBox.Show("Xóa thành công! ");
                        //}
                        //else
                        //{
                        //    MessageBox.Show("Xóa thất bại");
                        //}
                    }
                }
        }

        public DataTable getDSLapDonHang()
        {
            // Mở kết nối
            using(SqlConnection conn = SQL.getConnection())
            {
                // Tạo một lệnh để chọn tất cả từ view 
                SqlCommand command = new SqlCommand("SELECT * FROM v_DanhMucLapDonHang", conn);

                // Tạo một DataTable và SqlDataAdapter mới
                DataTable table = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter(command);

                // Đổ dữ liệu vào DataTable bằng cách sử dụng SqlDataAdapter
                adapter.Fill(table);

                // Đóng kết nối
                conn.Close();

                // Trả về DataTable đã được điền
                return table;
                //

            }
        }

        private void btnLoad_Click(object sender, EventArgs e)
        {
            // Gọi hàm  getDSLapDonHang để lấy dữ liệu
            DataTable dt = getDSLapDonHang();

            // Đặt DataSource của DataGridView của bạn
            DMLapDonHang.DataSource = dt;
        }
    }
}
