using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace StyleHub
{
    public partial class AddCategory : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            getCon();
            fillgrid();
        }

        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getCon();
            da = new SqlDataAdapter("select * from category_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (btnSave.Text == "Save")
            {
                getCon();
              
                cmd = new SqlCommand("insert into category_tbl(CategoryName, Description, Status) values('" + txtCategoryName.Text + "','" + txtDescription.Text + "','" + ddlStatus.SelectedValue + "')", con);
                cmd.ExecuteNonQuery();
                fillgrid();
              
            }
            else
            {
                getCon();
                cmd = new SqlCommand("update category_tbl set CategoryName='" + txtCategoryName.Text + "',Description='" + txtDescription.Text + "',Status='" + ddlStatus.SelectedValue + "' where id='" + ViewState["Id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
                

                btnSave.Text = "Save";
            }

        }


        void filldata()
        {
            getCon();
            da = new SqlDataAdapter("select * from category_tbl where id='" + ViewState["Id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            txtCategoryName.Text = ds.Tables[0].Rows[0]["CategoryName"].ToString();

            if (ds.Tables[0].Rows[0]["Status"].ToString() == "Active")
            {
                ddlStatus.SelectedValue = "Active";
            }
            else
            {
                ddlStatus.SelectedValue = "Inactive";
            }

            txtDescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["Id"] = id;
                btnSave.Text = "Update";
                filldata();
            }
            else
            {
                getCon();
                cmd = new SqlCommand("delete from category_tbl where id='" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtCategoryName.Text = "";
            txtDescription.Text = "";
            ddlStatus.SelectedIndex = 0;
        }
    }
}