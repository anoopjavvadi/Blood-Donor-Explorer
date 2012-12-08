using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Sendnotifications : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetlist_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       locator.locate find = new locator.locate();
      String j = bgroup.Text;
     String[] emailList= find.mailing(j);
     // string a = group.Text;
    //   a = a + ", anoopjavvadi@gmail.com,anoopjavvadi@hotmail.com";

        //List<String> emailList=null;
        //emailList.
       string a="";
       foreach(String eachItem in emailList){
           a = eachItem+", "+a;         
       }
       a = a.Substring(0, a.Length - 2);
        string b = body.Text;
        MailMessage MyMailMessage = new MailMessage("blood.donor.explorer@gmail.com", a,"Donor Notifications", b);
        MyMailMessage.IsBodyHtml = false;
        NetworkCredential mailAuthentication = new NetworkCredential("blood.donor.explorer@gmail.com", "giveblood");
        SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
        mailClient.EnableSsl = true;
        mailClient.UseDefaultCredentials = false;
        mailClient.Credentials = mailAuthentication;
        mailClient.Send(MyMailMessage);
        Label1.Text = "Sent Notifications Successfully";
    }
}