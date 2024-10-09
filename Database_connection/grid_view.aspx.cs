using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_connection
{
    public partial class grid_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            db_connection db = new db_connection();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from student";
           SqlDataReader dr =  db.getresult(cmd);
            GridView1.DataSource = dr;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}