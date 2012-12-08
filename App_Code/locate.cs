using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for locate
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class locate : System.Web.Services.WebService {
    [WebMethod(Description = "Locate Donor")]
    public string locate0(string zip, string group)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select Addressline1 from Table2 where zipcode='" + zip + "' AND bloodgroup = '" + group + "' ", conn);
            string data = cmd.ExecuteScalar().ToString();
            return data;
            cmd.Dispose();
            conn.Close();
    }
    [WebMethod(Description = "Locate1 Donor")]
    public string locate1(string zip, string group)
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn1.Open();
            SqlCommand cmd1 = new SqlCommand("Select City from Table2 where zipcode='" + zip + "' AND bloodgroup = '" + group + "' ", conn1);
          //  SqlDataReader data1 = null;
           string  data1 = cmd1.ExecuteScalar().ToString();
           return data1;
           cmd1.Dispose();
           conn1.Close();
    }
    [WebMethod(Description = "Locate2 Donor")]
    public string locate2(string zip, string group)
    {
        SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn2.Open();
            SqlCommand cmd2 = new SqlCommand("Select  State from Table2 where zipcode='" + zip + "' AND bloodgroup = '" + group + "' ", conn2);
          //  SqlDataReader data2 = null;
            string data2 = cmd2.ExecuteScalar().ToString();
            return data2;
            cmd2.Dispose();
            conn2.Close();
        
     }
    [WebMethod(Description = "counting Donors")]
    public string counting(string zip, string group)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select  count(*) from Table2 where zipcode='" + zip + "' AND bloodgroup = '" + group + "' ", conn3);
        //  SqlDataReader data2 = null;
        string data3 = cmd3.ExecuteScalar().ToString();
        return data3;
        cmd3.Dispose();
        conn3.Close();

    }
    [WebMethod(Description = "email")]
    public List<String> mailing(string group)
    {
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn4.Open();
        SqlCommand cmd4 = new SqlCommand("Select  Emailaddress from Table2 where bloodgroup = '" + group + "' ", conn4);
        cmd4.ExecuteNonQuery();
        SqlDataReader reader;
        List<String> strList = new List<String>();
        reader = cmd4.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                String val = reader.IsDBNull(0) ? "" : reader.GetString(0);
                strList.Add(val);
            }
        }
        cmd4.Dispose();
        return strList;
    }
    [WebMethod(Description = "General update message")]
    public string general1(string blood)
    {
        SqlConnection conn5 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn5.Open();
        SqlCommand cmd5 = new SqlCommand("Select message from Table6 where bloodgroup='" + blood + "' ", conn5);
        //  SqlDataReader data2 = null;
        object data5 = cmd5.ExecuteScalar();
        cmd5.Dispose();
        conn5.Close();
        return data5 == null ? "No Notifications for now" : data5.ToString();
     
    }
    [WebMethod(Description = "General update date")]
    public string general2(string blood)
    {
        SqlConnection conn6 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn6.Open();
        SqlCommand cmd6 = new SqlCommand("Select date from Table6 where bloodgroup='" + blood + "' ", conn6);
        //  SqlDataReader data2 = null;
        object data6 = cmd6.ExecuteScalar();
        cmd6.Dispose();
        conn6.Close();
        return data6 == null ? "NA" : data6.ToString();
    }
    [WebMethod(Description = "Campaign update Address")]
    public string campaign1(string zipco)
    {
        SqlConnection conn7 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn7.Open();
        SqlCommand cmd7 = new SqlCommand("Select message from Table5 where zip='" + zipco + "' ", conn7);
        //  SqlDataReader data2 = null;
        string data7 = cmd7.ExecuteScalar().ToString();
        cmd7.Dispose();
        conn7.Close();
        return data7 == null ? "No Notifications for now" : data7.ToString(); ;
    }
    [WebMethod(Description = "Campaign update date")]
    public string campaign2(string zipco)
    {
        SqlConnection conn8 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn8.Open();
        SqlCommand cmd8 = new SqlCommand("Select date from Table5 where zip='" + zipco + "' ", conn8);
        //  SqlDataReader data2 = null;\
        object objData = cmd8.ExecuteScalar();
        string data8 = objData == null ? "NA" : objData.ToString();
        cmd8.Dispose();
        conn8.Close();
        return data8;
    }
    [WebMethod]
    public string details(string userid)
    {
        string answer = null;
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn1.Open();
        SqlCommand cmd = new SqlCommand("Select * from Table2 where Userid='" + userid + "'", conn1);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string uid = (string)dr["UserID"];
            string name = (string)dr["Firstname"] + "," + (string)dr["Lastname"];
            string gender = (string)dr["Gender"];
            string dateob = (string)dr["DOB"];
            string bloodgroup = (string)dr["Bloodgroup"];
            string address = (string)dr["Addressline1"] + "," + (string)dr["Addressline2"] + "," + (string)dr["City"] + "," + (string)dr["State"] + "," + (string)dr["Zipcode"];
            string email = (string)dr["Emailaddress"];
            string phnum = (string)dr["Phonenumber"];
            answer = uid + ":" + name + ":" + gender + ":" + dateob + ":" + bloodgroup + ":" + address + ":" + email + ":" + phnum;

        }
        conn1.Close();
        dr.Dispose();
        return answer;
    }
    [WebMethod]
    public int change(string userid, string email, string phnum, string addressline1, string addressline2, string city, string state, string zipcode)
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn1.Open();
        SqlCommand cmd = new SqlCommand("Update Table2 SET Emailaddress='" + email + "',Phonenumber='" + phnum + "',Addressline1='" + addressline1 + "',Addressline2='" + addressline2 + "',City='" + city + "',State='" + state + "',Zipcode='" + zipcode + "' where Userid='" + userid + "' ", conn1);
        int i = cmd.ExecuteNonQuery();
        cmd.Dispose();
        conn1.Close();
        if (i != 0)
            return 1;
        else
            return 0;
    }
    [WebMethod(Description = "Gets list of all people with requested blood group")]
    public int listbybgroup(string bg)
    {
        SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn2.Open();
        SqlCommand cmd = new SqlCommand("Update Table2 SET Bloodgroup='" + bg + "' where Bloodgroup='" + bg + "' ", conn2);
        int i = cmd.ExecuteNonQuery();
        return i;
    }
}
   
