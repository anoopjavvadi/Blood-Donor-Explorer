using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["firstname"];
        string z;
        z = (string)Session["firstname"];
        MyWebReference1.Ls login = new MyWebReference1.Ls();
        string bg = login.question1(z);
        string zi = login.question2(z);
        locator.locate find = new locator.locate();

        Label2.Text = find.general1(bg);
        Label3.Text = find.campaign1(zi);
    }
}