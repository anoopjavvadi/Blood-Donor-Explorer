using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class question : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            Label2.Visible = false;
           
        }
       
        Label2.Visible = true;
       
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string z;
        z = (string)Session["firstname"];
        Session["fname"]=z;
        MyWebReference1.Ls login = new MyWebReference1.Ls();
        string aid = login.questions(z);
        RegistrationService.Rs reg = new RegistrationService.Rs();
        int j;
        j = reg.updating(ques.Text ,aid);
        if (j == 0)
        {
            Label2.Text = "Failed";
        }
        else
        {
            Label2.Text = "Sent Successfully";
        }
    }
}