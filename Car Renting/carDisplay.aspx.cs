using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Renting
{
    public partial class carDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlconnection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM Araba", sqlconnection);
            sqlconnection.Open();
            SqlDataReader display = command.ExecuteReader();
            DataList1.DataSource = display;
            DataList1.DataBind();
            sqlconnection.Close();
            command.Dispose();
            sqlconnection.Dispose();
        }

        protected void btn_history_Click(object sender, EventArgs e)
        {

        }
    }
}