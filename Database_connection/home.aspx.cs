using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_connection
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            db_connection db1 = new db_connection();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into student values (@ID,@name,@age,@class)";
            cmd.Parameters.AddWithValue("@ID",int.Parse(rollno.Text) );
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@age", int.Parse(age.Text));
            cmd.Parameters.AddWithValue("@class", clas.Text);
            db1.execute(cmd);
        }
    }
}