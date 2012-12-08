using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Getdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnGetlist_Click(object sender, EventArgs e)
    {
//       RetrieveDetails.Retrieve ret = new RetrieveDetails.Retrieve();
        string bloodgroup=(string)ddlbg.SelectedValue;
       // int i=ret.listbybgroup(bloodgroup);
        //Label1.Text = i.ToString();
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}