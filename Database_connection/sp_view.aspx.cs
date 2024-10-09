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
    public partial class sp_view : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load_data();
            }
            
            //GridView1.DataSource = dr;
            //GridView1.DataBind();

        }

        private void load_data()
        {
            db_connection db = new db_connection();
            SqlCommand cmd = new SqlCommand("spView");
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = db.getresult(cmd);

            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            Response.Write("<script>confirm('Are You Sure want to Delete.')</script>");
            int id = int.Parse(e.CommandArgument.ToString());
            db_connection db = new db_connection();
            SqlCommand cmd = new SqlCommand("spDelete");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", id);
            db.execute(cmd);
            load_data();
        }
    }
}