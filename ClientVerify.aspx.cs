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
    int flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            //string a = "INSERT INTO ClientInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)";
            //cmd = new SqlCommand(a, con);
            //cmd.Parameters.AddWithValue("@p1", eno.Text);
            //cmd.Parameters.AddWithValue("@p2", fname.Text);
            //cmd.Parameters.AddWithValue("@p3", eno.Text);
            //cmd.Parameters.AddWithValue("@p4", gender.SelectedValue.ToString());
            //cmd.Parameters.AddWithValue("@p5",branch.SelectedValue.ToString());
            //cmd.Parameters.AddWithValue("@p6", sem.SelectedValue.ToString());

            //cmd.Parameters.AddWithValue("@p7", college.SelectedValue.ToString());

            //cmd.Parameters.AddWithValue("@p8", str);
           

           // cmd.ExecuteNonQuery();
           // con.Close();
           //Response.Redirect("ClientLogin.aspx");

      
     
    }


    protected void eno_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfiguRationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserInfo where Aadharno =@userid ", con);
        cmd.Parameters.AddWithValue("@userid", eno.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["CaNo"] = dt.Rows[0]["Aadharno"].ToString();
            Session["CName"] = dt.Rows[0]["Name"].ToString();
            findImage();
            verifyLinkAccount();
            if (flag == 1)
            {
                Session["f"] = 1;

            }
            else
            {
                Session["f"] = 0;
            }
            Response.Redirect("ClientVerifyDetails.aspx");

        }

        else
        {

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid ClientDetails Found ')</script>");
        }

    }

    private void findImage()
    {
       SqlConnection con = new SqlConnection(ConfiguRationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from AadharInfo where Aadharno =@userid ", con);
        cmd.Parameters.AddWithValue("@userid", eno.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["Image"] = dt.Rows[0]["Image"].ToString();
        }
    }

    private void verifyLinkAccount()
    {
        SqlConnection con = new SqlConnection(ConfiguRationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from FamilyLinkAadharNoInfo where ClientAadharno =@userid ", con);
        cmd.Parameters.AddWithValue("@userid", eno.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            flag = 1;
            Session["LCaNo"] = dt.Rows[0]["LinkAadharNo"].ToString();
            Session["R"] = dt.Rows[0]["Relation"].ToString();


        }
    }
}