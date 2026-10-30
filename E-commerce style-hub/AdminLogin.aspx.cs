using System;

namespace StyleHub
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["logout"] != null)
            {
                Session["Admin"] = null;
                Session.Clear();
                Session.Abandon();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Demo Admin Login
            if (username == "admin" && password == "admin123")
            {
                Session["Admin"] = username;
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password!');</script>");
            }
        }
    }
}