using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Railway_Reservation
{
    public partial class WebForm1 : System.Web.UI.Page
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
                

                string q = "Insert into [User](Name, Age, Gender, Email, Aadhar_Card, Address, City, Pincode, State, Username, Mobile, Password)values('"+NameTextBox.Text.ToString()+"',"+AgeTextBox.Text.ToString()+ ",'" + DropDownList1.SelectedItem.Value + "','" + EmailTextBox.Text.ToString() + "'," + Aadhar.Text.ToString() + ",'" + AddressTextBox.Text.ToString() + "','" + CityTextBox.Text.ToString() + "'," + PincodeTextBox.Text.ToString() + ",'" + DropDownList2.Text + "','" + UsernameTextBox.Text.ToString() + "'," + MobileNumber.Text.ToString() + ",'" + Pass1TextBox.Text.ToString() + "')";
                //string q = "INSERT INTO User(UserID, Name, Username, Password, Gender, Age, Mobile, Email, City, State, Pincode, Aadhar_Card, Address) VALUES('1', 'Mrinal Prakash', 'EMPHAY', 'Prakash123@', 'Male', '23', '7255851994', 'mrinalprakash4577@gmail.com', 'Dhanbad', 'Jharkhand', '826004', '649606367039', 'NEAR SHIV MANDIR RAHARGORA DHAIYA PO-NAGNAGAR DHANBAD')";
                SqlCommand command = new SqlCommand(q, conn);
                command.ExecuteNonQuery();
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
        protected void MobileNumber_TextChanged(object sender, EventArgs e)
        {

        }

    }


}