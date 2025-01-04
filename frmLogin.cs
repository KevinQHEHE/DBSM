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
using static QuanLyBanDoAnOnline.SQL;

namespace QuanLyBanDoAnOnline
{
    public partial class frmLogin : Form
    {
        public frmLogin()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            GLOBAL.username = txtUsername.Text;
            GLOBAL.password = txtPassword.Text;
            try
            {
                using (SqlConnection conn = SQL.getConAD())
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT dbo.checkLogin(@user, @pass)", conn))
                    {
                        cmd.Parameters.AddWithValue("@user", txtUsername.Text);
                        cmd.Parameters.AddWithValue("@pass", txtPassword.Text);
                        bool count = (bool)cmd.ExecuteScalar();
                        if (count)
                        {
                            frmHome ds = new frmHome();
                            this.Hide();
                            ds.Show();
                        }
                        else
                        {
                            labelError.Visible = true;
                            txtPassword.Clear();
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Có lỗi xảy ra: " + ex.Message);
               
            }
        }



        private void frmLogin_Load(object sender, EventArgs e)
        {

        }
    }
}
