using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class NewInvoice : System.Web.UI.Page
{
  double tsgst=0, tcgst=0, tigst=0;
  double productsum = 0, producttax = 0, productline1 = 0,productline2=0,productline3=0, simpletax=0;
  Int64 invoicesgst, invoicecgst, invoiceigst;
  Double taxstatus,totalsgst, totaligst, totalcgst, invoicetaxtotal, invoiceratetotal, invoiceamounttotal;
  SqlConnection cn;
  SqlCommand cmd;
  string id, year, name,tid;
  DateTime serverTime = DateTime.Now;

  DateTime utcTime;

  // convert it to Utc using timezone setting of server computer

  TimeZoneInfo tzi;

  DateTime localTime;
    protected void Page_Load(object sender, EventArgs e)
      {   
        
        Random r=new Random();
      utcTime = serverTime.ToUniversalTime();
      tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
      localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
      
  
      if (DropDownList1.SelectedIndex == 0)
      {
         

      }
      SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        cn.Open();

        SqlCommand cmd = new SqlCommand("select * from Id", cn);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);

       id = dt.Rows[0]["Id"].ToString();
       
      // invoiceno.Text = id;
       tid = "T" + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + id;
     
       
       //idate.Text = DateTime.Now.ToString("yyyy-MM-dd");
       //date1.Text = DateTime.Now.ToString("yyyy-MM-dd");
       //date2.Text = DateTime.Now.ToString("yyyy-MM-dd"); 
       cn.Close();
      
        if (!this.IsPostBack)
        {
            invoiceno.Text = DateTime.Now.Year.ToString() + "-"+ r.Next(0111,9999).ToString();
            idate.Text = DateTime.Now.ToString("yyyy-MM-dd");
          // this.BindGrid();
        }
        client();
    }

   

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> GetCompletionList(string prefixText, int count)
    {
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

            using (SqlCommand com = new SqlCommand())
            {
                com.CommandText = "select ProductName from ProductInfo where " + "ProductName like @Search + '%'";

                com.Parameters.AddWithValue("@Search", prefixText);
                com.Connection = con;
                con.Open();
                List<string> countryNames = new List<string>();
                using (SqlDataReader sdr = com.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        countryNames.Add(sdr["ProductName"].ToString());
                    }
                }
                con.Close();
                return countryNames;


            }

        }

    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> GetClientList(string prefixText, int count)
    {
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

            using (SqlCommand com = new SqlCommand())
            {
                com.CommandText = "select ClientName from ParthClientInfo where " + "ClientName like @Search + '%'";

                com.Parameters.AddWithValue("@Search", prefixText);
                com.Connection = con;
                con.Open();
                List<string> countryNames = new List<string>();
                using (SqlDataReader sdr = com.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        countryNames.Add(sdr["ClientName"].ToString());
                    }
                }
                con.Close();
                return countryNames;


            }

        }

    }

    private void BindGrid()
    {
        //string constr = ConfiguRationManager.ConnectionStrings["db"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(constr))
        //{
        //    using (SqlCommand cmd = new SqlCommand("SELECT PId,PHsnCode,Pdescription,PQty,Unit,PRate,PTax,TaxtAmount,TotalAmount  FROM TempInvoiceInfo where PId=@p1")) 
        //    {
        //        cmd.Parameters.AddWithValue("@p1", invoiceno.Text);
        //        using (SqlDataAdapter sda = new SqlDataAdapter())
        //        {
        //            cmd.Connection = con;
        //            sda.SelectCommand = cmd;
        //            using (DataTable dt = new DataTable())
        //            {
        //                sda.Fill(dt);
        //                GridView1.DataSource = dt;







        //            }
        //        }
        //    }
        //}
    }
    protected void FindProduct_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
  

   
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void client()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserInfo where  ContactNo=@username ", con);
        cmd.Parameters.AddWithValue("@username", Session["ContactNo"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);


        if (dt.Rows.Count > 0)
        {
           

          clientname.Text= dt.Rows[0]["Name"].ToString();
          add1.Text = dt.Rows[0]["Address"].ToString();


          add2.Text = dt.Rows[0]["State"].ToString();

           city.Text = dt.Rows[0]["City"].ToString();
          pincode.Text = dt.Rows[0]["Pincode"].ToString();
          cmno.Text = dt.Rows[0]["ContactNo"].ToString();
      
        }
        con.Close();
   

    }


    Int64 qtn, amount, billamount;
    protected void Button4_Click(object sender, EventArgs e)
    {
       
       
            qtn = Convert.ToInt64(txtQtn.Text);
            amount =Convert.ToInt64( ddlProduct.SelectedValue.ToString());
            billamount = qtn * amount;
       

        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into DailyOrderInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12,@p13)", con);
       
        cmd.Parameters.AddWithValue("@p1", invoiceno.Text);
        cmd.Parameters.AddWithValue("@p2", idate.Text);
        cmd.Parameters.AddWithValue("@p3", clientname.Text);
        cmd.Parameters.AddWithValue("@p4", cmno.Text);
        cmd.Parameters.AddWithValue("@p5", add1.Text);
        cmd.Parameters.AddWithValue("@p6", city.Text);
        cmd.Parameters.AddWithValue("@p7", add2.Text);
        cmd.Parameters.AddWithValue("@p8", pincode.Text);
        cmd.Parameters.AddWithValue("@p9", ddlProduct.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@p10",txtQtn.Text);
       cmd.Parameters.AddWithValue("@p11", billamount);
        cmd.Parameters.AddWithValue("@p12", ddlDname.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p13", "NotDeliver");
        cmd.ExecuteNonQuery();

        con.Close();
        incrementid();
        
        
        System.Text.StringBuilder javaScript = new System.Text.StringBuilder();

        string scriptKey = "ConfirmationScript";

        javaScript.Append("var userConfirmation = window.confirm('" + "Order Has been Placed Successfully" + "');\n");
        javaScript.Append("window.location='BookTiffin.aspx';");

        ClientScript.RegisterStartupScript(this.GetType(), scriptKey, javaScript.ToString(), true);
       
    }

    

    private void incrementid()
    {
        int id1 = Convert.ToInt16(id);
        id1 = id1 + 1;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "update ID set Id=@p1";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", id1.ToString());

        cmd.ExecuteNonQuery();


        con.Close();
    }

   

 

    

 

 
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    
  
  
}