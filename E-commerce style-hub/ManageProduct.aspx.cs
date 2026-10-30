using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace StyleHub
{
    public partial class ManageProducts : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;

        string img;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getCon();
            fillgrid();

            if (!IsPostBack)
            {
                filcombo();
            }
        }


        void fillgrid()
        {
            getCon();
            da = new SqlDataAdapter("select * from product_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void btnSaveProduct_Click(object sender, EventArgs e)
        {

            if (btnSaveProduct.Text == "Save Product")
            {
                getCon();
                imageupload();
                cmd = new SqlCommand("insert into product_tbl(ProductName,Category,Price,Stock,Brand,ProductImage,Description) values('" + txtModalProductName.Text + "','" + ddlModalCategory.SelectedValue + "','" + txtModalPrice.Text + "','" + txtModalStock.Text + "','" + txtModalBrand.Text + "','" + img + "','" + txtModalDescription.Text + "')", con);
                cmd.ExecuteNonQuery();
                fillgrid();

            }
            else
            {
                getCon();
                imageupload();
                cmd = new SqlCommand("update product_tbl set ProductName='" + txtModalProductName.Text + "',Category='" + ddlModalCategory.SelectedValue + "',Price='" + txtModalPrice.Text + "',Stock='" + txtModalStock.Text + "',Brand='" + txtModalBrand.Text + "',ProductImage='" + img + "',Description='" + txtModalDescription.Text + "' where id='" + ViewState["Id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();


                btnSaveProduct.Text = "Save Product";
            }
        }

        void filcombo()
        {
            getCon();
            da = new SqlDataAdapter("select * from category_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ddlModalCategory.Items.Add(ds.Tables[0].Rows[i]["CategoryName"].ToString());
            }

        }

        void imageupload()
        {
            img = "~/prod_img/" + fuModalImage.FileName;
            fuModalImage.SaveAs(Server.MapPath(img));
        }

        void filldata()
        {
            getCon();
            da = new SqlDataAdapter("select * from product_tbl where id='" + ViewState["Id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            txtModalProductName.Text = ds.Tables[0].Rows[0]["ProductName"].ToString();

            ddlModalCategory.Text = ds.Tables[0].Rows[0]["Category"].ToString();
            txtModalPrice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            txtModalStock.Text = ds.Tables[0].Rows[0]["Stock"].ToString();
            txtModalBrand.Text = ds.Tables[0].Rows[0]["Brand"].ToString();
            txtModalImageUrl.Text = ds.Tables[0].Rows[0]["ProductImage"].ToString();
            txtModalDescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();
        }


        private void Clear()
        {
            hfProductId.Value = "";
            hfExistingImage.Value = "";
            txtModalProductName.Text = "";
            txtModalPrice.Text = "";
            txtModalStock.Text = "";
            txtModalBrand.Text = "";
            txtModalImageUrl.Text = "";
            txtModalDescription.Text = "";
            litModalAlert.Text = "";
            btnSaveProduct.Text = "Save Product";
            if (ddlModalCategory.Items.Count > 0) ddlModalCategory.SelectedIndex = 0;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["Id"] = id;
                btnSaveProduct.Text = "Update";
                filldata();
            }
            else
            {
                getCon();
                cmd = new SqlCommand("delete from product_tbl where id='" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

    }
}

