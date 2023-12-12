<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PNRenquiry.aspx.cs" Inherits="Railway_Reservation.PNRenquiry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PNR Enquiry</title>
    <style type="text/css">
        body
        {
            background-image: url('https://img.etimg.com/thumb/width-1200,height-900,imgsize-216979,resizemode-1,msid-62024619/news/politics-and-nation/coaches-for-disabled-placed-at-end-of-trains-not-justified-high-court.jpg');
            background-size: cover;
        }
        table{
            text-align: center;
            margin: auto;
        }
        .auto-style1 {
            width: 50%;
        }
        #form1{
            width: 50%;
            background-color: white;
            margin: auto;
            text-align: center;
            border: 10px solid black;
            border-radius: 10px;
        }
        #Button1, #Button2
        {
            margin: 30px;
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h2>Passenger Current Status Enquiry</h2>
        <table class="auto-style1">
            <tr>
                <td>Enter your PNR Number: 
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="320px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Text="RESET" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"></asp:GridView>

    </div>
    </form>
    </body>
</html>
