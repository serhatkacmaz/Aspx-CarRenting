using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Car_Renting
{
    public partial class customerAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool Tc_Telefon_Kontrol()
        {
            if (txt_identity.Text.Length == 11 && txt_phone.Text.Length == 11)
                return true;
            return false;
        }

        private void Textbox_Clear()
        {
            txt_identity.Text = "";
            txt_name.Text = "";
            txt_surname.Text = "";
            txt_phone.Text = "";
            txt_mail.Text = "";
            txt_licenceNo.Text = "";
            txt_address.Text = "";
        }

        private void Veri_Kaydet()
        {
            SqlConnection sqlconnection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
            sqlconnection.Open();
            SqlCommand command = new SqlCommand("insert into Musteri values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8)", sqlconnection);
            command.Parameters.AddWithValue("@t1", txt_identity.Text);
            command.Parameters.AddWithValue("@t2", txt_name.Text);
            command.Parameters.AddWithValue("@t3", txt_surname.Text);
            command.Parameters.AddWithValue("@t4", txt_birthday.SelectedDate);
            command.Parameters.AddWithValue("@t5", txt_phone.Text);
            command.Parameters.AddWithValue("@t6", txt_mail.Text);
            command.Parameters.AddWithValue("@t7", txt_licenceNo.Text);
            command.Parameters.AddWithValue("@t8", txt_address.Text);
            command.ExecuteNonQuery();
            sqlconnection.Close();
            Textbox_Clear();
        }

        protected void btn_record_customer_Click(object sender, EventArgs e)
        {
            try
            {
                if (Tc_Telefon_Kontrol())
                {
                    Veri_Kaydet();
                    Response.Write("<script>alert('Kayıt Tamam')</script>");
                }
                else
                    Response.Write("<script>alert('Bilgiler Yanlış Girildi')</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('TC Kimlik Numaralı Kayıt Bulunmaktadır.')</script>");
                Textbox_Clear();
            }

        }
    }
}