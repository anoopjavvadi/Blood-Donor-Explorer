using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for request
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class request : System.Web.Services.WebService {
    [WebMethod(Description = "Get Firstname")]
    public string request0(string num)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select Firstname from Table2 where Phonenumber='" + num + "' ", conn);
        string data = cmd.ExecuteScalar().ToString();
        return data;
        cmd.Dispose();
        conn.Close();
    }
    [WebMethod(Description = "Get Lastname")]
    public string request1(string num)
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn1.Open();
        SqlCommand cmd1 = new SqlCommand("Select Lastname from Table2 where Phonenumber='" + num + "' ", conn1);
        string data1 = cmd1.ExecuteScalar().ToString();
      
        cmd1.Dispose();
        conn1.Close();
        return data1;
    }
    [WebMethod(Description = "Get Bloodgroup")]
    public string request2(string num)
    {
        SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn2.Open();
        SqlCommand cmd2 = new SqlCommand("Select Phonenumber from Table2 where Phonenumber='" + num + "' ", conn2);
        string data2 = cmd2.ExecuteScalar().ToString();
        
        cmd2.Dispose();
        conn2.Close();
        return data2;
    }
    [WebMethod(Description = "Get Bloodgroup")]
    public string request3(string num)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select Zipcode from Table2 where Phonenumber='" + num + "' ", conn3);
        string data3 = cmd3.ExecuteScalar().ToString();
       
        cmd3.Dispose();
        conn3.Close();
        return data3;
    }
    [WebMethod(Description = "Get Bloodgroup")]
    public string request4(string fname)
    {
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn4.Open();
        SqlCommand cmd4 = new SqlCommand("Select Phonenumber from Table2 where Firstname='" + fname + "' ", conn4);
        string data4 = cmd4.ExecuteScalar().ToString();
      
        cmd4.Dispose();
        conn4.Close();
        return data4;
    }
    [WebMethod(Description = "Get Userid")]
    public string request13(string fname)
    {
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn4.Open();
        SqlCommand cmd4 = new SqlCommand("Select Userid from Table2 where Firstname='" + fname + "' ", conn4);
        string data4 = cmd4.ExecuteScalar().ToString();

        cmd4.Dispose();
        conn4.Close();
        return data4;
    }
    [WebMethod(Description = "get question for admin")]
    public string request14(string fname)
    {
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn4.Open();
        SqlCommand cmd4 = new SqlCommand("Select questions from Table4 where id='" + fname + "' ", conn4);
        string data4 = cmd4.ExecuteScalar().ToString();
        cmd4.Dispose();
        conn4.Close();
        return data4;
    }
    [WebMethod(Description = "Get email address")]
    public string request5(string num)
    {
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn4.Open();
        SqlCommand cmd4 = new SqlCommand("Select Emailaddress from Table2 where Phonenumber='" + num + "' ", conn4);
        string data4 = cmd4.ExecuteScalar().ToString();

        cmd4.Dispose();
        conn4.Close();
        return data4;
    }
    [WebMethod(Description = "Get Gender")]
    public string request6(string num)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select Gender from Table2 where Phonenumber='" + num + "' ", conn3);
        string data3 = cmd3.ExecuteScalar().ToString();

        cmd3.Dispose();
        conn3.Close();
        return data3;
    }
    [WebMethod(Description = "Get Lastname")]
    public string request7(string num)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select Lastname from Table2 where Phonenumber='" + num + "' ", conn3);
        string data3 = cmd3.ExecuteScalar().ToString();

        cmd3.Dispose();
        conn3.Close();
        return data3;
    }
    [WebMethod(Description = "Get addressline1")]
    public string request8(string num)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select Addressline1 from Table2 where Phonenumber='" + num + "' ", conn3);
        string data3 = cmd3.ExecuteScalar().ToString();

        cmd3.Dispose();
        conn3.Close();
        return data3;
    }
    [WebMethod(Description = "Get addressline2")]
    public string request9(string num)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select Addressline2 from Table2 where Phonenumber='" + num + "' ", conn3);
        string data3 = cmd3.ExecuteScalar().ToString();

        cmd3.Dispose();
        conn3.Close();
        return data3;
    }
    [WebMethod(Description = "Get city")]
    public string request10(string num)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select City from Table2 where Phonenumber='" + num + "' ", conn3);
        string data3 = cmd3.ExecuteScalar().ToString();

        cmd3.Dispose();
        conn3.Close();
        return data3;
    }
    [WebMethod(Description = "Get state")]
    public string request11(string num)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select State from Table2 where Phonenumber='" + num + "' ", conn3);
        string data3 = cmd3.ExecuteScalar().ToString();

        cmd3.Dispose();
        conn3.Close();
        return data3;
    }
    [WebMethod(Description = "Get DOB")]
    public string request12(string num)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select DOB from Table2 where Phonenumber='" + num + "' ", conn3);
        string data3 = cmd3.ExecuteScalar().ToString();

        cmd3.Dispose();
        conn3.Close();
        return data3;
    }
    [WebMethod(Description = "answer to user")]
    public int updated(string ans)
    {
        SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        SqlCommand cmd2 = new SqlCommand("Insert into Table4(answer)values('" + ans + "')", conn2);
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
}
