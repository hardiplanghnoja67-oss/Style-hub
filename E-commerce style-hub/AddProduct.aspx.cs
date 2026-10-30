using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace StyleHub
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            getCon();
        }

        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtProductName.Text = "";
            ddlCategory.SelectedIndex = 0;
            txtPrice.Text = "";
            txtStock.Text = "";
            txtBrand.Text = "";
            txtDescription.Text = "";
        }

        //void filcombo()
        //{
        //    getCon();
        //    da = new SqlDataAdapter("select * from comp_tbl", con);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        //    {
        //        dropd.Items.Add(ds.Tables[0].Rows[i]["Comp_Name"].ToString());
        //    }

        //}
    }
}
