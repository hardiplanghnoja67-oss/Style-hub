<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="About.aspx.cs"
    Inherits="StyleHub.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>About Us | StyleHub</title>

<meta name="viewport"
content="width=device-width, initial-scale=1"/>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet"/>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
}

body{
font-family:'Segoe UI',sans-serif;
background:#f8f9fa;
}

/*================ NAVBAR ================*/

.navbar{
background:#102a43;
padding:18px 7%;
box-shadow:0 3px 15px rgba(0,0,0,.15);
}

.navbar-brand{
font-size:34px;
font-weight:bold;
color:white !important;
}

.navbar-brand span{
color:#d4af37;
}

.nav-link{
color:white !important;
margin-left:22px;
font-size:16px;
font-weight:500;
transition:.3s;
}

.nav-link:hover{
color:#d4af37 !important;
}

/*================ HERO ================*/

.hero{

    position:relative;

    height:650px;

    background:url('https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=1800&q=80');

    background-size:cover;

    background-position:center;

    background-repeat:no-repeat;

    display:flex;

    align-items:center;

}

.hero-overlay{
    position:absolute;
    inset:0;
    background:linear-gradient(
        rgba(0,0,0,0.15),
        rgba(0,0,0,0.15)
    );
}

/*.hero-overlay{

    position:absolute;

    top:0;

    left:0;

    width:100%;

    height:100%;

    background:linear-gradient(
        rgba(16,42,67,.82),
        rgba(16,42,67,.72)
    );

}*/

.hero-content{

    position:relative;

    z-index:2;

    color:black;

    max-width:700px;

}

.hero-tag{

    display:inline-block;

    background:#d4af37;

    color:#102a43;

    padding:8px 18px;

    border-radius:30px;

    font-weight:600;

    margin-bottom:20px;

}

.hero h1{

    font-size:72px;

    font-weight:800;

    margin-bottom:20px;

    line-height:1.2;

}

.hero-text{

    font-size:21px;

    line-height:35px;

    color:black;

    margin-bottom:35px;

}

.hero-btn .btn{

    padding:14px 35px;

    font-size:18px;

    border-radius:50px;

}

.btn-warning{

    background:#d4af37;

    border:none;

    color:#102a43;

    font-weight:700;

}

.btn-warning:hover{

    background:#f4c842;

}

.btn-outline-light{

    border:2px solid white;

}

.breadcrumb-box{

    font-size:16px;

    color:#ddd;

}

.breadcrumb-box span{

    color:#d4af37;

    margin:0 8px;

}

@media(max-width:768px){

.hero{

    height:500px;

}

.hero h1{

    font-size:45px;

}

.hero-text{

    font-size:17px;

    line-height:28px;

}

.hero-btn .btn{

    margin-top:10px;

    display:block;

    width:220px;

}

}
/*
.hero{

height:520px;

display:flex;
justify-content:center;
align-items:center;
flex-direction:column;

text-align:center;

color:white;

background-image:

linear-gradient(rgba(16,42,67,.70),

rgba(16,42,67,.70)),

url('https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1600&q=80');

background-size:cover;
background-position:center;
background-repeat:no-repeat;

}

.hero h1{

font-size:65px;
font-weight:bold;

}

.hero p{

font-size:22px;
margin-top:18px;
width:70%;

}*/

/*================ ABOUT ================*/

.about-section{

padding:90px 0;

}

.about-img img{

width:100%;
border-radius:15px;
box-shadow:0 10px 30px rgba(0,0,0,.2);

}

.about-content h2{

font-size:42px;
font-weight:bold;
color:#102a43;

margin-bottom:20px;

}

.about-content p{

font-size:17px;
line-height:32px;
color:black;

}

.btn-about{

background:#102a43;
color:white;
padding:12px 30px;
border-radius:5px;
text-decoration:none;
display:inline-block;
margin-top:20px;

}

.btn-about:hover{

background:#d4af37;
color:#102a43;

}

/*================ FEATURES ================*/

.feature-section{

background:#ffffff;
padding:90px 0;

}

.feature-box{

background:white;

padding:35px;

border-radius:15px;

text-align:center;

box-shadow:0 8px 20px rgba(0,0,0,.08);

transition:.4s;

height:100%;

}

.feature-box:hover{

transform:translateY(-10px);

}

.feature-box i{

font-size:48px;

color:#d4af37;

margin-bottom:20px;

}

.feature-box h4{

color:#102a43;

margin-bottom:15px;

}

.feature-box p{

color:#666;

}

</style>

</head>

<body>

<form runat="server">

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg">

<div class="container-fluid">

<a class="navbar-brand"
href="Home.aspx">

Style<span>Hub</span>

</a>

<button class="navbar-toggler"
type="button"
data-bs-toggle="collapse"
data-bs-target="#menu">

<span class="navbar-toggler-icon"></span>

</button>

<div class="collapse navbar-collapse"
id="menu">

<ul class="navbar-nav ms-auto">

<li class="nav-item">

<a class="nav-link"
href="Home.aspx">

Home

</a>

</li>

<li class="nav-item">

<a class="nav-link"
href="Shop.aspx">

Shop

</a>

</li>

<li class="nav-item">

<a class="nav-link"
href="About.aspx">

About

</a>

</li>

<li class="nav-item">

<a class="nav-link"
href="Contact.aspx">

Contact

</a>

</li>

</ul>

</div>

</div>

