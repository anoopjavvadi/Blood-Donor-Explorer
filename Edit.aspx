<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Edit" %>

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

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="init.js"></script>

<link href="jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="jquery.min.js"></script>
  <script type="text/javascript" src="jquery-ui.min.js"></script>
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
  
      <div id="accordion">
    <h3><a href="#"><font color="white">View My Profile</font></a></h3>
    <div>
        <table class="ui-accordion">
            <tr>
                <td class="style21" style="text-align: left">
                    User Id </td>
                <td class="style20">
                    :&nbsp; <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21" style="text-align: left">
                    Name</td>
                <td class="style20">

                    :&nbsp; <asp:Label ID="Label4" runat="server"></asp:Label>
                ,<asp:Label ID="Label15" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21" style="text-align: left">
                    Gender</td>
                <td class="style20">

                    :&nbsp; <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21" style="text-align: left">
                    Date of Birth</td>
                <td class="style20">

                    :&nbsp; <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21" style="text-align: left">
                    Blood Group</td>
                <td class="style20">

                    :&nbsp; <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21" style="text-align: left">
                    Email Address</td>
                <td class="style20">

                    :&nbsp; <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style15" style="text-align: left">
                   Contact Number</td>
                <td class="style19">

                    :&nbsp; <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21" style="text-align: left">
                    Address</td>
                <td class="style20">
                    :&nbsp; <asp:Label ID="Label10" 
                        runat="server"></asp:Label>
                    ,
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                    ,<br />

                    &nbsp;&nbsp;

                    <asp:Label ID="Label12" runat="server"></asp:Label>
                    ,
                    <asp:Label ID="Label13" runat="server"></asp:Label>
&nbsp;-
                    <asp:Label ID="Label14" runat="server"></asp:Label>
                </td>
            </tr>
            
            </table>
        </div>
      
      
   
    <h3><a href="#"><font color="white">Edit My Profile</font></a></h3>
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table class="style2">
                    <tr>
                        <td class="style26" style="text-align: left">
                            Email Address </td>
                        <td class="style27">
                            :
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                      
                            </td>
                        <td class="style27">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter valid Email Address</asp:RegularExpressionValidator>
                        </td>
                        <td class="style27">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Enter Email Address</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style46" style="text-align: left">
                            Contact Number </td>
                        <td class="style29">
                            :
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td class="style29">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator"
                                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">Enter Valid Phone Number</asp:RegularExpressionValidator>
                        </td>
                        <td class="style29">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Enter Phone number</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style30" style="left: ;">
                            Address </td>
                        <td class="style31">
                           </td>
                        <td class="style31">
                        </td>
                        <td class="style31">
                           </td>
                    </tr>
                    <tr>
                        <td class="style46" style="text-align: left">
                           Line1 </td>
                        <td class="style29">
                            :
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td class="style29">
                           </td>
                        <td class="style29">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">Enter Address</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style37" style="text-align: left">
                        Line 2 </td>
                        <td class="style33">
                            :
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td class="style33">
                            &nbsp;</td>
                        <td class="style33">
                            </td>
                    </tr>
                    <tr>
                        <td class="style40" style="text-align: justify" valign="baseline">
                            City</td>
                        <td class="style41">
                            :
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td class="style41">
                           </td>
                        <td class="style41">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">Enter City</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style26" style="text-align: justify">
                            State</td>
                        <td class="style27">
                            :
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                        <td class="style27">
                           </td>
                        <td class="style27">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">Enter State</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style47" style="text-align: justify">
                            Zip code</td>
                        <td>
                            :
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                ControlToValidate="TextBox7" ErrorMessage="RegularExpressionValidator"
                                ValidationExpression="\d{5}(-\d{4})?">Enter Valid Zipcode</asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator">Enter Zipcode</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style44">
                        </td>
                        <td class="style45">
                        </td>
                        <td class="style45">
                            &nbsp;</td>
                        <td class="style45">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style47">
                           
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
                        </td>
                        <td>
                          
                            </td>
                        <td>
                          </td>
                        <td>
                            </td>
                    </tr>
                </table>
<br />
                <br />
                <br />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>   
     
    </div> <link href="jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="jquery.min.js"></script>
  <script src="jquery-ui.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#accordion").accordion({collapsible: 'true'});
        });
       

        </script>
  <div style="font-size:100%;">
  <div id="Div1">
	
</div>
</div>

    
    
    </div>

     
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
        
        <br />
        <br />
  
    
    </form>
  
 </div>

 </div>
 </div>
</body>
</html>
