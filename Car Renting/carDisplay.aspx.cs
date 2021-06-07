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
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
            SqlCommand listeleKomutu = new SqlCommand("SELECT * FROM vehicles", baglanti);
            baglanti.Open();
            SqlDataReader listele = listeleKomutu.ExecuteReader();
            DataList1.DataSource = listele;
            DataList1.DataBind();
            baglanti.Close();
            listeleKomutu.Dispose();
            baglanti.Dispose();
        }
    }
}