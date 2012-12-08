<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="PostNotification.aspx.cs" Inherits="PostNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
    <br />
&nbsp;&nbsp;&nbsp; Post Updates to Donor Page</p>
<p style="margin-left: 40px">
    <asp:TextBox ID="textbox" runat="server" Height="121px" TextMode="MultiLine" 
        Width="468px"></asp:TextBox>
</p>
<p style="margin-left: 40px">
    Send Updates to Donors with Blood Group:
    <asp:TextBox ID="TextBox2" runat="server" Width="75px"></asp:TextBox>
</p>
<p style="margin-left: 200px">
&nbsp;<asp:Button ID="Button1" runat="server" Text="Send" onclick="Button1_Click" 
         />
</p>
<p style="margin-left: 40px">
    Send Updates on Campaigns to Donor with Zip-code:
    <asp:TextBox ID="TextBox3" runat="server" Width="73px"></asp:TextBox>
</p>
<p style="margin-left: 200px">
&nbsp;<asp:Button ID="Button2" runat="server" Text="Send" 
        onclick="Button2_Click"  />
</p>
<p style="margin-left: 40px">
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>

</asp:Content>

