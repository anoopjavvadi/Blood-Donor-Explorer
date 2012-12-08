<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    <style type="text/css">
        .style1
        {
            width: 82%;
            height: 36px;
            margin-right: 0px;
        }
        .style2
        {
            width: 168px;
            background-color: #FFFFCC;
        }
        .style3
        {
            width: 168px;
            height: 22px;
            background-color: #FFFFCC;
        }
        .style16
        {
            height: 22px;
            width: 148px;
            background-color: #FFFFFF;
        }
        .style17
        {
            width: 168px;
            background-color: #FFFFCC;
            height: 30px;
        }
        .style22
        {
            width: 148px;
            background-color: #FFFFFF;
            height: 30px;
        }
        .style23
        {
            width: 148px;
            background-color: #FFFFFF;
        }
        .style34
        {
            width: 168px;
            background-color: #FFFFCC;
            height: 31px;
        }
        .style36
        {
            width: 148px;
            background-color: #FFFFFF;
            height: 31px;
        }
        .style38
        {
            width: 179px;
            background-color: #FFFFCC;
        }
        .style39
        {
            width: 179px;
            height: 22px;
            background-color: #FFFFCC;
        }
        .style40
        {
            width: 179px;
            background-color: #FFFFCC;
            height: 31px;
        }
        .style41
        {
            width: 179px;
            background-color: #FFFFCC;
            height: 30px;
        }
        .style43
        {
            width: 168px;
            background-color: #FFFFCC;
            height: 71px;
        }
        .style44
        {
            width: 179px;
            background-color: #FFFFCC;
            height: 71px;
        }
        .style45
        {
            width: 148px;
            background-color: #FFFFFF;
            height: 71px;
        }
        .style47
        {
            color: #666666;
        }
        .style48
        {
            height: 22px;
            width: 163px;
            background-color: #FFFFFF;
        }
        .style49
        {
            width: 163px;
            background-color: #FFFFFF;
            height: 71px;
        }
        .style51
        {
            width: 163px;
            background-color: #FFFFFF;
            height: 31px;
        }
        .style52
        {
            width: 163px;
            background-color: #FFFFFF;
            height: 30px;
        }
        .style53
        {
            width: 163px;
            background-color: #FFFFFF;
        }
        .style55
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style56
        {
            font-family: Calibri;
        }
    </style>
</head>
<body bgcolor="grey">
    <form id="form1" runat="server">
    <div style="background-color: #FFFFFF; margin-left: 135px; margin-right: 123px;">
    
        <h1 style="color: #000000; text-align: center; height: 97px; background-color: #FFFFFF" 
            class="style56">
            Blood Donor Explorer</h1>
        <h2 style="color: #FFFFFF; font-family: Andalus; background-color: #CC0000">
            Registration Form</h2>
        <h6 class="style47" style="background-color: #666666">
            a</h6>
        *&nbsp; Indicates Mandatory fields.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        <table cellspacing="0" class="style1">
            <tr>
                <td class="style2" bgcolor="#FFFFCC">
                    <asp:Label ID="lblFirstName" runat="server" Text="Firstname"></asp:Label>
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                    :</td>
                <td class="style38" bgcolor="#FFFFCC">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td class="style23" bgcolor="#FFFFCC">
                    <asp:RequiredFieldValidator ID="RFVFirstName" runat="server" 
                        ControlToValidate="txtFirstName" ErrorMessage="Enter Your First Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" bgcolor="#FFFFCC">
                    <asp:Label ID="lblLastName" runat="server" Text="Lastname"></asp:Label>
&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                    :</td>
                <td class="style39" bgcolor="#FFFFCC">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td class="style16" bgcolor="#FFFFCC">
                    <asp:RequiredFieldValidator ID="RFVLastName" runat="server" 
                        ControlToValidate="txtLastName" ErrorMessage="Enter Your Last Name"></asp:RequiredFieldValidator>
                </td>
                <td class="style48" bgcolor="#FFFFCC">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style43" bgcolor="#FFFFCC">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    :</td>
                <td class="style44" bgcolor="#FFFFCC">
