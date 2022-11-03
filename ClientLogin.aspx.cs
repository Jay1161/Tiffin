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

public partial class SecureNo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
 
    protected void btnLogin_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserInfo where  ContactNo=@p1 and Password=@p2", con);
        cmd.Parameters.AddWithValue("@userid", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p1", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox1.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);



        if (dt.Rows.Count > 0)
        {
            Session["ContactNo"] = dt.Rows[0]["ContactNo"].ToString();
            Session["City"] = dt.Rows[0]["City"].ToString();
            Session["Name"] = dt.Rows[0]["Name"].ToString();
            Response.Redirect("User.aspx");

        }

        else
        {

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }


    }
}