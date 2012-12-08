using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PostNotification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        RegistrationService.Rs reg = new RegistrationService.Rs();
        int j;
        string dt;
        dt = System.DateTime.Now.ToString();
        j = reg.update2(textbox.Text, dt, TextBox2.Text);
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        RegistrationService.Rs reg = new RegistrationService.Rs();
        int j;
        string dt;
        dt = System.DateTime.Now.ToString();
        j = reg.update1(textbox.Text, dt, TextBox3.Text);
        
    }
}