using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Renting
{
    public partial class homePage : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlconnection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM kiraDurum", sqlconnection);
            sqlconnection.Open();
            SqlDataReader display = command.ExecuteReader();
            DataList1.DataSource = display;
            DataList1.DataBind();
            sqlconnection.Close();
            command.Dispose();
            sqlconnection.Dispose();
        }
        protected void buttonEvent(object sender, EventArgs e)
        {
            
            Response.Redirect("rentStatus.aspx?plaka="+ ((Label)DataList1.Items[1].FindControl("Label1")).Text);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }
    }
}