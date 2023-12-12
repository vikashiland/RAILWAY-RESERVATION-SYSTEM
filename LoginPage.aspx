<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Railway_Reservation.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>USER LOGIN</title>
    <style type="text/css">
        body{
            margin: 0;
            padding: 0;
            background-image:url('train.png');
            background-size: cover;
            font-family: sans-serif;
        }
        .loginbox{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 350px;
            height: 500px;
            padding:80px 40px;
            box-sizing: border-box;
            background: rgb(255, 255, 255);
        }
        #Image1{
            width: 100px;
            height:100px;
            overflow: hidden;
            top: calc(-100px/2);
            left: calc(50% - 50px);
            position: absolute;
        }
        h2{
            padding: 0;
            margin: 0;
            text-align: center;

        }
        .auto-style1 {
            width: 80%;
            padding: 20px;
        }
        .auto-style3 {
            width: 109px;
            padding-top: 30px;
            text-align: center;
            padding-bottom: 30px;
        }
        .auto-style4 {
            text-align: center;
            padding: 20px;
        }
        #TextBox1, #TextBox2
        {
            border: 3px solid black;
            border-radius: 10px;
        }
        #Button1
        {
            cursor: pointer;
        }
        p{
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="loginbox">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/R.png"/>
        <h2>LOG IN</h2>
        <form runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">USERNAME</td>
                    <td>
                        <asp:TextBox ID="UserBox" runat="server" OnTextChanged="UserBox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">PASSWORD</td>
                    <td>
                        <asp:TextBox ID="PassBox" runat="server" TextMode="Password"></asp:TextBox>
                        <input type="checkbox" onchange="document.getElementById('PassTextBox').type=this.checked? 'text' : 'password'"/>Show Password
                    </td>
                </tr>
                <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" Height="49px" Width="141px" BackColor="Black" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Font-Bold="True" OnClick="Button1_Click" />
                </td>
            </tr>
            </table>
            <asp:Label ID="errorLabel" runat="server" Visible="false" ForeColor="Red"></asp:Label>
            <br />
            <asp:HyperLink ID="registerLink" OnClick="registerLink_Click()" runat="server" NavigateUrl="RegistrationPage.aspx">New User? Register Here</asp:HyperLink>
        </form>
    </div>
    
</body>
</html>
