using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Viewrequests : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         Label1.Text = (string)Session["request"]; 
        //if (Label1.Text != null)
        //{ Label1.Dispose(); Label2.Text = (string)Session["request"]; }
        //if (Label1.Text != null && Label2.Text != null && Label3.Text == null && Label4.Text == null)
        //{ Label3.Text = (string)Session["request"]; }
        //if (Label1.Text != null && Label2.Text != null && Label3.Text != null && Label4.Text == null)
        //{ Label4.Text = (string)Session["request"]; }

       //else if(Label2.Text!=null)
       //    Label3.Text = (string)Session["request"];
       //else if(Label3.Text!=null)
       //    Label4.Text = (string)Session["request"];
       //else if (Label4.Text != null)
       //    Label5.Text = (string)Session["request"];
       //else if (Label5.Text != null)
       //    Label6.Text = (string)Session["request"];
       //else if (Label6.Text != null)
       //    Label7.Text = (string)Session["request"];
       //else if (Label7.Text != null)
       //    Label8.Text = (string)Session["request"];
       //else if (Label8.Text != null)
       //    Label9.Text = (string)Session["request"];
       //else
       //    Label10.Text = (string)Session["request"];

    }
}