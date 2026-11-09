using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StyleHub
{
    public partial class Shop : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;

        string img;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                getCon();
                filldatalist();
                
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        void getCon()
        {
            con = new SqlConnection(s);
            
                con.Open();
            
        }

        void filldatalist()
        {
            getCon();
            da = new SqlDataAdapter("select * from product_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_vd")
            {
                string P_Id = e.CommandArgument.ToString();
                ViewState["pid"] = P_Id;
                Response.Redirect("ProductDetails.aspx?pid=" + P_Id);
            }
            else
            {
                getCon();
                int prdid = Convert.ToInt32(e.CommandArgument);
                ViewState["prdid"] = prdid;
                cmd = new SqlCommand("insert into Cart_tbl (Cart_User_ID, Cart_Prod_Id, Cart_Quan, AddDate) values('" + Session["userId"] + "', '" + ViewState["prdid"] + "', 1, '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')", con);
                cmd.ExecuteNonQuery();
            }
        }
    }
}