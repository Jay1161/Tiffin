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

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["DName"] == null)
        {
            Response.Redirect("DistributorLogin.aspx");

        }



        else
        {
            Label1.Text = Session["DName"].ToString();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        String s = "insert into MenuInfo values (@p1,@p2,@p3,@p4,@p5)";
        SqlCommand cmd = new SqlCommand(s, con);
       
        cmd.Parameters.AddWithValue("@p1", Label1.Text);
        cmd.Parameters.AddWithValue("@p2", ddlDay.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p3", ddlType.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p4", txtDesc.Text);
        cmd.Parameters.AddWithValue("@p5", txtPrice.Text);
        cmd.ExecuteNonQuery();
        con.Close();

        System.Text.StringBuilder javaScript = new System.Text.StringBuilder();

        string scriptKey = "ConfirmationScript";

        javaScript.Append("var userConfirmation = window.confirm('" + "Menu Added Successfully" + "');\n");
        javaScript.Append("window.location='AddMenu.aspx';");

        ClientScript.RegisterStartupScript(this.GetType(), scriptKey, javaScript.ToString(), true);
       
    }
}