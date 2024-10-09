using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace Database_connection
{
    public class db_connection
    {
        public SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\420772\source\repos\Database_connection\Database_connection\App_Data\Database1.mdf;Integrated Security=True");
        
        public void execute(SqlCommand cmd)//function for inset update and delete.
        {
            cmd.Connection = cn;
            if(cn.State == ConnectionState.Open)
            {
                cn.Close();

            }
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        public SqlDataReader getresult(SqlCommand cmd)//for selection operation.
        {
            cmd.Connection = cn;
            if(cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
            cn.Close();
        }
    }

}