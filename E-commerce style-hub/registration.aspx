<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="StyleHub.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">
    <title>StyleHub | Create Account</title>
    <meta name="description" content="Join StyleHub and enjoy exclusive member benefits, order tracking and personalised fashion recommendations." />
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

    <!-- LEFT: Image Panel -->
    <div class="sh-auth-left" style="background-image: linear-gradient(rgba(9,28,46,0.65), rgba(9,28,46,0.65)), url('https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=900&q=90'); background-size:cover; background-position:center;">

        <div style="text-align:center; max-width:380px;">

            <div style="font-family:'Playfair Display',Georgia,serif; font-size:42px; font-weight:800; color:white; margin-bottom:10px;">
                Style<span style="color:var(--accent);">Hub</span>
            </div>

            <h2>Join StyleHub</h2>

            <p>
                Create your account and unlock exclusive
                member benefits, style guides and early access
                to new collections.
            </p>

            <div style="margin-top:32px; display:flex; flex-direction:column; gap:14px;">
                <div style="background:rgba(255,255,255,.1); border-radius:10px; padding:16px 20px; display:flex; align-items:center; gap:14px; color:white; font-size:14px;">
                    <i class="fa-solid fa-tag" style="color:var(--accent); font-size:20px;"></i>
                    <span>Exclusive member discounts &amp; offers</span>
                </div>
                <div style="background:rgba(255,255,255,.1); border-radius:10px; padding:16px 20px; display:flex; align-items:center; gap:14px; color:white; font-size:14px;">
                    <i class="fa-solid fa-box-open" style="color:var(--accent); font-size:20px;"></i>
                    <span>Track your orders in real time</span>
                </div>
                <div style="background:rgba(255,255,255,.1); border-radius:10px; padding:16px 20px; display:flex; align-items:center; gap:14px; color:white; font-size:14px;">
                    <i class="fa-regular fa-heart" style="color:var(--accent); font-size:20px;"></i>
                    <span>Save your wishlist forever</span>
                </div>
            </div>

        </div>

    </div>

    <!-- RIGHT: Register Form -->
    <div class="sh-auth-right" style="overflow-y:auto;">

        <div class="sh-auth-card" style="max-width:460px;">

            <div>
                <a href="Home.aspx" style="color:var(--secondary); text-decoration:none; font-size:13px; display:inline-flex; align-items:center; gap:6px; margin-bottom:28px;">
                    <i class="fa-solid fa-arrow-left fa-xs"></i> Back to Home
                </a>
            </div>

            <span class="sh-label">New Member</span>
            <h2 style="margin-top:8px;">Create Account</h2>
            <p>Fill in your details to get started.</p>

            <!-- Full Name -->
            <div class="sh-input-wrap">
                <i class="fa-solid fa-user"></i>
                <asp:TextBox ID="txtName" runat="server"
                    CssClass="sh-input-field"
                    placeholder="Full Name">
                </asp:TextBox>
            </div>

            <!-- Email -->
            <div class="sh-input-wrap">
                <i class="fa-regular fa-envelope"></i>
                <asp:TextBox ID="txtEmail" runat="server"
                    CssClass="sh-input-field"
                    placeholder="Email Address">
                </asp:TextBox>
            </div>

            <!-- Mobile -->
            <div class="sh-input-wrap">
                <i class="fa-solid fa-mobile-screen-button"></i>
                <asp:TextBox ID="txtMobile" runat="server"
                    CssClass="sh-input-field"
                    placeholder="Mobile Number">
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

            <!-- Address -->
            <div style="margin-bottom:18px; position:relative;">
                <i class="fa-solid fa-location-dot" style="position:absolute; left:14px; top:16px; color:var(--secondary); font-size:15px; pointer-events:none; z-index:1;"></i>
                <asp:TextBox ID="txtAddress" runat="server"
                    CssClass="sh-input-field"
                    TextMode="MultiLine"
                    Rows="3"
                    placeholder="Delivery Address"
                    style="padding-left:44px; resize:none; height:auto;">
                </asp:TextBox>
            </div>

            <!-- Register Button -->
            <asp:Button ID="btnRegister" runat="server"
                Text="Create Account"
                CssClass="sh-btn sh-btn-dark sh-btn-full"
                OnClick="btnRegister_Click" />

            <!-- Message -->
            <asp:Label ID="lblMessage" runat="server" CssClass="sh-message-label"></asp:Label>

            <div class="sh-auth-footer-text">
                Already have an account?
                <a href="Login.aspx">Sign in</a>
            </div>

        </div>

    </div>

</div>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="stylehub-modern.js"></script>

</body>
</html>