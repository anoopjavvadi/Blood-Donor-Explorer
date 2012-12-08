using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class updates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string z;
        z = (string)Session["firstname"];
        MyWebReference1.Ls login = new MyWebReference1.Ls();
        string bg = login.question1(z);
        string zi = login.question2(z);
        locator.locate find = new locator.locate();
      
     Label1.Text = find.general1(bg);
     Label2.Text = find.general2(bg);
    Label3.Text = find.campaign1(zi);
     Label4.Text = find.campaign2(zi);
        
    }
}