using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_connection
{
    public partial class sp_insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("spInsertion");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@roll",Convert.ToInt32( TextBox1.Text));
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@age", Convert.ToInt32(TextBox3.Text));
            cmd.Parameters.AddWithValue("@class", TextBox4.Text);

            db_connection db = new db_connection();
            db.execute(cmd);
            Response.Redirect("Data_List.aspx");

        }
    }
}