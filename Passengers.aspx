<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Passengers.aspx.cs" Inherits="Railway_Reservation.Passengers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Passengers List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <style>
        body
        {
            background-image: url('https://images.hindustantimes.com/img/2022/09/04/1600x900/5d684970-2c65-11ed-bc83-9c2713d606c3_1662315737914.jpg');
            background-size: cover;
        }
        /* Add a class to the form */
        #passengerForm 
        {
            width: 1098px;
            margin: 0 auto;
            margin-top: 100px;
            padding: 20px;
            background-color: #f5f5f5;
            border: 10px solid black;
            border-radius: 20px;
        }
        /* Add a class to the labels */
        #passengerForm label 
        {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }
        /* Add a class to the text boxes */
        #passengerForm input[type="text"] 
        {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius:4px;
        }
        /* Add a class to the radio buttons */
        #passengerForm input[type="radio"] 
        {
            margin-right: 100px;
        }
        /* Add a class to the drop-down list */
        #passengerForm select 
        {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius:4px;
        }
        /* Add a class to the button */
        #passengerForm input[type="button"] 
        {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .form-radio
        {
            display: inline-block;
            margin-left: 100px;
        }
        .form-button
        {
            margin-left: 450px;
            text-align: center;
            background-color: lightgreen;
            
        }
        #gvPassengers
        {
            margin: 50px;
            padding: 10px;
            text-align: center;
        }
        h1
        {
            text-align: center;
            text-decoration: underline;
            font: bold;
            font-family: 'Oswald', sans-serif;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="passengerForm" runat="server">
        <h1>Add Passengers</h1>
        <label class="form-label">Name:</label>
        <asp:TextBox ID="txtName" runat="server" CssClass="form-textbox"></asp:TextBox>
        <br />
        <label class="form-label">Age:</label>
        <asp:TextBox ID="txtAge" runat="server" CssClass="form-textbox"></asp:TextBox>
        <br />
        
        <label class="form-label">Gender:
            <asp:RadioButton ID="rbGenderM" runat="server" Text="Male" GroupName="gender" CssClass="form-radio" Width="165px"/>
            <asp:RadioButton ID="rbGenderF" runat="server" Text="Female" GroupName="gender" CssClass="form-radio" Width="165px"/>
        </label>
        <br />
        
        <label class="form-label">Seat Preference:</label>
        <asp:DropDownList ID="ddlSeatPref" runat="server" CssClass="form-select">
            <asp:ListItem Text="Window" Value="Window"></asp:ListItem>
            <asp:ListItem Text="Aisle" Value="Aisle"></asp:ListItem>
            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnAddPassenger" runat="server" Text="Add Passenger" BackColor="Green" BorderColor="Green" BorderStyle="Solid" ForeColor="White" Font-Bold="True" OnClick="btnAddPassenger_Click" CssClass="form-button" Height="38px" Width="197px"/>
        <asp:GridView ID="gvPassengers" runat="server" AutoGenerateColumns="False" DataSource='<%# Session["passengers"] %>' BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="182px" Width="958px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="SeatPreference" HeaderText="Seat Preference" />
            </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </form>
</body>
</html>
