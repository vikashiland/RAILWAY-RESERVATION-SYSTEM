using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Railway_Reservation
{
    public partial class Passengers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvPassengers.DataBind();
                
            }
        }

        protected void btnAddPassenger_Click(object sender, EventArgs e)
        {
            // Create a new passenger object
            Passenger newPassenger = new Passenger();

            // Populate the passenger object with data from the form
            newPassenger.Name = txtName.Text;
            newPassenger.Age = int.Parse(txtAge.Text);
            newPassenger.Gender = rbGenderM.Checked ? "Male" : "Female";
            newPassenger.SeatPreference = ddlSeatPref.SelectedValue;

            // Add the passenger to the list of passengers
            List<Passenger> passengers;
            if (Session["passengers"] == null)
            {
                passengers = new List<Passenger>();
            }
            else
            {
                passengers = (List<Passenger>)Session["passengers"];
            }
            passengers.Add(newPassenger);
            Session["passengers"] = passengers;

            //Rebind the GridView to show the updated list of passengers
            gvPassengers.DataSource = Session["passengers"];
            gvPassengers.DataBind();

            txtName.Text = "";
            txtAge.Text = "";
            rbGenderM.Checked = false;
            ddlSeatPref.SelectedIndex = 0;
        }


    }

    internal class Passenger
    {
        public string Name { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }
        public string SeatPreference { get; set; }
    }

}