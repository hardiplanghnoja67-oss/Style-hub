<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="StyleHub.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">
    <title>StyleHub | Login</title>
    <meta name="description" content="Login to your StyleHub account to access your orders, wishlist and more." />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&family=Playfair+Display:ital,wght@0,600;0,700;0,800;1,600&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <link rel="stylesheet" href="stylehub-modern.css" />
</head>

<body>

<form id="form1" runat="server">

<div class="sh-auth-wrapper">

    <!-- LEFT: Fashion Image Panel -->
    <div class="sh-auth-left">

        <div style="text-align:center; max-width:380px;">

            <div style="font-family:'Playfair Display',Georgia,serif; font-size:42px; font-weight:800; color:white; margin-bottom:10px;">
                Style<span style="color:var(--accent);">Hub</span>
            </div>

            <h2>Welcome Back</h2>

            <p>
                Login to access your account, track orders, and
                discover your next favourite look.
            </p>

            <div style="margin-top:32px; padding:20px; border:1px solid rgba(255,255,255,.2); border-radius:12px;">
                <div style="display:flex; gap:12px; align-items:center; color:rgba(255,255,255,.8); font-size:14px; margin-bottom:12px;">
                    <i class="fa-solid fa-gem" style="color:var(--accent);"></i>
                    Exclusive member discounts
                </div>
                <div style="display:flex; gap:12px; align-items:center; color:rgba(255,255,255,.8); font-size:14px; margin-bottom:12px;">
                    <i class="fa-solid fa-truck-fast" style="color:var(--accent);"></i>
                    Order tracking &amp; history
                </div>
                <div style="display:flex; gap:12px; align-items:center; color:rgba(255,255,255,.8); font-size:14px;">
                    <i class="fa-regular fa-heart" style="color:var(--accent);"></i>
                    Saved wishlist
                </div>
            </div>

        </div>

    </div>

    <!-- RIGHT: Login Form -->
    <div class="sh-auth-right">

        <div class="sh-auth-card">

            <div style="margin-bottom:8px;">
                <a href="Home.aspx" style="color:var(--secondary); text-decoration:none; font-size:13px; display:inline-flex; align-items:center; gap:6px; margin-bottom:28px;">
                    <i class="fa-solid fa-arrow-left fa-xs"></i> Back to Home
                </a>
            </div>

            <span class="sh-label">Member Access</span>
            <h2 style="margin-top:8px;">Sign In</h2>
            <p>Enter your credentials to access your account.</p>

            <!-- Email -->
            <div class="sh-input-wrap">
                <i class="fa-regular fa-envelope"></i>
                <asp:TextBox ID="txtEmail" runat="server"
                    CssClass="sh-input-field"
                    placeholder="Email Address"
                    TextMode="Email">
                </asp:TextBox>
            </div>

            <!-- Password -->
            <div class="sh-input-wrap">
                <i class="fa-solid fa-lock"></i>
                <asp:TextBox ID="txtPassword" runat="server"
                    CssClass="sh-input-field"
                    TextMode="Password"
                    placeholder="Password">
                </asp:TextBox>
            </div>

            <!-- Login Button -->
            <asp:Button ID="btnLogin" runat="server"
                Text="Sign In"
                CssClass="sh-btn sh-btn-dark sh-btn-full"
                OnClick="btnLogin_Click" />

            <!-- Message label -->
            <asp:Label ID="lblMessage" runat="server" CssClass="sh-message-label"></asp:Label>

            <!-- Footer -->
            <div class="sh-auth-footer-text">
                Don't have an account?
                <a href="Registration.aspx">Create one now</a>
            </div>

            <div style="text-align:center; margin-top:12px;">
                <a href="AdminLogin.aspx" style="font-size:12px; color:var(--secondary); text-decoration:none;">
                    <i class="fa-solid fa-user-shield fa-xs"></i>
                    Admin Login
                </a>
            </div>

        </div>

    </div>

</div>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="stylehub-modern.js"></script>

</body>
</html>