<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Railway_Reservation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>INDIAN RAILWAYS</title>
    <style type="text/css">
        body{
            background-image: url("https://img.etimg.com/thumb/width-1200,height-900,imgsize-1415767,resizemode-1,msid-73011575/industry/transportation/railways/indian-railways-150-private-trains-to-run-on-100-routes.jpg");
            background-size: cover;
        }
        #Button1
        {
            border-radius: 5px;
        }
        .auto-style1 {
            width: 675px;
            margin: auto;
            border: 10px solid black;
            background-color: white;
            height: 474px;
        }
        .auto-style2 {
            text-align: center;
            font-size: 30px;
            padding: 20px;
        }
        .auto-style3 {
            width: 661px;
            padding: 5px;
            
        }
        .auto-style4 {
            text-align: center;
            padding: 20px;
        }
        
        .auto-style5 {
            text-align: center;
            width: 327px;
            
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><b>CREATE YOUR ACCOUNT</b></td>
            </tr>
            <tr>
                <td class="auto-style5">NAME</td>
                <td class="auto-style3">
                    <asp:TextBox ID="NameTextBox" runat="server" Width="239px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="Please Enter Your Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">AGE</td>
                <td class="auto-style3">
                    <asp:TextBox ID="AgeTextBox" runat="server" Width="239px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please Enter your Age" ForeColor="Red" SetFocusOnError="True" ControlToValidate="AgeTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">GENDER</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="245px">
                        <asp:ListItem Text="Select Gender" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" InitialValue="-1" runat="server" Display="Dynamic" ErrorMessage="Please Enter Gender" ForeColor="Red" SetFocusOnError="True" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">EMAIL</td>
                <td class="auto-style3">
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="239px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please Enter the Email" ForeColor="Red" SetFocusOnError="True" ControlToValidate="EmailTextBox">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please enter a valid email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">AADHAR CARD</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Aadhar" runat="server" Width="239px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" Display="Dynamic" ErrorMessage="Please Enter the Aadhar Card Number" ForeColor="Red" SetFocusOnError="True" ControlToValidate="Aadhar">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">ADDRESS</td>
                <td class="auto-style3">
                    <asp:TextBox ID="AddressTextBox" runat="server" Width="239px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please Enter the Address" ForeColor="Red" SetFocusOnError="True" ControlToValidate="AddressTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">CITY</td>
                <td class="auto-style3">
                    <asp:TextBox ID="CityTextBox" runat="server" Width="239px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Dynamic" ErrorMessage="Please Enter the City" ForeColor="Red" SetFocusOnError="True" ControlToValidate="CityTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">PINCODE</td>
                <td class="auto-style3">
                    <asp:TextBox ID="PincodeTextBox" runat="server" Width="239px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Please Enter the Pincode" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PincodeTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">STATE</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="245px">
                        <asp:ListItem>Select State</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                        <asp:ListItem>Jammu & Kashmir</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Manipur</asp:ListItem>
                        <asp:ListItem>Meghalaya</asp:ListItem>
                        <asp:ListItem>Mizoram</asp:ListItem>
                        <asp:ListItem>Nagaland</asp:ListItem>
                        <asp:ListItem>Odisha</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Sikkim</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Tripura</asp:ListItem>
                        <asp:ListItem>Telangana</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                        <asp:ListItem>Andaman & Nicobar (UT)</asp:ListItem>
                        <asp:ListItem>Chandigarh (UT)</asp:ListItem>
                        <asp:ListItem>Dadra & Nagar Haveli (UT)</asp:ListItem>
                        <asp:ListItem>Daman & Diu (UT)</asp:ListItem>
                        <asp:ListItem>Lakshadweep (UT)</asp:ListItem>
                        <asp:ListItem>Puducherry (UT)</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" InitialValue="Select State" runat="server" Display="Dynamic" ErrorMessage="Please Enter State" ForeColor="Red" SetFocusOnError="True" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">USERNAME</td>
                <td class="auto-style3">
                    <asp:TextBox ID="UsernameTextBox" runat="server" Width="239px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ErrorMessage="Please Enter the Username" ForeColor="Red" SetFocusOnError="True" ControlToValidate="UsernameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">MOBILE NUMBER</td>
                <td class="auto-style3">
                    <asp:TextBox ID="MobileNumber" runat="server" Width="239px" OnTextChanged="MobileNumber_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" Display="Dynamic" ErrorMessage="Enter the Mobile Number" ForeColor="Red" SetFocusOnError="True" ControlToValidate="MobileNumber">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="MobileNumber" Display="Dynamic" ErrorMessage="Please enter a correct Mobile Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[789]\d{9}$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">PASSWORD</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Pass1TextBox" runat="server" Width="239px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Enter the Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="Pass1TextBox">*</asp:RequiredFieldValidator>
                    <input type="checkbox" onchange="document.getElementById('Pass1TextBox').type=this.checked? 'text' : 'password'"/>Show Password
                </td>
            </tr>
            <tr>
                <td class="auto-style5">CONFIRM PASSWORD</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Pass2TextBox" runat="server" Width="239px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Password does not match" ForeColor="Red" SetFocusOnError="True" ControlToValidate="Pass2TextBox">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Pass1TextBox" ControlToValidate="Pass2TextBox" Display="Dynamic" ErrorMessage="Password does not match" ForeColor="Red">*</asp:CompareValidator>
                    <input type="checkbox" onchange="document.getElementById('Pass2TextBox').type=this.checked? 'text' : 'password'"/>Show Password
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="REGISTER" onClick="Button1_Click" Height="49px" Width="141px" BackColor="Black" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Font-Bold="True" />
                </td>

            </tr>
           
        </table>
        
    </div>
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Silver" Font-Size="Larger" ForeColor="Red" />
    </form>
</body>
</html>