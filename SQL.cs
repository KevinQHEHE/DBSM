using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanDoAnOnline
{
    internal class SQL
    {
        public static class GLOBAL
        {
            public static string username="";
            public static string password=""; 
        }

        static string strcon = @"Data Source=DESKTOP-BSIOOIV\DKHOA03;Initial Catalog=QuanLyDonHang0005;Integrated Security=True";

        public static SqlConnection getConAD()
        {
            return new SqlConnection(strcon);
        }

        static string con = @"Data Source=DESKTOP-BSIOOIV\DKHOA03;Initial Catalog=QuanLyDonHang0005;User Id=" + GLOBAL.username + ";Password=" + GLOBAL.password + ";";
        public static SqlConnection getConnection()
        {
            return new SqlConnection(con);
        }

    }
}
