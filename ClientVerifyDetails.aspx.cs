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

public partial class home1 : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
      cano.Text=  Session["CaNo"] .ToString();
      cname.Text=  Session["CName"].ToString();
        photo.ImageUrl = Session["Image"].ToString();
        if(Session["f"]=="1")
        {
islink.Text="Yes";
            lano.Text=Session["LCaNo"].ToString();
relation.Text= Session["R"].ToString();
        }
        else
        {
            islink.Text="No";
relation.Text="No";
lano.Text = "Not Applicable";
        }
              
                  
       

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("IssueRation.aspx");
    }
}
