using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SecureNo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
 
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text =="admin" && TextBox2.Text =="admin")
        {
            Session["name"]= TextBox1.Text;
            Response.Redirect("AdminHome.aspx");
           
        }

        else if (TextBox1.Text =="clerk" && TextBox2.Text =="clerk")
        {
            Session["name"]= TextBox1.Text;

            Response.Redirect("ClerkHome.aspx");
           
        }

        else if (TextBox1.Text =="principal" && TextBox2.Text =="principal")
        {
            Session["name"]= TextBox1.Text;
            Response.Redirect("PrincipalHome.aspx");
           
        }

        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }


    }
}