using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CampaignUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCampaign_Click(object sender, EventArgs e)
    {
      
       Session["Campdate"] =txtDate.Text;
           Session["Camptime"]=txtTime.Text;
           Session["CampAddress"] = txtAddress.Text;
    }
}