</nav>

<!-- HERO -->
    <!-- HERO SECTION -->

<section class="hero">

    <div class="hero-overlay"></div>

    <div class="container">

        <div class="hero-content">

            <p class="hero-tag">
                Premium Fashion Brand
            </p>

            <h1>
                About StyleHub
            </h1>

            <p class="hero-text">

                Discover premium fashion, modern lifestyle, and quality
                products crafted with elegance, comfort, and affordability.

            </p>

            <div class="hero-btn">

                <a href="Shop.aspx" class="btn btn-warning btn-lg">
                    Explore Collection
                </a>

                <a href="Home.aspx" class="btn btn-outline-light btn-lg ms-3">
                    Home
                </a>

            </div>

            <div class="breadcrumb-box mt-4">

                Home
                <span> / </span>
                About Us

            </div>

        </div>

    </div>

</section>
<%--<section class="hero">

<h1>About StyleHub</h1>

<p>

Discover premium fashion,
modern lifestyle,
and quality products designed
to make your everyday look exceptional.

</p>

</section>--%>

<!-- ABOUT -->

<%--<section class="about-section">

<div class="container">

<div class="row align-items-center">

<div class="col-lg-6 about-img">

<img src="https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=900&q=80"/>

</div>

<div class="col-lg-6 about-content">

<h2>Who We Are</h2>

<p>

StyleHub is a modern online fashion destination where style meets quality.
We offer premium clothing, footwear and accessories at affordable prices.

Our mission is to help everyone express their personality through fashion.

</p>

<a href="Shop.aspx"
class="btn-about">

Explore Collection

</a>

</div>

</div>

</div>

</section>--%>

<!-- FEATURES -->

<section class="feature-section">

<div class="container">

<div class="row g-4">

<div class="col-md-4">

<div class="feature-box">

<i class="fa-solid fa-shirt"></i>

<h4>Premium Fashion</h4>

<p>

Latest trending collections with premium quality.

</p>

</div>

</div>

<div class="col-md-4">

<div class="feature-box">

<i class="fa-solid fa-truck-fast"></i>

<h4>Fast Delivery</h4>

<p>

Safe and fast delivery all over India.

</p>

</div>

</div>

<div class="col-md-4">

<div class="feature-box">

<i class="fa-solid fa-headset"></i>

<h4>24/7 Support</h4>

<p>

Friendly customer support whenever you need us.

</p>

</div>

</div>

</div>

</div>

</section>
    <!-- TEAM SECTION -->

<section style="padding:90px 0;background:#f8f9fa;">

    <div class="container">

        <div class="text-center mb-5">

            <h2 style="font-size:42px;font-weight:bold;color:#102a43;">
                Meet Our Team
            </h2>

            <p style="color:#666;">
                Passionate people behind StyleHub.
            </p>

        </div>

        <div class="row g-4">

            <!-- MEMBER 1 -->

            <div class="col-md-4">

                <div class="card border-0 shadow text-center p-4">

                    <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=500&q=80"
                         class="rounded-circle mx-auto"
                         style="width:150px;height:150px;object-fit:cover;" />

                    <h4 class="mt-3">Emma Watson</h4>

                    <p style="color:#d4af37;">Fashion Designer</p>

                </div>

            </div>

            <!-- MEMBER 2 -->

            <div class="col-md-4">

                <div class="card border-0 shadow text-center p-4">

                    <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=500&q=80"
                         class="rounded-circle mx-auto"
                         style="width:150px;height:150px;object-fit:cover;" />

                    <h4 class="mt-3">James Wilson</h4>

                    <p style="color:#d4af37;">Creative Director</p>

                </div>

            </div>

            <!-- MEMBER 3 -->

            <div class="col-md-4">

                <div class="card border-0 shadow text-center p-4">

                    <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=500&q=80"
                         class="rounded-circle mx-auto"
                         style="width:150px;height:150px;object-fit:cover;" />

                    <h4 class="mt-3">Sophia Brown</h4>

                    <p style="color:#d4af37;">Marketing Head</p>

                </div>

            </div>

        </div>

    </div>

</section>

<!-- FOOTER -->

<footer style="background:#102a43;color:white;padding:60px 0 20px;">

    <div class="container">

        <div class="row">

            <div class="col-md-4">

                <h3 style="color:#d4af37;">
                    StyleHub
                </h3>

                <p>
                    Premium Fashion & Lifestyle Store offering quality clothing,
                    footwear and accessories.
                </p>

            </div>

            <div class="col-md-4">

                <h4>Quick Links</h4>

                <p><a href="Home.aspx" style="color:white;text-decoration:none;">Home</a></p>

                <p><a href="Shop.aspx" style="color:white;text-decoration:none;">Shop</a></p>

                <p><a href="About.aspx" style="color:white;text-decoration:none;">About</a></p>

                <p><a href="Contact.aspx" style="color:white;text-decoration:none;">Contact</a></p>

            </div>

            <div class="col-md-4">

                <h4>Contact Us</h4>

                <p>
                    📧 support@stylehub.com
                </p>

                <p>
                    📞 +91 98765 43210
                </p>

                <p>
                    📍 Ahmedabad, Gujarat
                </p>

            </div>

        </div>

        <hr style="background:#ffffff;opacity:.2;" />

        <div class="text-center">

            © 2026 StyleHub. All Rights Reserved.

        </div>

    </div>

</footer>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
