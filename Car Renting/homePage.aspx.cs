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
            rentStatus xyz = new rentStatus();
            SqlConnection sqlconnection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
            SqlCommand komut = new SqlCommand();
            komut.Connection = sqlconnection;
            komut.CommandText = "SELECT Barkod_No, Urun_Ad, Urun_Cins, Urun_Fiyat, Stok_Miktar, Risk_Limit, Tarih from Araba WHERE plaka = '" + xyz+ "'";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}