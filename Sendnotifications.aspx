<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Sendnotifications.aspx.cs" Inherits="Sendnotifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
        &nbsp;Please Enter the Blood Group&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="bgroup" runat="server" Width="69px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label></p>
    <form id="form1">
    <div>
    
        <br />
        <br />
        <asp:TextBox ID="body" runat="server" Height="140px" 
             TextMode="MultiLine" Width="546px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Send" />
        <br />
        <br />
    
    </div>
    </form>

</asp:Content>

