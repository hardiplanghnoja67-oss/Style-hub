<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Cart.aspx.cs"
    Inherits="StyleHub.Cart" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">
    <title>StyleHub | Shopping Cart</title>
    <meta name="description" content="Review your StyleHub shopping cart and proceed to checkout." />
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

<!-- NAVBAR -->
<nav class="sh-navbar navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="sh-brand" href="Home.aspx">Style<span>Hub</span></a>
        <button class="sh-toggler navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span></span><span></span><span></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto align-items-center gap-1">
                <li class="nav-item"><a class="sh-nav-link nav-link px-3" href="Home.aspx">Home</a></li>
                <li class="nav-item"><a class="sh-nav-link nav-link px-3" href="Shop.aspx">Shop</a></li>
                <li class="nav-item"><a class="sh-nav-link nav-link px-3" href="About.aspx">About</a></li>
                <li class="nav-item"><a class="sh-nav-link nav-link px-3" href="Contact.aspx">Contact</a></li>
            </ul>
            <div class="d-flex align-items-center gap-2 ms-3">
                <a href="Cart.aspx" class="sh-nav-icon"><i class="fa-solid fa-bag-shopping"></i></a>
                <a href="Wishlist.aspx" class="sh-nav-icon"><i class="fa-regular fa-heart"></i></a>
            </div>
        </div>
    </div>
</nav>


<!-- PAGE HEADER -->
<section class="sh-page-header" style="background-image: linear-gradient(rgba(13,13,13,.82), rgba(13,13,13,.82)), url('https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1800&q=90'); background-size:cover; background-position:center;">
    <h1>Your Shopping Cart</h1>
    <p>Review your selected products and continue your shopping journey.</p>
    <div class="sh-breadcrumb">
        <a href="Home.aspx">Home</a>
        <span>/</span>
        <a href="Shop.aspx">Shop</a>
        <span>/</span>
        <span>Cart</span>
    </div>
</section>



<!-- FOOTER -->
<footer class="sh-footer">
    <div class="container">
        <div class="row g-5">
            <div class="col-md-4">
                <div class="sh-footer-brand">Style<span>Hub</span></div>
                <p>Premium fashion for your everyday lifestyle.</p>
            </div>
            <div class="col-6 col-md-4">
                <h5>Quick Links</h5>
                <a class="sh-footer-link" href="Home.aspx">Home</a>
                <a class="sh-footer-link" href="Shop.aspx">Shop</a>
                <a class="sh-footer-link" href="Checkout.aspx">Checkout</a>
            </div>
            <div class="col-md-4">
                <h5>Contact</h5>
                <div class="sh-footer-info">
                    <p><i class="fa-solid fa-envelope"></i>support@stylehub.com</p>
                    <p><i class="fa-solid fa-phone"></i>+91 98765 43210</p>
                </div>
            </div>
        </div>
        <div class="sh-copyright">
            <p>© 2026 StyleHub. All Rights Reserved.</p>
        </div>
    </div>
</footer>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="stylehub-modern.js"></script>

</body>
</html>