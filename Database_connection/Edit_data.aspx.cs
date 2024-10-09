using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_connection
{
    public partial class Edit_data : System.Web.UI.Page
    {
        String a = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                a = Request.QueryString["Id"];
                db_connection db = new db_connection();
                SqlCommand cmd = new SqlCommand();
                cmd.Parameters.AddWithValue("@Id", a);
                cmd.CommandText = "select * from student where Id=@Id";
                SqlDataReader dr = db.getresult(cmd);
                if (dr.Read())
                {
                    TextBox1.Text = dr.GetInt32(0).ToString();
                    TextBox2.Text = dr.GetString(1);
                    TextBox3.Text = dr.GetInt32(2).ToString();
                    TextBox4.Text = dr.GetString(3);
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            db_connection db = new db_connection();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Id", int.Parse(TextBox1.Text));
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Age", int.Parse(TextBox3.Text));
            cmd.Parameters.AddWithValue("@Class", TextBox4.Text);

            cmd.CommandText = "update student set  Id=@Id, name = @Name, age=@Age, class=@Class where Id=@Id";
            db.execute(cmd);
            Response.Redirect("Data_List.aspx");
        }
    }
}