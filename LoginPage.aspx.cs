using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Railway_Reservation
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public string Conn_String = "Data Source=MRINAL;Initial Catalog=Booking;Integrated Security=True";
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(Conn_String);
            conn.Open();
            try
            {
                string q = "SELECT Name FROM [User] where Username=@username AND Password=@password";
                SqlCommand command = new SqlCommand(q, conn);
                command.Parameters.AddWithValue("@username", UserBox.Text.ToString());
                command.Parameters.AddWithValue("@password", PassBox.Text.ToString());
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    Session["UserName"] = UserBox.Text;
                    Session["LastActivity"] = DateTime.Now;
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    errorLabel.Text = "Username or password is incorrect.";
                    errorLabel.Visible = true;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        protected void registerLink_Click(object sender, EventArgs e)
        {
            // Perform any necessary actions before redirecting to the registration page
            Response.Redirect("RegistrationPage.aspx");
        }

        protected void UserBox_TextChanged(object sender, EventArgs e)
        {

        }
        
    }
}