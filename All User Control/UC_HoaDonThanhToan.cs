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
    public partial class UC_HoaDonThanhToan : UserControl
    {
        public UC_HoaDonThanhToan()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {

                using (SqlConnection conn = SQL.getConnection())

                {
                    int MaHD = int.Parse(textBox4.Text);
                    int MaKH = int.Parse(textBox3.Text);
                    int PhiVanChuyen = int.Parse(textBox2.Text);
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("ThemHoaDonThanhToan", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MaHD", MaHD);
                        cmd.Parameters.AddWithValue("@MaKH", MaKH);
                        cmd.Parameters.AddWithValue("@PhiVanChuyen", PhiVanChuyen);
                        cmd.ExecuteNonQuery();

                    
                    }
                }
        }

        private void button2_Click(object sender, EventArgs e)
        {
          
                using (SqlConnection conn = SQL.getConnection())

                {
                    int MaHD = int.Parse(textBox4.Text);
                    int MaKH = int.Parse(textBox3.Text);
                    int PhiVanChuyen = int.Parse(textBox2.Text);
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("CapNhatPhiHoaDonThanhToan", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MaHD", MaHD);
                        cmd.Parameters.AddWithValue("@MaKH", MaKH);
                        cmd.Parameters.AddWithValue("@PhiVanChuyen", PhiVanChuyen);
                        cmd.ExecuteNonQuery();

                
                    }
                }

        }

        private void button1_Click(object sender, EventArgs e)
        {
      
                using (SqlConnection conn = SQL.getConnection())

                {
                    int MaHD = int.Parse(textBox4.Text);
                    int MaKH = int.Parse(textBox3.Text);
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("XoaHoaDonThanhToan", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MaHD", MaHD);
                        cmd.Parameters.AddWithValue("@MaKH", MaKH);
                        cmd.ExecuteNonQuery();


                    }
                }
        }

        public DataTable getDSKHThanhToan()
        {
            // Mở kết nối
            using (SqlConnection conn = SQL.getConnection())
            {
                // Tạo một lệnh để chọn tất cả từ view 
                SqlCommand command = new SqlCommand("SELECT * FROM v_DanhMucKH_ThanhToan", conn);

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
            // Gọi hàm getDSKHThanhToan để lấy dữ liệu
            DataTable dt = getDSKHThanhToan();

            // Đặt DataSource của DataGridView của bạn
            DMThanhToan.DataSource = dt;
        }
    }
    
}
