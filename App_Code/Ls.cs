using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for Ls
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Ls : System.Web.Services.WebService
{

    //private string s1, s2;
    [WebMethod(Description = "Checks username and password :)")]
    public string log(string uname, string pwd)
    {
        //if (uname == "admin" && pwd == "admin")
        //{
        //    return "success";
        //}
        //else
        //{
        //    return "fail";
        //}


        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select * from Table2 where Userid='" + uname + "' AND Password = '" + pwd + "' ", conn);
        SqlDataReader data = null;
        data = cmd.ExecuteReader();
        if (data.HasRows)
        {
            data.Dispose();
            cmd.Dispose();
            conn.Close(); return "Y";
        }
        else
        {
            data.Dispose();
            cmd.Dispose();
            conn.Close(); return "N";
        }

    }
    [WebMethod]
    public string welcome(string uid)
    {
        SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn2.Open();
        SqlCommand cmd2 = new SqlCommand("Select * from Table2 where Userid='" + uid + "' ", conn2);
        SqlDataReader data2 = cmd2.ExecuteReader();
        if (data2.HasRows)
        {
            data2.Dispose();
            string x = cmd2.ExecuteScalar().ToString();

            conn2.Close();
            return x;
        }
        else
        {
            data2.Dispose();

            conn2.Close();
            return null;
        }
    }
    [WebMethod]
    public string questions(string fname)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select Userid from Table2 where Firstname='" + fname + "' ", conn3);
        SqlDataReader data3 = cmd3.ExecuteReader();
        if (data3.HasRows)
        {
            data3.Dispose();
            string x = cmd3.ExecuteScalar().ToString();

            conn3.Close();
            return x;
        }
        else
        {
            data3.Dispose();

            conn3.Close();
            return null;
        }
    }
    [WebMethod]
    public string question1(string fname)
    {
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn4.Open();
        SqlCommand cmd4 = new SqlCommand("Select Bloodgroup from Table2 where Firstname='" + fname + "' ", conn4);
        SqlDataReader data4 = cmd4.ExecuteReader();
        if (data4.HasRows)
        {
            data4.Dispose();
            string x = cmd4.ExecuteScalar().ToString();

            conn4.Close();
            return x;
        }
        else
        {
            data4.Dispose();

            conn4.Close();
            return null;
        }
    }
    [WebMethod]
    public string question2(string fname)
    {
        SqlConnection conn5 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn5.Open();
        SqlCommand cmd5 = new SqlCommand("Select Zipcode from Table2 where Firstname='" + fname + "' ", conn5);
        SqlDataReader data5 = cmd5.ExecuteReader();
        if (data5.HasRows)
        {
            data5.Dispose();
            string x = cmd5.ExecuteScalar().ToString();

            conn5.Close();
            return x;
        }
        else
        {
            data5.Dispose();

            conn5.Close();
            return null;
        }
    }

}

   
