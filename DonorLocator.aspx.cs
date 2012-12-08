using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System.Drawing;

public partial class DonorLocator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        locator.locate find = new locator.locate();
        string q = txtblood.Text;
        string r = txtZip.Text;
        string ab = find.locate0(r, q);
        string bc = find.locate1(r, q);
        string cd = find.locate2(r, q);
        string de = find.counting(r, q);
        
        Label1.Text = de;
        string address = ab + "," + bc + "," + cd + "," + r;
        string latitude1 = "";
        string longitude1 = "";
        // Response.Redirect("http://where.yahooapis.com/geocode?location=" +address );

        XmlTextReader xtr = new XmlTextReader("http://where.yahooapis.com/geocode?location=" + address);
        xtr.WhitespaceHandling = WhitespaceHandling.Significant;
        //Response.Write(xtr.ToString());
        try
        {
            while (xtr.Read())
            {
                if (xtr.Name.ToString() == "latitude")
                {
                    latitude1 = xtr.ReadString().ToString();
                }
                if (xtr.Name.ToString() == "longitude")
                {
                    longitude1 = xtr.ReadString().ToString();
                }


            }

            GMap2.addGMapUI(new GMapUI());
            GMapUIOptions options = new GMapUIOptions();
            GLatLng latlong = new GLatLng(double.Parse(latitude1), double.Parse(longitude1));
            GMapType.GTypes maptype = GMapType.GTypes.Normal;
            GMap2.setCenter(latlong, 15, maptype);
            //GMap2.GZoom = 9;
            PinLetter pinLetter = new PinLetter("o", Color.Red, Color.Black);

            GMap2.addGMarker(new GMarker(latlong, new GMarkerOptions(new GIcon(pinLetter.ToString(), pinLetter.Shadow()))));
            GMarker marker = new GMarker(latlong);
            GInfoWindowOptions IWoptions = new GInfoWindowOptions(12, maptype);

            GInfoWindow mbUp = new GInfoWindow(marker, address, IWoptions);
            GMap2.addInfoWindow(mbUp);

        }
        catch (Exception)
        {
            Response.Write("invalid adress");
        }
    }

}