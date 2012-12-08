using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit2_Click(object sender, EventArgs e)
    {
        
        MyWebReference1.Ls login = new MyWebReference1.Ls();
        string u = txtUsername.Text;
        string p = txtPassword.Text;
        string s = login.log(u, p);
        if (s == "Y")
        {
            Response.Redirect("Registration.aspx");    
        }
        if (s == "N")
        {
            Response.Write("no");
            txtUsername.Text = "";
            txtPassword.Text = "";
            ClientScript.RegisterStartupScript(typeof(Page), "MessageBox", "<script type=\"text/javascript\">alert('Please enter correct username and password');</script>");
        } 
        }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtUsername.Text = "";
        txtPassword.Text = "";
    }
   
}