using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_connection
{
    public partial class remove_student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a1 = Request.QueryString["Id"];
            db_connection db = new db_connection();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Id", a1);
            cmd.CommandText = "delete from student where Id=@Id";
            db.execute(cmd);
            Response.Redirect("Data_List.aspx");
        }
    }
}