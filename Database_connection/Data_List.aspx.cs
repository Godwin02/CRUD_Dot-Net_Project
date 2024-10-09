using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_connection
{
    public partial class Data_List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            db_connection cn = new db_connection();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from student";
            SqlDataReader dr = cn.getresult(cmd);
            DataList1.DataSource = dr;
            DataList1.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }
    }

}