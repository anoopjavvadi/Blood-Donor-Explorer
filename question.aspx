<%@ Page Language="C#" AutoEventWireup="true" CodeFile="question.aspx.cs" Inherits="question" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  


  
  <title>Blood Donar Explorer</title>
  <link rel="Stylesheet" href="common.css" type="text/css" />
<link id="Link1" rel="stylesheet" href="system.css" type="text/css"></link>
<link id="Link2" rel="stylesheet" href="general.css" type="text/css"></link>
<link id="Link3" rel="stylesheet" href="addons.css" type="text/css"></link>
<link id="Link4" rel="stylesheet" href="layout.css" type="text/css"></link>
<link id="Link5" rel="stylesheet" href="template.css" type="text/css"></link>
<link id="Link6" rel="stylesheet" href="typo.css" type="text/css"></link>
<link id="Link7" rel="stylesheet" href="moo.css" type="text/css"></link>

<script src="moo.js" language="javascript" type="text/javascript"></script>

<script language="javascript" type="text/javascript">
    var rightCollapseDefault = 'show';
    var excludeModules = '38';
</script>
<script language="javascript" type="text/javascript" src="ja.rightcol.js"></script>

<style type="text/css">
.main {width: 945px;margin: 0 auto;}
#ja-wrapper {min-width: 100%;}
    </style>

</head>

<body id="bd" class="fs3 FF">
<div id="hh">

    <form id="form1" >
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTIwODU1MjY3MzRkZBLpKsBvHjqvv2vPq/PrN/V7KOjxFJPppKqJwPMDkGDO" />
</div>

<div>

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBALS9LfCBALs0fbZDALs0bLrBgK7q7GGCMHLcDNxodGDT7G5v+W1Oe1K+52335A/V6nvWL/3yz6H" />
</div>

    <input id="wz_2" type="hidden" value="0" name="receive_html" />
					<input type="hidden" name="Itemid" value="999" />
						<input type="hidden" name="listname" value="0" />
						<input type="hidden" name="redirectlink" value="index.php?option=com_docman&amp;task=doc_download&amp;gid=6" />
						<input type="hidden" name="act" value="subscribe" />
<input type="hidden" name="acc_level[1]" value="0" />
<input type="hidden" name="sub_list_id[1]" value="1" />
 <input type="hidden"  value="0" name="subscribed[1]" />

<div id="ja-wrapper">
	<a name="Top" id="Top"></a>

	
	<div id="ja-header" class="wrap">
<div class="main">
<div class="inner clearfix">

	<div class="ja-headermask">&nbsp;</div>
	
		
		<h1 style="font-style: normal; font-size: large; background-color: #FFFFFF; color: #FFFFFF; font-weight: bold; font-family: Calibri; text-align: center;"> 
            B</h1>
    <img src= "images/logo.jpg">
    <p style="font-style: normal; font-size: large; background-color: #FFFFFF; color: #FFFFFF; font-weight: bold; font-family: Calibri; text-align: center;"> 
        &nbsp;</p>
			
<div id="ja-mainnav" class="wrap">
<div class="main clearfix">
	<ul id="ja-cssmenu" class="clearfix">
<li class="active"><a href="Home.aspx" class="menu-item0 active first-item" id="menu1" title="Home"><span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Home</span></a></li> 
<li class="active"><a href="Chat.aspx" class="menu-item1"  title="ABOUT US"><span class="menu-title">&nbsp;&nbsp;
    DISCUSSION FORUM</span></a></li>
<li class="active"><a href="Campaigns.aspx" class="menu-item2"  title="CAMPAIGNS"><span class="menu-title">
    &nbsp;CAMPAIGNS</span></a></li>
<li class="active"><a href="BloodBanks.aspx" class="menu-item3" title="BLOOD BANKS"><span class="menu-title">
    BLOOD BANKS</span></a></li>
<li class="active"><a href="updates.aspx"  title="Notifications"><span >&nbsp;&nbsp;
    MY UPDATES&nbsp;</span></a></li>
<li class="active"><a href="DonorLocator.aspx"   title="DONOR LOCATOR"><span >
    DONOR LOCATOR</span></a></li>
<li class="active"><a href="question.aspx" class="menu-item3" title="ASK ADMIN"><span class="menu-title">
    ASK ADMIN</span></a></li> 

<li ><a href=" "  title="SETTINGS"><span>&nbsp;SETTINGS</span></a><ul>

<li ><a href="Edit.aspx"  title="Sign Out"><span>My Profile</span></a></li>
<li ><a href="MainPage.aspx"  title="Sign Out"><span>Sign Out</span></a></li>
</ul></li> 
</ul>	
	
</div>
</div>


<ul class="no-display">
    <li><a href=" " title="Skip to content">Skip to content</a></li>
</ul>
			
</div>

</div>
</div>
    </form>
<div class="main clearfix" >
<div style="font-style: normal; font-size: large; background-color: #FFFFFF; color: #000000; font-weight: bold; font-family: Calibri; align: center;">

 <form id="form2" runat="server">
  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ask a question to Administrator<br />
        <br />
        &nbsp;&nbsp;&nbsp; Question :
        <asp:TextBox ID="ques" runat="server" Width="503px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Send" runat="server" onclick="Submit_Click" Text="Send" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp; Message Status:
        <asp:Label ID="Label2" runat="server"></asp:Label>
     
        <br />
        <br />
        <br />

        <br />
    
 
       
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
        
        <br />
        &nbsp;
        <br />
        <br />
  
    
    </form>
  
 </div>

 </div>
 </div>
</body>
</html>

