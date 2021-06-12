using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Car_Renting
{
    public partial class customerDisplay : System.Web.UI.Page
    {
        private void Musteri_Listele()
        {
            SqlConnection sqlconnection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
            sqlconnection.Open();
            SqlCommand command = new SqlCommand("select * from Musteri", sqlconnection);
            SqlDataReader reader = command.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            sqlconnection.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Musteri_Listele();
        }

    }
}