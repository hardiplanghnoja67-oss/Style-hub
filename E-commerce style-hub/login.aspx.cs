using System;
using System.Data.SqlClient;

using System.Configuration;
using System.Data;


namespace StyleHub
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select count(*) from reg_tbl where Email='" + txtEmail.Text + "' and Password='" + txtPassword.Text + "'", con);
            i = Convert.ToInt16(cmd.ExecuteScalar());

            if (i > 0)
            {
                Session["admin"] = txtEmail.Text;
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Redirect("Invalid User Name or Password");
            }
        }
    }
}