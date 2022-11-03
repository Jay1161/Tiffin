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
            SqlCommand cmd = new SqlCommand("select InvoiceNo from DailyOrderInfo where  DistributorName=@p1 and Status=@p2 ", con);

            cmd.Parameters.AddWithValue("@p1", Session["DName"]);
            cmd.Parameters.AddWithValue("@p2", "NotDeliver");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();



            da.Fill(dt);
            con.Close();

           ddlInvoiceNo.DataSource = dt;
            ddlInvoiceNo.DataTextField = "InvoiceNo";
            ddlInvoiceNo.DataValueField = "InvoiceNo";
            ddlInvoiceNo.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        String s = "update DailyOrderInfo set Status=@p1 where InvoiceNo=@p2";
        SqlCommand cmd = new SqlCommand(s, con);
       
        cmd.Parameters.AddWithValue("@p1", ddlStatus.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p2", ddlInvoiceNo.SelectedValue.ToString());
        cmd.ExecuteNonQuery();
        con.Close();

        System.Text.StringBuilder javaScript = new System.Text.StringBuilder();

        string scriptKey = "ConfirmationScript";

        javaScript.Append("var userConfirmation = window.confirm('" + "Order Status Updated Successfully" + "');\n");
        javaScript.Append("window.location='UpdateOrderStatus.aspx';");

        ClientScript.RegisterStartupScript(this.GetType(), scriptKey, javaScript.ToString(), true);
       
    }
}