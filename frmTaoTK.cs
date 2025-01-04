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

namespace QuanLyBanDoAnOnline
{
    public partial class frmTaoTK : Form
    {
        public frmTaoTK()
        {
            InitializeComponent();
        }

        private void btnTao_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = SQL.getConAD())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("proc_ThemTaiKhoan", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@manv", textBoxMaNV.Text);
                cmd.Parameters.AddWithValue("@tk", textBoxUsername.Text);
                cmd.Parameters.AddWithValue("@mk", textBoxPassword.Text);
                if (cmd.ExecuteNonQuery() > 0)
                {
                    MessageBox.Show("Tạo tài khoản thành công");
                    conn.Close();
                }
                else
                {
                    conn.Close();
                }

            }
        }
    }
}