&nbsp;&nbsp;&nbsp;<asp:RadioButtonList ID="rbtnlGender" runat="server" Height="52px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style45" bgcolor="#FFFFCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="rbtnlGender" ErrorMessage="Select your gender"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td class="style49" bgcolor="#FFFFCC">
                    </td>
            </tr>
            <tr>
                <td class="style2" bgcolor="#FFFFCC">
                    <asp:Label ID="lblDateOfBirth" runat="server" Text="Date of Birth"></asp:Label>
&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                    :</td>
                <td class="style38" bgcolor="#FFFFCC">
                    <asp:DropDownList ID="ddlMonth" runat="server">
                        <asp:ListItem>Jan</asp:ListItem>
                        <asp:ListItem>Feb</asp:ListItem>
                        <asp:ListItem>Mar</asp:ListItem>
                        <asp:ListItem>Apr</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>Jun</asp:ListItem>
                        <asp:ListItem>Jul</asp:ListItem>
                        <asp:ListItem>Aug</asp:ListItem>
                        <asp:ListItem>Sep</asp:ListItem>
                        <asp:ListItem>Oct</asp:ListItem>
                        <asp:ListItem>Nov</asp:ListItem>
                        <asp:ListItem>Dec</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlDay" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem Value="24"></asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlYear" runat="server" 
                        >
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                        <asp:ListItem>1959</asp:ListItem>
                        <asp:ListItem>1958</asp:ListItem>
                        <asp:ListItem>1957</asp:ListItem>
                        <asp:ListItem>1956</asp:ListItem>
                        <asp:ListItem>1955</asp:ListItem>
                        <asp:ListItem>1954</asp:ListItem>
                        <asp:ListItem>1953</asp:ListItem>
                        <asp:ListItem>1952</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style23" bgcolor="#FFFFCC">
                    &nbsp;</td>
                <td class="style53" bgcolor="#FFFFCC">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" bgcolor="#FFFFCC">
                    <asp:Label ID="lblBloodGroup" runat="server" Text="BloodGroup"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    :</td>
                <td class="style38" bgcolor="#FFFFCC">
                    <asp:DropDownList ID="ddlBloodGroup" runat="server">
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    &nbsp; </td>
                <td class="style23" bgcolor="#FFFFCC">
                    <asp:RequiredFieldValidator ID="RFVBloodGroup" runat="server" 
                        ControlToValidate="ddlBloodGroup" ErrorMessage="Select your blood group"></asp:RequiredFieldValidator>
                </td>
                <td class="style53" bgcolor="#FFFFCC">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style34" bgcolor="#FFFFCC">
                    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
&nbsp;:::&nbsp; &nbsp;<asp:Label ID="lblLine1" runat="server" Text="Line1"></asp:Label>
                    &nbsp;&nbsp;*&nbsp;&nbsp;&nbsp; 
                    :</td>
                <td class="style40" bgcolor="#FFFFCC">
                    <asp:TextBox ID="txtAddressLine1" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td class="style36" bgcolor="#FFFFCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtAddressLine1" ErrorMessage="Enter your address"></asp:RequiredFieldValidator>
                </td>
                <td class="style51" bgcolor="#FFFFCC">
                    </td>
            </tr>
            <tr>
                <td class="style2" bgcolor="#FFFFCC">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblLine2" runat="server" Text="Line2"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                    :</td>
                <td class="style38" bgcolor="#FFFFCC">
                    <asp:TextBox ID="txtAddressLine2" runat="server"></asp:TextBox>
