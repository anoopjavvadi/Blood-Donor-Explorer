<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <p>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</p>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <p>
            &nbsp;&nbsp;<font 
        
                style="font-size: xx-large; font-family: Pristina; font-weight: 300; text-decoration: blink; color: #000000;">&nbsp; 
    WELCOME&nbsp;&nbsp; Administrator&nbsp;</font></p>
        <p>
            &nbsp;&nbsp;&nbsp;Hello, Administrator main job is to send 
    notifications</a> to the registered users who have the same blood group as the 
    requirement. You need to select the list of people with the blood group and then 
    send emails to them. The list of users must be selected such that they 
    didnot donate blood in past 3 months.</p>
    </ContentTemplate>
</asp:UpdatePanel>
<p>
    <br />
</p>
   
   </asp:Content>