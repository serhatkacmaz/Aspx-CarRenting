using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Renting
{
    public partial class rentStatus : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlconnection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT plaka,marka,model FROM Araba WHERE plaka='"+Request["plaka"].ToString()+"'", sqlconnection) ;
            sqlconnection.Open();
            SqlDataReader display = command.ExecuteReader();
            if (display.Read())
            {
                TextBox1.Text = display["plaka"].ToString();
                TextBox1.Enabled = false;
                TextBox3.Text = display["marka"].ToString();
                TextBox3.Enabled = false;
                TextBox2.Text = display["model"].ToString();
                TextBox2.Enabled = false;

            }

            command.Dispose();
            sqlconnection.Dispose();

        }
    }
}