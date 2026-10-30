<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AdminLogin.aspx.cs"
    Inherits="StyleHub.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Admin Login | StyleHub</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

<style>

body{
    margin:0;
    font-family:'Poppins',sans-serif;
    background:#F8F6F2;
}

.login-section{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(rgba(16,42,67,.85),rgba(16,42,67,.85)),
    url('Images/admin-bg.jpg');
    background-size:cover;
    background-position:center;
}

.login-card{
    width:100%;
    max-width:450px;
    background:#fff;
    padding:40px;
    border-radius:20px;
    box-shadow:0 15px 35px rgba(0,0,0,.2);
}

.login-card h2{
    color:#102A43;
    font-weight:700;
}

.form-control{
    height:50px;
    border-radius:10px;
}

.btn-login{
    width:100%;
    background:#102A43;
    color:#fff;
    height:50px;
    border:none;
    border-radius:10px;
    font-weight:600;
}

.btn-login:hover{
    background:#D4AF37;
    color:#102A43;
}

</style>

</head>

<body>

<form id="form1" runat="server">

<div class="login-section">

<div class="login-card">

<div class="text-center mb-4">

<i class="fas fa-user-shield fa-3x text-warning"></i>

<h2 class="mt-3">Admin Login</h2>

<p class="text-muted">Login to StyleHub Admin Panel</p>

</div>

<div class="mb-3">

<label class="form-label">Username</label>

<asp:TextBox ID="txtUsername"
    runat="server"
    CssClass="form-control"
    placeholder="Enter Username">
</asp:TextBox>

</div>

<div class="mb-4">

<label class="form-label">Password</label>

<asp:TextBox ID="txtPassword"
    runat="server"
    CssClass="form-control"
    TextMode="Password"
    placeholder="Enter Password">
</asp:TextBox>

</div>

<asp:Button ID="btnLogin"
    runat="server"
    Text="Login"
    CssClass="btn-login"
    OnClick="btnLogin_Click" />
    <div class="text-center mt-4">

    <a href="Home.aspx" class="text-decoration-none text-secondary">
        <i class="fas fa-arrow-left me-2"></i>
        Back to Website
    </a>

</div>

</div>

</div>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>