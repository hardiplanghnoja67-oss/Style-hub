using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace StyleHub
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void clear()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtPassword.Text = "";
            txtAddress.Text = "";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "" || txtEmail.Text == "" || txtMobile.Text == "" || txtPassword.Text == "" || txtAddress.Text == "")
            {
                lblMessage.Text = "Please fill all fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            getCon();

            cmd = new SqlCommand("insert into reg_tbl (FullName, Email, Mobile, Password, Address) values ('" + txtName.Text + "', '" + txtEmail.Text + "', '" + txtMobile.Text + "', '" + txtPassword.Text + "', '" + txtAddress.Text + "')", con);
            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "Registration Successful!";
            lblMessage.ForeColor = System.Drawing.Color.Green;

            clear();
        }
    }
}