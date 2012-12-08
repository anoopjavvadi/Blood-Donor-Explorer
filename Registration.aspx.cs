using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RegistrationService;


public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {

        RegistrationService.Rs reg = new RegistrationService.Rs();
        string DOB;
        int i;
        int j = Convert.ToInt32(ddlDay.SelectedValue);
        int k = Convert.ToInt32(ddlYear.SelectedValue);
        if ((string)ddlMonth.SelectedValue == "Jan" || (string)ddlMonth.SelectedValue == "Mar" || (string)ddlMonth.SelectedValue == "May" || (string)ddlMonth.SelectedValue == "Jul" || (string)ddlMonth.SelectedValue == "Aug" || (string)ddlMonth.SelectedValue == "Oct" || (string)ddlMonth.SelectedValue == "Dec")
        {
            DOB = (string)ddlMonth.SelectedValue + "-" + (string)ddlDay.SelectedValue + "-" + (string)ddlYear.SelectedValue;
            i = reg.registration(txtFirstName.Text, txtLastName.Text, rbtnlGender.SelectedValue, DOB, ddlBloodGroup.SelectedValue, txtAddressLine1.Text, txtAddressLine2.Text, txtAddressCity.Text, txtAddressState.Text, txtAddressZipcode.Text, txtEmailAddress.Text, txtPhoneNum.Text, txtUserID.Text, txtPassword.Text);

            if (i == 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "MessageBox", "<script type=\"text/javascript\">alert('UserID already exists.Please select another ID');</script>");

            }
            else
            {
                lblSuccess.Text = "You are Registered Successfully";
            }

        }
        else if (((string)ddlMonth.SelectedValue == "Apr" || (string)ddlMonth.SelectedValue == "Jun" || (string)ddlMonth.SelectedValue == "Sep" || (string)ddlMonth.SelectedValue == "Nov"))
        {

            if (j != 31)
            {
                DOB = (string)ddlMonth.SelectedValue + "-" + (string)ddlDay.SelectedValue + "-" + (string)ddlYear.SelectedValue;
                i = reg.registration(txtFirstName.Text, txtLastName.Text, rbtnlGender.SelectedValue, DOB, ddlBloodGroup.SelectedValue, txtAddressLine1.Text, txtAddressLine2.Text, txtAddressCity.Text, txtAddressState.Text, txtAddressZipcode.Text, txtEmailAddress.Text, txtPhoneNum.Text, txtUserID.Text, txtPassword.Text);

                if (i == 0)
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "MessageBox", "<script type=\"text/javascript\">alert('UserID already exists.Please select another ID');</script>");

                }
                else
                {
                    lblSuccess.Text = "You are Registered Successfully";
                }
            }

            else
            {

                ClientScript.RegisterStartupScript(typeof(Page), "MessageBox", "<script type=\"text/javascript\">alert('Invalid date');</script>");
            }

        }

        else
        {

            if ((k % 100 == 0 && k % 400 == 0) || (k % 100 != 0 && k % 4 == 0))
            {
                if (j != 30 && j != 31)
                {
                    DOB = (string)ddlMonth.SelectedValue + "-" + (string)ddlDay.SelectedValue + "-" + (string)ddlYear.SelectedValue;
                    i = reg.registration(txtFirstName.Text, txtLastName.Text, rbtnlGender.SelectedValue, DOB, ddlBloodGroup.SelectedValue, txtAddressLine1.Text, txtAddressLine2.Text, txtAddressCity.Text, txtAddressState.Text, txtAddressZipcode.Text, txtEmailAddress.Text, txtPhoneNum.Text, txtUserID.Text, txtPassword.Text);

                    if (i == 0)
                    {
                        ClientScript.RegisterStartupScript(typeof(Page), "MessageBox", "<script type=\"text/javascript\">alert('UserID already exists.Please select another ID');</script>");

                    }
                    else
                    {
                        lblSuccess.Text = "You are Registered Successfully";
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "MessageBox", "<script type=\"text/javascript\">alert('Invalid date');</script>");
                }

            }


            else
            {
                if (j != 29 && j != 30 && j != 31)
                {
                    DOB = (string)ddlMonth.SelectedValue + "-" + (string)ddlDay.SelectedValue + "-" + (string)ddlYear.SelectedValue;
                    i = reg.registration(txtFirstName.Text, txtLastName.Text, rbtnlGender.SelectedValue, DOB, ddlBloodGroup.SelectedValue, txtAddressLine1.Text, txtAddressLine2.Text, txtAddressCity.Text, txtAddressState.Text, txtAddressZipcode.Text, txtEmailAddress.Text, txtPhoneNum.Text, txtUserID.Text, txtPassword.Text);

                    if (i == 0)
                    {
                        ClientScript.RegisterStartupScript(typeof(Page), "MessageBox", "<script type=\"text/javascript\">alert('UserID already exists.Please select another ID');</script>");

                    }
                    else
                    {
                        lblSuccess.Text = "You are Registered Successfully";
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "MessageBox", "<script type=\"text/javascript\">alert('Invalid date');</script>");
                }

            }

        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("MainPage.aspx");
    }
}