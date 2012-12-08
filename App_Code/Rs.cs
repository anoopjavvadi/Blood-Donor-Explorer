using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Rs
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Rs : System.Web.Services.WebService {
   
    [WebMethod(Description="registration for a blood donor")]
    public int registration(string fname,string lname,string gender,string dateob,string bloodgroup,string addressline1,string addressline2,string city,string state,string zipcode,string email,string phnum,string uid,string pswd)
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        SqlCommand cmd1 = new SqlCommand("Insert into Table2(Firstname,Lastname,Gender,DOB,Bloodgroup,Addressline1,Addressline2,City,State,Zipcode,Emailaddress,Phonenumber,Userid,Password)values('"+fname+"','"+lname+"','"+gender+"','"+dateob+"','"+bloodgroup+"','"+addressline1+"','"+addressline2+"','"+city+"','"+state+"','"+zipcode+"','"+email+"','"+phnum+"','"+uid+"','"+pswd+"')", conn1);
        conn1.Open();
        int i=cmd1.ExecuteNonQuery();
      
        conn1.Close();
        cmd1.Dispose();
        if (i == 1)
        {   
            return 1;
        }
        else
        {   
            return 0;
        }
    }

    [WebMethod(Description = "Questions update")]
    public int updating(string ques, string aid)

    {
        SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        SqlCommand cmd2 = new SqlCommand("Insert into Table4(questions,id)values('" + ques + "','" + aid + "')", conn2);
        conn2.Open();
        int j = cmd2.ExecuteNonQuery();

        conn2.Close();
        cmd2.Dispose();
        if (j == 1)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
    
    [WebMethod(Description = "Updates on blood group")]
    public int update1(string msg, string dated, string zipc)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        SqlCommand cmd3 = new SqlCommand("Insert into Table5(message,date,zip)values('" + msg + "','" + dated + "','" + zipc + "')", conn3);
        conn3.Open();
        int j = cmd3.ExecuteNonQuery();

        conn3.Close();
        cmd3.Dispose();
        if (j == 1)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
    [WebMethod(Description = "Updates on Campaigns")]
    public int update2(string msg1, string date1,string bgrp)
    {
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        SqlCommand cmd4 = new SqlCommand("Insert into Table6(message,date,bloodgroup)values('" + msg1 + "','" + date1 + "','" + bgrp + "')", conn4);
        conn4.Open();
        int j = cmd4.ExecuteNonQuery();
        conn4.Close();
        cmd4.Dispose();
        if (j == 1)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
    
}
