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
    public partial class UC_DonHang : UserControl
    {
        public UC_DonHang()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // Lấy mã đơn hàng từ TextBox
            if (!int.TryParse(textBox6.Text, out int maDH))
            {
                MessageBox.Show("Vui lòng nhập mã đơn hàng!");
                return;
            }
            // Xác định trạng thái được chọn
            string trangThai = "";
            if (radioButton1.Checked)
            {
                trangThai = "Đang chuẩn bị";
            }
            else if (radioButton2.Checked)
            {
                trangThai = "Đang giao";
            }
            else if (radioButton3.Checked)
            {
                trangThai = "Đã giao";
            }
            else
            {
                MessageBox.Show("Vui lòng chọn trạng thái của đơn hàng!");
                return;
            }
            // Khởi tạo kết nối với cơ sở dữ liệu
            using (SqlConnection conn = SQL.getConnection())
            {

                    // Mở kết nối
                    conn.Open();

                    // Cập nhật trạng thái đơn hàng trong cơ sở dữ liệu
                    using (SqlCommand cmd = new SqlCommand("UpdateDonHangStatus", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@TrangThai", trangThai);
                        cmd.Parameters.AddWithValue("@MaDH", maDH);
                        cmd.ExecuteNonQuery();
                    }
                }

            
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string maHoaDon = textBox1.Text.Trim();
            if (string.IsNullOrEmpty(maHoaDon))
            {
                MessageBox.Show("Vui lòng nhập mã hóa đơn.");
                return;
            }

             using (SqlConnection conn = SQL.getConnection())
                {
                    // Mở kết nối
                    conn.Open();

                    // Tạo câu lệnh SQL để gọi hàm tìm kiếm thông tin hóa đơn
                    string query = "SELECT * FROM [dbo].[SearchHoaDonByMaHD](@MaHD)";
                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@MaHD", maHoaDon);

                    // Thực thi câu lệnh và lấy dữ liệu vào DataTable
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        if (dataTable.Rows.Count > 0)
                        {
                            // Hiển thị thông tin hóa đơn trong DataGridView
                            dataGridView2.DataSource = dataTable;
                        }
                        else
                        {
                            MessageBox.Show("Không tìm thấy thông tin hóa đơn với mã hóa đơn đã nhập.");
                            dataGridView2.DataSource = null;
                        }
                    }
                }
  
        }

        private void button5_Click(object sender, EventArgs e)
        {
            
                using (SqlConnection conn = SQL.getConnection())
                {
                    conn.Open();

                    using (SqlCommand command = new SqlCommand("proc_AddHoaDon", conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        // Truyền giá trị cho các tham số của stored procedure từ các TextBox
                        command.Parameters.AddWithValue("@MaHD", textBox2.Text);
                        command.Parameters.AddWithValue("@MaDH", textBox3.Text);
                        command.Parameters.AddWithValue("@TinhTrang", textBox4.Text);
                        command.Parameters.AddWithValue("@HinhThucTT", textBox5.Text);
                        command.Parameters.AddWithValue("@ThoiGianTT", dateTimePicker1.Value);
                        command.Parameters.AddWithValue("@TongTien", textBox7.Text);

                        // Thực thi stored procedure
                        command.ExecuteNonQuery();

                        MessageBox.Show("Đã chèn dữ liệu thành công.");
                    }
                }
       
        }
    }
}
