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

public partial class Aboutus : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Fullname,FeedBackDate,Email,MobileNo,Comment


       // SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
       // con.Open();
       // SqlCommand cmd;

       // string a = "INSERT INTO FeedBack(Fullname,FeedBackDate,Email,MobileNo,Comment) values(@p1,@p2,@p3,@p4,@p5)";
       // cmd = new SqlCommand(a, con);
       // cmd.Parameters.AddWithValue("@p1", fname.Text);
       // cmd.Parameters.AddWithValue("@p2", DateTime.Now.ToShortDateString());
       // cmd.Parameters.AddWithValue("@p3",email.Text);
       // cmd.Parameters.AddWithValue("@p4", mno.Text);
       // cmd.Parameters.AddWithValue("@p5", comment.Text);
        

       // cmd.ExecuteNonQuery();
       
       //con.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('FeedBack Send To Milk On Way');window.location.replace('Home.aspx');</script>");

    }
}