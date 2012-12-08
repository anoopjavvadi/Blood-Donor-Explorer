using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Edit : System.Web.UI.Page
{
        
        locator.locate ch = new locator.locate();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            string z;
            z = (string)Session["firstname"];

            requesting.request req = new requesting.request();
            string abc = req.request4(z);
            Label3.Text = z;
            Label4.Text = req.request7(abc);
            Label5.Text = req.request6(abc);
            Label6.Text = req.request12(abc);
            MyWebReference1.Ls login = new MyWebReference1.Ls();
            string bg = login.question1(z);
            Label7.Text = bg;
            Label8.Text = req.request5(abc);
            Label9.Text = abc;
            Label10.Text = req.request8(abc);
            Label11.Text = req.request9(abc);
            Label12.Text = req.request10(abc);
            Label13.Text = req.request11(abc);
            Label14.Text = req.request3(abc);
            Label15.Text = z;         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uid = (string)Session["Userid"];
            ch.change(uid, TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text);
            Response.Redirect("Edit.aspx");


        }
       
}