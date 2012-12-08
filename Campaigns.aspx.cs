using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Campaigns : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       Label1.Text=(string) Session["Campdate"];
         Label2.Text=   (string)Session["Camptime"];
              Label3.Text=(string)  Session["CampAddress"];

    }
    
}