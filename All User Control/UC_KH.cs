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
    public partial class UC_KH : UserControl
    {
        SqlConnection conn = null;

        public UC_KH()
        {
            InitializeComponent();
        }

        private void btnTimKH_Click(object sender, EventArgs e)
        {
            string sdt = textBoxTimKH.Text.Trim();
            if (string.IsNullOrEmpty(sdt))
            {
                MessageBox.Show("Vui lòng nhập số điện thoại.");
                return;
            }

            if (sdt.Length != 10 || !sdt.All(char.IsDigit))
            {
                MessageBox.Show("Số điện thoại không hợp lệ!");
                return;
            }

            if (conn == null || conn.State == ConnectionState.Closed)
            {
                conn = SQL.getConnection();
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT dbo.TimTenKHTheoSDT(@SDT)", conn);
            cmd.Parameters.AddWithValue("@SDT", sdt);
            object result = cmd.ExecuteScalar();
            if (result != DBNull.Value && result != null)
            {
                string tenKH = (string)result;
                // Hiển thị TenKH trong label
                textBoxTimKH.Text = tenKH;
                // Đóng kết nối
                conn.Close();
            }
        }

        private void btnThemKH_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(textBoxMaKH.Text) || string.IsNullOrWhiteSpace(textBoxTenKH.Text)
               || string.IsNullOrWhiteSpace(textBoxDiaChiKH.Text) || string.IsNullOrWhiteSpace(textBoxSDT_KH.Text))
            {
                MessageBox.Show("Vui lòng không để trống.");
                return;
            }

            int MaKH = int.Parse(textBoxMaKH.Text);
            string TenKH = textBoxTenKH.Text;
            string DiaChiKH = textBoxDiaChiKH.Text;
            string SDT_KH = textBoxSDT_KH.Text;

            if (MaKH <= 0)
            {
                MessageBox.Show("Vui lòng nhập một giá trị hợp lệ cho 'MaKH'.");
                return;
            }

            if (SDT_KH.Length != 10 || !SDT_KH.All(char.IsDigit))
            {
                MessageBox.Show("Số điện thoại không hợp lệ!");
                return;
            }

            if (conn == null || conn.State == ConnectionState.Closed)
            {
                conn = SQL.getConnection();
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand("ThemKhachHang", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaKH", SqlDbType.Int).Value = MaKH;
            cmd.Parameters.Add("@TenKH", SqlDbType.NVarChar).Value = TenKH;
            cmd.Parameters.Add("@DiaChiKH", SqlDbType.NVarChar).Value = DiaChiKH;
            cmd.Parameters.Add("@SDT_KH", SqlDbType.Char).Value = SDT_KH;

            if (cmd.ExecuteNonQuery() > 0)
            {
                MessageBox.Show("Thêm thành công!", "Thêm Khách Hàng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                conn.Close();
            }
            else
            {
                MessageBox.Show("Thêm thất bại", "Thêm Khách Hàng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        public DataTable getDSKhachHang()
        {
            // Mở kết nối
            using (SqlConnection conn = SQL.getConnection())
            {
                // Tạo một lệnh để chọn tất cả từ view 
                SqlCommand command = new SqlCommand("SELECT * FROM v_DanhMucKhachHang", conn);

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
            // Gọi hàm getDSKhachHang để lấy dữ liệu
            DataTable dt = getDSKhachHang();

            // Đặt DataSource của DataGridView của bạn
            DMKH.DataSource = dt;
        }
    }
}
