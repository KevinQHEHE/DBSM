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
    public partial class DanhMuc : UserControl
    {
        SqlConnection conn = null;
        public DanhMuc()
        {
            InitializeComponent();
        }

        public DataTable getDSMonAn()
        {
            // Mở kết nối
            if (conn == null || conn.State == ConnectionState.Closed)
            {
                conn = SQL.getConnection();
                conn.Open();
            }

            // Tạo một lệnh để chọn tất cả từ view 
            SqlCommand command = new SqlCommand("SELECT * FROM v_DanhMucMonAn", conn);

            // Tạo một DataTable và SqlDataAdapter mới
            DataTable table = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(command);

            // Đổ dữ liệu vào DataTable bằng cách sử dụng SqlDataAdapter
            adapter.Fill(table);

            // Đóng kết nối
            conn.Close();

            // Trả về DataTable đã được điền
            return table;
        }

        public DataTable getDSDonHang()
        {
            // Mở kết nối
            if (conn == null || conn.State == ConnectionState.Closed)
            {
                conn = SQL.getConnection();
                conn.Open();
            }
            // Tạo một lệnh để chọn tất cả từ view 
            SqlCommand command = new SqlCommand("SELECT * FROM v_DanhMucDonHang", conn);

            // Tạo một DataTable và SqlDataAdapter mới
            DataTable table = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(command);

            // Đổ dữ liệu vào DataTable bằng cách sử dụng SqlDataAdapter
            adapter.Fill(table);

            // Đóng kết nối
            conn.Close();

            // Trả về DataTable đã được điền
            return table;
        }
        public DataTable getDSHoaDon()
        {
            // Mở kết nối
            if (conn == null || conn.State == ConnectionState.Closed)
            {
                conn = SQL.getConnection();
                conn.Open();
            }
            // Tạo một lệnh để chọn tất cả từ view 
            SqlCommand command = new SqlCommand("SELECT * FROM v_DanhMucHoaDon", conn);

            // Tạo một DataTable và SqlDataAdapter mới
            DataTable table = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(command);

            // Đổ dữ liệu vào DataTable bằng cách sử dụng SqlDataAdapter
            adapter.Fill(table);

            // Đóng kết nối
            conn.Close();

            // Trả về DataTable đã được điền
            return table;
        }
        public DataTable getDSNhanVienGiaoHang()
        {
            // Mở kết nối
            if (conn == null || conn.State == ConnectionState.Closed)
            {
                conn = SQL.getConnection();
                conn.Open();
            }
            // Tạo một lệnh để chọn tất cả từ view 
            SqlCommand command = new SqlCommand("SELECT * FROM v_DanhMucNhanVienGiaoHang", conn);

            // Tạo một DataTable và SqlDataAdapter mới
            DataTable table = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(command);

            // Đổ dữ liệu vào DataTable bằng cách sử dụng SqlDataAdapter
            adapter.Fill(table);

            // Đóng kết nối
            conn.Close();

            // Trả về DataTable đã được điền
            return table;
        }
        private void btnDMMonAn_Click(object sender, EventArgs e)
        {
            // Gọi hàm getDSMonAn để lấy dữ liệu
            DataTable dt = getDSMonAn();

            // Đặt DataSource của DataGridView của bạn
            danhMuc1.DataSource = dt;
            danhMuc1.Columns["MaMon"].HeaderText = "Mã Món Ăn";
            danhMuc1.Columns["TenMon"].HeaderText = "Tên Món Ăn";
            danhMuc1.Columns["Gia"].HeaderText = "Giá";
            danhMuc1.Columns["MoTa"].HeaderText = "Mô Tả";
            danhMuc1.Columns["DonViTinh"].HeaderText = "Đơn Vị Tính";
        }

        private void btnDMDonHang_Click(object sender, EventArgs e)
        {
            // Gọi hàm getDSMonAn để lấy dữ liệu
            DataTable dt = getDSDonHang();

            // Đặt DataSource của DataGridView của bạn
            danhMuc1.DataSource = dt;
            danhMuc1.Columns["MaDH"].HeaderText = "Mã Đơn Hàng";
            danhMuc1.Columns["TGDatDonHang"].HeaderText = "Thời Gian Đặt Đơn Hàng";
            danhMuc1.Columns["TrangThaiDonHang"].HeaderText = "Trạng Thái Đơn Hàng";
        }

        private void btnDMHoaDon_Click(object sender, EventArgs e)
        {
            // Gọi hàm getDSMonAn để lấy dữ liệu
            DataTable dt = getDSHoaDon();

            // Đặt DataSource của DataGridView của bạn
            danhMuc1.DataSource = dt;
            danhMuc1.DataSource = dt;
            danhMuc1.Columns["MaHD"].HeaderText = "Mã Hóa Đơn";
            danhMuc1.Columns["MaDH"].HeaderText = "Mã Đơn Hàng";
            danhMuc1.Columns["TinhTrang"].HeaderText = "Tình Trạng";
            danhMuc1.Columns["HinhThucTT"].HeaderText = "Hình Thức Thanh Toán";
            danhMuc1.Columns["ThoiGianTT"].HeaderText = "Thời Gian Thanh Toán";
            danhMuc1.Columns["TongTien"].HeaderText = "Tổng Tiền";
        }

        private void btnDMNVGH_Click(object sender, EventArgs e)
        {
            // Gọi hàm getDSMonAn để lấy dữ liệu
            DataTable dt = getDSNhanVienGiaoHang();

            // Đặt DataSource của DataGridView của bạn
            danhMuc1.DataSource = dt;
            danhMuc1.Columns["MaNV"].HeaderText = "Mã Nhân Viên";
            danhMuc1.Columns["MaHD"].HeaderText = "Mã Hóa Đơn";
            danhMuc1.Columns["TenNV"].HeaderText = "Tên Nhân Viên ";
            danhMuc1.Columns["SDT_NV"].HeaderText = "Số Điện Thoại Nhân Viên";
        }

        private void btnLoadKH_Click(object sender, EventArgs e)
        {
            // Gọi hàm getDSKhachHang để lấy dữ liệu
            DataTable dt = getDSKhachHang();

            // Đặt DataSource của DataGridView của bạn
            danhMuc1.DataSource = dt;
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

        private void btnLoadDatMon_Click(object sender, EventArgs e)
        {
            // Gọi hàm  getDSDatMon để lấy dữ liệu
            DataTable dt = getDSDatMon();

            // Đặt DataSource của DataGridView của bạn
            danhMuc1.DataSource = dt;
        }
        public DataTable getDSLapDonHang()
        {
            // Mở kết nối
            using (SqlConnection conn = SQL.getConnection())
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

        private void btnLoadLDH_Click(object sender, EventArgs e)
        {
            // Gọi hàm  getDSLapDonHang để lấy dữ liệu
            DataTable dt = getDSLapDonHang();

            // Đặt DataSource của DataGridView của bạn
            danhMuc1.DataSource = dt;
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

        private void btnLoadDanhGia_Click(object sender, EventArgs e)
        {
            // Gọi hàm getDSDanhGia để lấy dữ liệu
            DataTable dt = getDSDanhGia();

            // Đặt DataSource của DataGridView của bạn
            danhMuc1.DataSource = dt;
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
        private void btnLoadThanhToan_Click(object sender, EventArgs e)
        {
            // Gọi hàm getDSKHThanhToan để lấy dữ liệu
            DataTable dt = getDSKHThanhToan();

            // Đặt DataSource của DataGridView của bạn
            danhMuc1.DataSource = dt;
        }
    }
}
