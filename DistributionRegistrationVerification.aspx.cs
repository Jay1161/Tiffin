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
        txtMNo.Text = Session["ContactNo"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO DistributorInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)";
        cmd = new SqlCommand(a, con);

        cmd.Parameters.AddWithValue("@p1", txtMNo.Text);
        cmd.Parameters.AddWithValue("@p2", txtName.Text);
        cmd.Parameters.AddWithValue("@p3", txtAddress.Text);
        cmd.Parameters.AddWithValue("@p4", txtcity.Text);
        cmd.Parameters.AddWithValue("@p5", txtstate.Text);
        cmd.Parameters.AddWithValue("@p6", txtpincode.Text);
       
        cmd.Parameters.AddWithValue("@p7", txtPassword.Text);
       
        cmd.Parameters.AddWithValue("@p8", "1");
        cmd.ExecuteNonQuery();
        con.Close();
        System.Text.StringBuilder javaScript = new System.Text.StringBuilder();

        string scriptKey = "ConfirmationScript";

        javaScript.Append("var userConfirmation = window.confirm('" + "Register Successfully" + "');\n");
        javaScript.Append("window.location='DistributorLogin.aspx';");

        ClientScript.RegisterStartupScript(this.GetType(), scriptKey, javaScript.ToString(), true);
      
      
     
    }
    
    
}