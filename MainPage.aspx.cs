using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MyWebReference1.Ls login = new MyWebReference1.Ls();
        string u = txtUsername.Text;
        string p = txtPassword.Text;
        if (u == "admin" && p == "admin")
        {
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            //  Session["txtUsername"];
            string s = login.log(u, p);
            string f = login.welcome(u);
            if (s == "Y")
            {

                Session["firstname"] = f;
                Response.Redirect("Home.aspx");
            }
            if (s == "N")
            {

                txtUsername.Text = "";
                txtPassword.Text = "";
                ClientScript.RegisterStartupScript(typeof(Page), "MessageBox", "<script type=\"text/javascript\">alert('Invalid Login Credentials!! Try Again');</script>");
            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}