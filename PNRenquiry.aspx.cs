using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Railway_Reservation
{
    public partial class PNRenquiry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public String Conn_String = "Data Source=MRINAL;Initial Catalog=Booking;Integrated Security=True";
        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "SELECT * FROM [TicketBooking] where PNR_Number=" + TextBox1.Text + "";

            using (SqlConnection connection = new SqlConnection(Conn_String))
            {
                SqlCommand command = new SqlCommand(q, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                // Bind the data to the GridView control
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
        }
    }
}