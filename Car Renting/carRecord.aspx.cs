using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Car_Renting
{
    public partial class carRecord1 : System.Web.UI.Page
    {
        private void Clean_Textbox()
        {
            txt_licencePlate.Text = "";
            txt_model.Text = "";
            txt_color.Text = "";
            txt_brand.Text = "";
            txt_km.Text = "";
            txt_rentPrices.Text = "";
            DropDown_type.Text = "Arazi";
            DropDown_gearType.Text = "Manuel";
            DropDown_fuel.Text = "Dizel";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_carCancel_Click(object sender, EventArgs e)
        {
            Clean_Textbox();
        }

        protected void btn_carRegister_Click(object sender, EventArgs e)
        {
            
            SqlConnection sqlconnection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
            sqlconnection.Open();
            SqlCommand command = new SqlCommand("insert into Araba values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8,@t9)", sqlconnection);
            command.Parameters.AddWithValue("@t1", txt_licencePlate.Text);
            command.Parameters.AddWithValue("@t2", txt_brand.Text);
            command.Parameters.AddWithValue("@t3", txt_model.Text);
            command.Parameters.AddWithValue("@t4", DropDown_type.Text);
            command.Parameters.AddWithValue("@t5", DropDown_gearType.Text);
            command.Parameters.AddWithValue("@t6", txt_color.Text);
            command.Parameters.AddWithValue("@t7", txt_km.Text);
            command.Parameters.AddWithValue("@t8", DropDown_fuel.Text);
            command.Parameters.AddWithValue("@t9", txt_rentPrices.Text);
            command.ExecuteNonQuery();
            SqlCommand command2 = new SqlCommand("insert into kiraDurum (plaka,marka,model) values(@a1,@a2,@a3)", sqlconnection);
            command2.Parameters.AddWithValue("@a1", txt_licencePlate.Text);
            command2.Parameters.AddWithValue("@a2", txt_brand.Text);
            command2.Parameters.AddWithValue("@a3", txt_model.Text);
            command2.ExecuteNonQuery();

            sqlconnection.Close();

            Response.Write("Araba Kayıt Eklendi.");
            Clean_Textbox();
        }
    }
}