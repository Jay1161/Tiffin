using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class PatientRegistRation : System.Web.UI.Page
{
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        string CCNo = Session["ContactNo"].ToString();
        string XXNo = "XXXXXX";
        string MaskedCCNo = String.Format("{0}{1}", XXNo, CCNo.Substring(6, 4));
        Label1.Text = MaskedCCNo;
        Label2.Text = "Hint OTP is =" + Session["OTP"];
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        if (eno.Text == Session["OTP"].ToString())
        {
            Response.Redirect("UserRegistRationVerification.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid OTP')</script>");

        }
      
     
    }
    
    
}