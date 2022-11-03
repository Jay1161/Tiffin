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

            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from DailyOrderInfo where OrderDate =@userid and DistributorName=@p1 and Status=@p3", con);
       
        cmd.Parameters.AddWithValue("@userid", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p1", Session["DName"]);
        cmd.Parameters.AddWithValue("@p3","NotDeliver");
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);
        con.Close();

        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}