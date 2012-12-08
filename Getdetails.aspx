<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Getdetails.aspx.cs" Inherits="Getdetails" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

  <script type="text/javascript" src="Scripts/jquery.js"></script>
  <script type="text/javascript" src="Scripts/init.js"></script>

   <link href="jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="jquery.min.js"></script>
  <script type="text/javascript" src="jquery-ui.min.js"></script>
  
  <%--<script type="text/javascript" src="Scripts/jquery-1.4.1.js"></script>
  <script type="text/javascript" src="Scripts/jquery-1.4.1-vsdoc.js"></script>
  <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <p>
        &nbsp;Please Select the Blood Group&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;<asp:DropDownList
            ID="ddlbg" runat="server">
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnGetlist" runat="server" onclick="btnGetlist_Click" 
            Text="Get List" />
    </p>

    


    <div id="number"><p>
        &nbsp; The number of people with the selected blood group is :&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        &nbsp;</p>
   </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>