&nbsp;</td>
                <td class="style23" bgcolor="#FFFFCC">
                    &nbsp;</td>
                <td class="style53" bgcolor="#FFFFCC">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" bgcolor="#FFFFCC">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp; :</td>
                <td class="style38" bgcolor="#FFFFCC">
                    <asp:TextBox ID="txtAddressCity" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td class="style23" bgcolor="#FFFFCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtAddressCity" 
                        ErrorMessage="Enter City you live in"></asp:RequiredFieldValidator>
                </td>
                <td class="style53" bgcolor="#FFFFCC">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17" bgcolor="#FFFFCC">
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                    &nbsp;&nbsp;*&nbsp; &nbsp;:</td>
                <td class="style41" bgcolor="#FFFFCC">
                    <asp:TextBox ID="txtAddressState" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td class="style22" bgcolor="#FFFFCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtAddressState" 
                        ErrorMessage="Enter State you live in"></asp:RequiredFieldValidator>
                </td>
                <td class="style52" bgcolor="#FFFFCC">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" bgcolor="#FFFFCC">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" Text="Zipcode" ID="lblZipcode"></asp:Label>
                    &nbsp;* :</td>
                <td class="style38" bgcolor="#FFFFCC">
                    <asp:TextBox ID="txtAddressZipcode" runat="server" Width="106px"></asp:TextBox>
                    &nbsp;</td>
                <td class="style23" bgcolor="#FFFFCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtAddressZipcode" 
                        ErrorMessage="Enter Zipcode"></asp:RequiredFieldValidator>
                </td>
                <td class="style53" bgcolor="#FFFFCC">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtAddressZipcode" 
                        ErrorMessage="Enter valid Zipcode" 
                        ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="#FFFFCC">
                    <asp:Label ID="lblEmail" runat="server" Text="EmailAddress"></asp:Label>
                &nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="style41" bgcolor="#FFFFCC">
                    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td class="style22" bgcolor="#FFFFCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtEmailAddress" 
                        ErrorMessage="Enter email address"></asp:RequiredFieldValidator>
                </td>
                <td class="style52" bgcolor="#FFFFCC">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmailAddress" 
                        ErrorMessage="Enter valid email address" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" bgcolor="#FFFFCC">
                    <asp:Label ID="lblPhoneNum" runat="server" Text="PhoneNum"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="style38" bgcolor="#FFFFCC">
                    <asp:TextBox ID="txtPhoneNum" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td class="style23" bgcolor="#FFFFCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtPhoneNum" ErrorMessage="Enter phone number "></asp:RequiredFieldValidator>
                </td>
                <td class="style53" bgcolor="#FFFFCC">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtPhoneNum" 
                        ErrorMessage="Enter valid PhoneNo" 
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                        style="background-color: #FFFFFF"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <br />
        Create UserID and password here:.<br />
        
    
                    <pre>   <span class="style55">UserID :</span>          <asp:TextBox ID="txtUserID" runat="server" style="margin-left: 0px"></asp:TextBox> </pre>
             
                   <pre>    <span class="style55">Password :</span>       <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Please Enter Password" 
                        ForeColor="Black" 
            style="font-family: 'Times New Roman', Times, serif; font-size: medium"></asp:RequiredFieldValidator>
   <span class="style55">ReenterPassword :   </span><asp:TextBox ID="txtRePassword" runat="server" TextMode="Password"></asp:TextBox> </pre>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtRePassword" ErrorMessage="Please reenter password" 
                        ForeColor="Black" 
            style="font-family: 'Times New Roman', Times, serif; font-size: medium"></asp:RequiredFieldValidator>
               
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtRePassword" 
                        ErrorMessage="Passwords doesnot match" ForeColor="Black" 
            style="font-family: 'Times New Roman', Times, serif; font-size: medium"></asp:CompareValidator>
              
              <pre>        <asp:Button ID="btnRegister" runat="server" BorderColor="#CC0099" 
                        BorderStyle="Groove" Text="Register" onclick="btnRegister_Click" />        <asp:Button 
            ID="btnReset" runat="server" BorderColor="#CC3399" 
                        BorderStyle="Groove" Text="Login" onclick="btnReset_Click" 
            Width="63px" /></pre>
                    &nbsp;&nbsp;
                   <asp:Label ID="lblSuccess" runat="server" 
                        style="font-size: large; font-family: 'Engravers MT'"></asp:Label>
                </div>

    
        <br />

    
    </div>
    </form>
</body>
</html>
