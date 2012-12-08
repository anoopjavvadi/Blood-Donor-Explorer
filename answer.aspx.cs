using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class answer : System.Web.UI.Page
{
   // UserQuestions[] questionsArr = null;

    protected void Page_Load(object sender, EventArgs e)
    {
     //   if(questionsArr==null)
      //  questionsArr= new UserQuestions[1];
     //   UserQuestions q1=new UserQuestions();
        string z;
        z = (string)Session["firstname"];
        requesting.request req = new requesting.request();
     string ab = req.request13(z);
     string bc = req.request14(ab);
      Label1.Text =bc;
      Label2.Text = (string)Session["fname"];
      // Label2.Text = bc;
   //     q1.Question = bc;
        
     //   q1.author = z;
      //  RegistrationService.Rs reg = new RegistrationService.Rs();
        int j;
        string abc = TextBox1.Text;
      
        j = req.updated(TextBox1.Text);
        
    //    questionsArr[0] = q1;
     //   questionRpt.DataSource = questionsArr;
     //   questionRpt.DataBind();
    }
    public void updateAnswer(Object sender,EventArgs args)
    {
        //string q1Answer = questionsArr[0].Answer;
    }
}