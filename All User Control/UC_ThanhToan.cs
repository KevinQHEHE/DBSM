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
    public partial class UC_ThanhToan : UserControl
    {
        public UC_ThanhToan()
        {
            InitializeComponent();
        }

        private void btnChonHH_Click(object sender, EventArgs e)
        {
            // Lấy mã hóa đơn từ TextBox
            if (!int.TryParse(textBox1.Text, out int MaHD))
            {
                MessageBox.Show("Vui lòng nhập mã hóa đơn!");
                return;
            }

            string HinhThucTT = "";
            if (radioButton1.Checked)
            {
                HinhThucTT = "Tiền Mặt";
            }
            else if (radioButton2.Checked)
            {
                HinhThucTT = "Chuyển Khoản";
            }
            else
            {
                MessageBox.Show("Vui lòng chọn hình thức thanh toán!");
                return;
            }

            
                using (SqlConnection conn = SQL.getConnection())
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("ChonHinhThucThanhToan", conn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MaHD", MaHD);
                        cmd.Parameters.AddWithValue("@HinhThucTT", HinhThucTT);
                        cmd.ExecuteNonQuery();
                        cmd.ExecuteNonQuery();

                    }
                }
 
        }

        private void btnThemDG_Click(object sender, EventArgs e)
        {
           
                using (SqlConnection conn = SQL.getConnection())
                {
                    int MaHD = int.Parse(textBoxMaHD2.Text);
                    int MaKH = int.Parse(textBoxMaKH2.Text);
                    int SoSao = int.Parse(textBoxSoSao.Text);
                    string Nhanxet = textBoxNhanxet.Text;

                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("ThemDanhGia", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MaHD", MaHD);
                        cmd.Parameters.AddWithValue("@MaKH", MaKH);
                        cmd.Parameters.AddWithValue("@SoSao", SoSao);
                        cmd.Parameters.AddWithValue("@Nhanxet", Nhanxet);
                        cmd.ExecuteNonQuery();

                    }
                }

        }

        private void btnXoaDG_Click(object sender, EventArgs e)
        {

                using (SqlConnection conn = SQL.getConnection())
                {
                    int MaHD = int.Parse(textBoxMaHD2.Text);

                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("XoaDanhGia", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MaHD", MaHD);
                        cmd.ExecuteNonQuery();

                    }
                }
        }

        public DataTable getDSDanhGia()
        {
            // Mở kết nối
            using (SqlConnection conn = SQL.getConnection())
            {
                // Tạo một lệnh để chọn tất cả từ view 
                SqlCommand command = new SqlCommand("SELECT * FROM v_DanhMucKH_DanhGia", conn);

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

        private void btnLoad_Click_1(object sender, EventArgs e)
        {
            // Gọi hàm getDSDanhGia để lấy dữ liệu
            DataTable dt = getDSDanhGia();

            // Đặt DataSource của DataGridView của bạn
            DMDanhGia.DataSource = dt;
        }
    }
}
