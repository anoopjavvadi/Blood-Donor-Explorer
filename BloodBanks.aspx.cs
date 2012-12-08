using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BloodBanks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckBox1.Visible = false;
        CheckBox2.Visible = false;
        CheckBox3.Visible = false;
        CheckBox4.Visible = false;
        CheckBox5.Visible = false;
        CheckBox6.Visible = false;
        CheckBox7.Visible = false;
        CheckBox8.Visible = false;
        if (!IsPostBack)
        {
            Label5.Visible = false;
            Label6.Visible = false;
        }
        Label5.Visible = true;
        Label6.Visible = true;
        string z;
        z = (string)Session["firstname"];

        requesting.request req = new requesting.request();
        string abc = req.request4(z);
        //   string eg = TextBox1.Text;
        Label1.Text = req.request0(abc);
        Label4.Text = req.request1(abc);
        Label2.Text = req.request2(abc);
        Label3.Text = req.request3(abc);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string z;
        z = (string)Session["firstname"];

        requesting.request req = new requesting.request();
        string abc = req.request4(z);
        Label5.Text = "Request Succesfully sent on:   ";
        Label6.Text = System.DateTime.Now.ToString();
        string text=ddlbg.SelectedValue.ToString();
        Session["request"] = text + " required by " + req.request0(abc) + " Contact Number is " + req.request2(abc);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
        CheckBox5.Checked = false;
        CheckBox6.Checked = false;
        CheckBox7.Checked = false;
        CheckBox8.Checked = false;

        Label15.Text = "Blood can be received from  :";
        string bg = ddlbg.SelectedValue;
        switch (bg)
        {
            case ("A+"): Label7.Text = "A+";
                Label8.Text = "  A-";
                Label9.Text = "  O+";
                Label10.Text = "  O-";
                Label11.Text = "";
                Label12.Text = "";
                Label13.Text = "";
                Label14.Text = "";

                break;
            case ("A-"): Label7.Text = "A-";
                Label8.Text = "  O-";
                Label9.Text = "";
                Label10.Text = "";

                Label11.Text = "";
                Label12.Text = "";
                Label13.Text = "";
                Label14.Text = "";


                break;

            case ("B+"): Label7.Text = "B+";
                Label8.Text = "  B-";
                Label9.Text = "  O+";
                Label10.Text = "  O-";
                Label11.Text = "";
                Label12.Text = "";
                Label13.Text = "";
                Label14.Text = "";

                break;

            case ("B-"): Label7.Text = "B-";
                Label8.Text = "  O-";
                Label9.Text = "";
                Label10.Text = "";
                Label11.Text = "";
                Label12.Text = "";
                Label13.Text = "";
                Label14.Text = "";

                break;

            case ("AB+"): Label7.Text = "AB-";
                Label8.Text = "  A-";
                Label9.Text = "  A-";
                Label10.Text = "  O-";
                Label11.Text = "  AB+";
                Label12.Text = "  A+";
                Label13.Text = "  B+";
                Label14.Text = "  O+";
                break;

            case ("AB-"): Label7.Text = "AB-";
                Label8.Text = "  A-";
                Label9.Text = "  A-";
                Label10.Text = "  O-";
                Label11.Text = "";
                Label12.Text = "";
                Label13.Text = "";
                Label14.Text = "";

                break;

            case ("O+"): Label7.Text = "O+";
                Label8.Text = "  O-";
                Label9.Text = "";
                Label10.Text = "";
                Label11.Text = "";
                Label12.Text = "";
                Label13.Text = "";
                Label14.Text = "";

                break;

            case ("O-"): Label7.Text = "O-";
                Label8.Text = "";
                Label9.Text = "";
                Label10.Text = "";
                Label11.Text = "";
                Label12.Text = "";
                Label13.Text = "";
                Label14.Text = "";
                break;
            default:
                break;
        }
        CheckBox1.Visible = true;
        CheckBox2.Visible = true;
        CheckBox3.Visible = true;
        CheckBox4.Visible = true;
        CheckBox5.Visible = true;
        CheckBox6.Visible = true;
        CheckBox7.Visible = true;
        CheckBox8.Visible = true;

        Label15.Text = "Blood can be received from  :";
        string ba = ddlbg.SelectedValue;

        switch (ba)
        {
            case ("A+"):
                CheckBox1.Checked = true;
                CheckBox4.Checked = true;
                CheckBox5.Checked = true;
                CheckBox8.Checked = true;
                break;
            case ("A-"):
                CheckBox5.Checked = true;
                CheckBox8.Checked = true;

                break;

            case ("B+"):
                CheckBox2.Checked = true;
                CheckBox4.Checked = true;
                CheckBox6.Checked = true;
                CheckBox8.Checked = true;
                break;

            case ("B-"):
                CheckBox6.Checked = true;
                CheckBox8.Checked = true;
                break;

            case ("AB+"):
                CheckBox1.Checked = true; CheckBox2.Checked = true; CheckBox3.Checked = true;
                CheckBox4.Checked = true; CheckBox5.Checked = true; CheckBox6.Checked = true;
                CheckBox7.Checked = true; CheckBox8.Checked = true;
                break;

            case ("AB-"):
                CheckBox5.Checked = true; CheckBox6.Checked = true;
                CheckBox7.Checked = true; CheckBox8.Checked = true;
                break;

            case ("O+"):
                CheckBox4.Checked = true; CheckBox8.Checked = true;
                break;

            case ("O-"):
                CheckBox8.Checked = true;
                break;
            default:
                break;


        }

    }
}