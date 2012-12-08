<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="Chat" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="Stylesheet" href="common.css" type="text/css" />
<link id="Link1" rel="stylesheet" href="system.css" type="text/css" />
<link id="Link2" rel="stylesheet" href="general.css" type="text/css"></link>
<link id="Link3" rel="stylesheet" href="addons.css" type="text/css"></link>
<link id="Link4" rel="stylesheet" href="layout.css" type="text/css"></link>
<link id="Link5" rel="stylesheet" href="template.css" type="text/css"></link>
<link id="Link6" rel="stylesheet" href="typo.css" type="text/css"></link>
<link id="Link7" rel="stylesheet" href="moo.css" type="text/css"></link>
<head id="Head1" runat="server">
    <title>Chat Hub</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        #ja-header
        {
            margin-top: 60px;
            }
    </style>
    <link rel="Stylesheet" href="common.css" type="text/css" />
<link id="Link8" rel="stylesheet" href="system.css" type="text/css"></link>
<link id="Link9" rel="stylesheet" href="general.css" type="text/css"></link>
<link id="Link10" rel="stylesheet" href="addons.css" type="text/css"></link>
<link id="Link11" rel="stylesheet" href="layout.css" type="text/css"></link>
<link id="Link12" rel="stylesheet" href="template.css" type="text/css"></link>
<link id="Link13" rel="stylesheet" href="typo.css" type="text/css"></link>
<link id="Link14" rel="stylesheet" href="moo.css" type="text/css"></link>
</head>
<body id="bd" class="fs3 FF">
<div id="hh">
<div id="ja-header" class="wrap">
<div class="main">
<div class="inner clearfix">
    <form id="form2" runat="server">
    
    <div>
    
        <h1 class="style1">
            <em>Discussion Forum</em>
            <a href="Home.aspx" target="whatever"><img border="0" src="home.jpg" alt="" 
                style="height: 60px; width: 60px; float: right"></a>
            </h1>
        <br />
           <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" />
        <asp:UpdatePanel ID="ChatUpdatePanel" runat="server" UpdateMode="Always">
                <ContentTemplate>
               
               <br />
               <br />
               <br />


                      <h2> Discussion Box</h2>
                      <br />

                    <div id="ChatText" 
                        style="width: 440px; float: left; margin-right: 40px;height: 283px; overflow: auto; background-color: #B6E2B7;">
                         
                        <asp:BulletedList runat="server" ID="ChatMessageList" />
                    </div>

                     <div style="width: 440px; float: left;height: 283px; overflow: auto;">
                  <h3>User List<br/> </h3>
                  <br />
                    <asp:BulletedList ID="ChattersBulletedList" runat="server" BackColor="#FF8000" 
                        Height="204px" />
                       </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="SendButton" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="ChatTextTimer" EventName="Tick" />
                </Triggers>
            </asp:UpdatePanel>
     
    <div>
         <br />
         <br />
         <br />
            &nbsp;Message here<br/>&nbsp;<asp:TextBox ID="NewMessageTextBox" Columns="50" runat="server"
                BackColor="White" /><asp:Button EnableViewState="false" ID="SendButton" Text="Send" runat="server" OnClick="SendButton_Click" /></div>
          <!--  <asp:Timer runat="server" ID="ChatTextTimer" Interval="1000" />-->
        </form>
        <script type="text/javascript">
            function _SetChatTextScrollPosition() {
                var chatText = document.getElementById("ChatText");
                chatText.scrollTop = chatText.scrollHeight;
                window.setTimeout("_SetChatTextScrollPosition()", 1);
            }
            window.onload = function () {
                _SetChatTextScrollPosition();
            }
        </script>
    
    </div>
    </div>
    </div>
    </div>
    
</body>
</html>


