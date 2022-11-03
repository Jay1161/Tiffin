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
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from DailyOrderInfo where  DistributorName=@p1 ", con);

            cmd.Parameters.AddWithValue("@p1", Session["DName"]);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();



            da.Fill(dt);
            con.Close();

            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from DailyOrderInfo where  DistributorName=@p1 ", con);
       
        cmd.Parameters.AddWithValue("@p1", Session["DName"]);
      
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);
        con.Close();

        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}