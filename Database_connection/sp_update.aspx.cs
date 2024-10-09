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
    public partial class sp_update : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load_data();
            }
        }

        private void load_data()
        {
            db_connection db = new db_connection();
            SqlCommand cmd = new SqlCommand("spView");
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = db.getresult(cmd);
            Datalist1.DataSource = dr;
            Datalist1.DataBind();
        }

        protected void Button1_Click(object sender, CommandEventArgs e)
        {
            Button button = (Button)sender;

            // Find the parent DataListItem
            DataListItem item = (DataListItem)button.NamingContainer;

            // Retrieve the updated values from the textboxes
            int id = int.Parse(((TextBox)item.FindControl("TextBox1")).Text);
            string name = ((TextBox)item.FindControl("TextBox2")).Text;
            Response.Write(name);

            int age = int.Parse(((TextBox)item.FindControl("TextBox3")).Text);
            string clas = ((TextBox)item.FindControl("TextBox4")).Text;

            db_connection db = new db_connection();
            SqlCommand cmd = new SqlCommand("spUpdate");
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id", id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@class", clas);

            db.execute(cmd);
            load_data();
        }
    }
}