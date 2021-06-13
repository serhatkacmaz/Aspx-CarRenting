using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Renting
{
    public partial class customerUpdateForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlconnection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM Musteri WHERE tc='" + Request["tc"].ToString() + "'", sqlconnection);
            sqlconnection.Open();
            SqlDataReader display = command.ExecuteReader();
            if (display.Read())
            {
                txt_identity.Text = display["tc"].ToString();   
                txt_name.Text = display["ad"].ToString();
                txt_surname.Text = display["soyad"].ToString();
                txt_phone.Text = display["telefon"].ToString();
                txt_mail.Text = display["mail"].ToString();
                txt_address.Text = display["adres"].ToString();
            }

            command.Dispose();
            sqlconnection.Dispose();

        }

        // telefon hane kontrol
        private bool Telefon_Hane_Kontrol()
        {
            if (txt_phone.Text.Length == 11)
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
            txt_address.Text = "";
        }

        private void Veri_Guncelle()
        {

            SqlConnection sqlconnection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
            sqlconnection.Open();
            SqlCommand command = new SqlCommand("update Musteri set ad=@t1, soyad=@t2,telefon=@t3,mail=@t4,adres=@t5 where tc='" + txt_identity.Text + "' ", sqlconnection);
            command.Parameters.AddWithValue("@t1", txt_name.Text);
            command.Parameters.AddWithValue("@t2", txt_surname.Text);
            command.Parameters.AddWithValue("@t3", txt_phone.Text);
            command.Parameters.AddWithValue("@t4", txt_mail.Text);
            command.Parameters.AddWithValue("@t5", txt_address.Text);
            command.ExecuteNonQuery();
            sqlconnection.Close();
            Textbox_Clear();
        }


        protected void btn_Update_Click(object sender, EventArgs e)
        {
            try
            {
                if (Telefon_Hane_Kontrol())
                {
                    SqlConnection sqlconnection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MsSql"].ConnectionString);
                    sqlconnection.Open();
                    SqlCommand command = new SqlCommand("select *from Musteri where tc='" + txt_identity.Text + "'", sqlconnection);
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        Veri_Guncelle();
                        Response.Redirect("customerDisplay.aspx");
                    }
                    sqlconnection.Close();
                }
                else
                    Response.Write("<script>alert('Bilgiler Yanlış Girildi')</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Hata Oluştu')</script>");
            }

        }

    }
}