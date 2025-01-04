using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBanDoAnOnline.All_User_Control
{
    public partial class UC_DatMon : UserControl
    {
        public UC_DatMon()
        {
            InitializeComponent();
        }

        private void btnDatMon_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = SQL.getConnection())
            {
                int MaKH = int.Parse(textBoxMaKH.Text);
                int MaMon = int.Parse(textBoxMaMon.Text);
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("ThemDatMon", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@MaKH", MaKH);
                    cmd.Parameters.AddWithValue("@MaMon", MaMon);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void btnXoaDat_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = SQL.getConnection())
            {
                int MaKH = int.Parse(textBoxMaKH.Text);
                int MaMon = int.Parse(textBoxMaMon.Text);
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("XoaDatMon", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@MaKH", MaKH);
                    cmd.Parameters.AddWithValue("@MaMon", MaMon);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public DataTable getDSDatMon()
        {
            // Mở kết nối
            using (SqlConnection conn = SQL.getConnection())
            {
                // Tạo một lệnh để chọn tất cả từ view 
                SqlCommand command = new SqlCommand("SELECT * FROM v_DanhMucDatMon", conn);

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
            // Gọi hàm  getDSDatMon để lấy dữ liệu
            DataTable dt = getDSDatMon();

            // Đặt DataSource của DataGridView của bạn
            dataGridView2.DataSource = dt;
        }

        public DataTable getDSMonAn()
        {
            // Mở kết nối
            using (SqlConnection conn = SQL.getConnection())
            {

                // Tạo một lệnh để chọn tất cả từ view 
                SqlCommand command = new SqlCommand("SELECT * FROM v_DanhMucMonAn", conn);

                // Tạo một DataTable và SqlDataAdapter mới
                DataTable table = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter(command);

                // Đổ dữ liệu vào DataTable bằng cách sử dụng SqlDataAdapter
                adapter.Fill(table);

                // Trả về DataTable đã được điền
                return table;
            }
        }
        private void btnLoadMonAn_Click(object sender, EventArgs e)
        {
            // Gọi hàm getDSMonAn để lấy dữ liệu
            DataTable dt = getDSMonAn();

            // Đặt DataSource của DataGridView của bạn
            dataGridView1.DataSource = dt;
            dataGridView1.Columns["MaMon"].HeaderText = "Mã Món Ăn";
            dataGridView1.Columns["TenMon"].HeaderText = "Tên Món Ăn";
            dataGridView1.Columns["Gia"].HeaderText = "Giá";
            dataGridView1.Columns["MoTa"].HeaderText = "Mô Tả";
            dataGridView1.Columns["DonViTinh"].HeaderText = "Đơn Vị Tính";


        }
    }
}
