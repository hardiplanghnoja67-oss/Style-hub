<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs"
    Inherits="StyleHub.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<meta charset="utf-8" />

<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>StyleHub | Contact</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>

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

color:#333;

}

/*======================
NAVBAR
=======================*/

.navbar{

background:#102A43;

padding:18px 8%;

}

.navbar-brand{

font-size:34px;

font-weight:bold;

color:#fff !important;

}

.navbar-brand span{

color:#D4AF37;

}

.nav-link{

color:white !important;

margin-left:20px;

font-weight:500;

transition:.3s;

}

.nav-link:hover{

color:#D4AF37 !important;

}

/*======================
HERO
=======================*/

.contact-hero{

height:600px;

background:linear-gradient(135deg,#8E44AD,#6C63FF,#5B2C6F);

display:flex;

align-items:center;

justify-content:center;

text-align:center;

color:white;

position:relative;

overflow:hidden;

}

.contact-hero::before{

content:"";

position:absolute;

width:500px;

height:500px;

background:rgba(255,255,255,.08);

border-radius:50%;

top:-180px;

right:-120px;

}

.contact-hero::after{

content:"";

position:absolute;

width:400px;

height:400px;

background:rgba(255,255,255,.06);

border-radius:50%;

bottom:-180px;

left:-120px;

}

.hero-content{

position:relative;

z-index:2;

}

.hero-badge{

/*display:inline-block;

background:#D4AF37;

color:#102A43;

padding:10px 24px;

border-radius:40px;

font-weight:600;

margin-bottom:25px;*/

    background:
    linear-gradient(rgba(16,42,67,.60),rgba(16,42,67,.60)),
    url('https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1600&q=80');

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;

    min-height:85vh;

    display:flex;
    justify-content:center;
    align-items:center;

    text-align:center;
}


.hero-content h1{

font-size:68px;

font-weight:800;

margin-bottom:20px;

}

.hero-content p{

font-size:21px;

max-width:750px;

margin:auto;

line-height:35px;

opacity:.95;

}

.hero-btn{

margin-top:40px;

}

.btn-shop{

background:#D4AF37;

padding:15px 35px;

border-radius:40px;

font-weight:bold;

color:#102A43;

text-decoration:none;

margin-right:15px;

transition:.3s;

}

.btn-shop:hover{

background:white;

color:#102A43;

}

.btn-outline-custom{

padding:15px 35px;

border:2px solid white;

border-radius:40px;

text-decoration:none;

color:white;

font-weight:600;

transition:.3s;

}

.btn-outline-custom:hover{

background:white;

color:#102A43;

}

@media(max-width:768px){

.hero-content h1{

font-size:45px;

}

.hero-content p{

font-size:17px;

line-height:28px;

padding:0 15px;

}

.contact-hero{

height:500px;

}

}

</style>

</head>

<body>

<form id="form1" runat="server">

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg">

<div class="container-fluid">

<a class="navbar-brand" href="Home.aspx">

Style<span>Hub</span>

</a>

<button class="navbar-toggler bg-light"

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

    <span class="badge rounded-pill px-4 py-2"
      style="background:#D4AF37;color:#102A43;font-size:15px;font-weight:600;">
    Get In Touch
</span>

<h1 class="display-2 fw-bold mt-4 mb-4">
    Contact <span style="color:#D4AF37;">StyleHub</span>
</h1>

<p class="lead mx-auto"
   style="max-width:700px;color:#F5F5F5;font-size:22px;line-height:1.8;">
    We'd love to hear from you. Whether you have questions about our products,
    orders, or services, our team is here to provide the best shopping experience.
</p>

<div class="mt-5">

    <a href="Shop.aspx"
       class="btn btn-warning btn-lg px-5 py-3 rounded-pill fw-bold me-3">
        <i class="fa-solid fa-bag-shopping me-2"></i>
        Shop Now
    </a>

    <a href="Home.aspx"
       class="btn btn-outline-light btn-lg px-5 py-3 rounded-pill">
        <i class="fa-solid fa-house me-2"></i>
        Back Home
    </a>

</div>

    <!-- CONTACT SECTION -->

<section class="py-5" style="background:#F8F9FA;">

<div class="container">

<div class="row g-5 align-items-start">

<!-- CONTACT FORM -->

<div class="col-lg-7">

<div class="card border-0 shadow-lg p-5 rounded-4">

<h2 class="fw-bold mb-4" style="color:#102A43;">
Send us a Message
</h2>

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label fw-semibold">
Full Name
</label>

<input type="text"
class="form-control form-control-lg"
placeholder="Enter your name"/>

</div>

<div class="col-md-6 mb-3">

<label class="form-label fw-semibold">
Email Address
</label>

<input type="email"
class="form-control form-control-lg"
placeholder="Enter your email"/>

</div>

<div class="col-md-6 mb-3">

<label class="form-label fw-semibold">
Phone Number
</label>

<input type="text"
class="form-control form-control-lg"
placeholder="+91 XXXXX XXXXX"/>

</div>

<div class="col-md-6 mb-3">

<label class="form-label fw-semibold">
Subject
</label>

<input type="text"
class="form-control form-control-lg"
placeholder="Subject"/>

</div>

<div class="col-12 mb-4">

<label class="form-label fw-semibold">
Message
</label>

<textarea class="form-control"
rows="6"
placeholder="Write your message..."></textarea>

</div>

<div class="col-12">

<button class="btn btn-lg px-5 py-3"
style="background:#D4AF37;color:#102A43;font-weight:bold;border-radius:50px;">

<i class="fa-solid fa-paper-plane me-2"></i>

Send Message

</button>

</div>

</div>

</div>

</div>

<!-- CONTACT INFO -->

<div class="col-lg-5">

<div class="card border-0 shadow-lg rounded-4 p-4 mb-4">

<div class="d-flex">

<div class="me-3">

<div style="width:65px;height:65px;background:#102A43;border-radius:50%;display:flex;align-items:center;justify-content:center;">

<i class="fa-solid fa-location-dot text-warning fs-4"></i>

</div>

</div>

<div>

<h5 class="fw-bold">Our Address</h5>

<p class="text-muted mb-0">

StyleHub Fashion Store<br/>

Rajkot, Gujarat, India

</p>

</div>

</div>

</div>

<div class="card border-0 shadow-lg rounded-4 p-4 mb-4">

<div class="d-flex">

<div class="me-3">

<div style="width:65px;height:65px;background:#102A43;border-radius:50%;display:flex;align-items:center;justify-content:center;">

<i class="fa-solid fa-phone text-warning fs-4"></i>

</div>

</div>

<div>

<h5 class="fw-bold">Call Us</h5>

<p class="text-muted mb-0">

+91 98765 43210

</p>

</div>

</div>

</div>

<div class="card border-0 shadow-lg rounded-4 p-4 mb-4">

<div class="d-flex">

<div class="me-3">

<div style="width:65px;height:65px;background:#102A43;border-radius:50%;display:flex;align-items:center;justify-content:center;">

<i class="fa-solid fa-envelope text-warning fs-4"></i>

</div>

</div>

<div>

<h5 class="fw-bold">Email Us</h5>

<p class="text-muted mb-0">

support@stylehub.com

</p>

</div>

</div>

</div>

<div class="card border-0 shadow-lg rounded-4 p-4">

<div class="d-flex">

<div class="me-3">

<div style="width:65px;height:65px;background:#102A43;border-radius:50%;display:flex;align-items:center;justify-content:center;">

<i class="fa-solid fa-clock text-warning fs-4"></i>

</div>

</div>

<div>

<h5 class="fw-bold">Working Hours</h5>

<p class="text-muted mb-0">

Mon - Sat : 9:00 AM - 8:00 PM

</p>

</div>

</div>

</div>

</div>

</div>

</div>

</section>
    <!-- GOOGLE MAP -->

<section class="py-5 bg-white">

    <div class="container">

        <div class="text-center mb-5">

            <h2 class="fw-bold" style="color:#102A43;">
                Find Us On Map
            </h2>

            <p class="text-muted">
                Visit our store or contact us anytime.
            </p>

        </div>

        <div class="shadow rounded-4 overflow-hidden">

            <iframe src="https://www.google.com/maps?q=Rajkot,Gujarat&output=embed"
                width="100%"
                height="450"
                style="border:0;"
                allowfullscreen=""
                loading="lazy">
            </iframe>

        </div>

    </div>

</section>

<!-- FOLLOW US -->

<section class="py-5" style="background:#F4F6F9;">

    <div class="container text-center">

        <h2 class="fw-bold mb-3" style="color:#102A43;">
            Follow StyleHub
        </h2>

        <p class="text-muted mb-4">
            Stay connected with us on social media.
        </p>

        <a href="#" class="social-icon">
            <i class="fab fa-facebook-f"></i>
        </a>

        <a href="#" class="social-icon">
            <i class="fab fa-instagram"></i>
        </a>

        <a href="#" class="social-icon">
            <i class="fab fa-twitter"></i>
        </a>

        <a href="#" class="social-icon">
            <i class="fab fa-linkedin-in"></i>
        </a>

        <a href="#" class="social-icon">
            <i class="fab fa-youtube"></i>
        </a>

    </div>

</section>

<style>

.social-icon{

width:60px;

height:60px;

display:inline-flex;

align-items:center;

justify-content:center;

margin:10px;

border-radius:50%;

background:#102A43;

color:#D4AF37;

font-size:24px;

text-decoration:none;

transition:.4s;

box-shadow:0 10px 25px rgba(0,0,0,.15);

}

.social-icon:hover{

background:#D4AF37;

color:#102A43;

transform:translateY(-8px) rotate(360deg);

}

.footer{

background:linear-gradient(135deg,#0B1F33,#102A43);

color:white;

padding:70px 0 20px;

}

.footer h3{

font-weight:700;

margin-bottom:20px;

}

.footer h3 span{

color:#D4AF37;

}

.footer h5{

color:#D4AF37;

margin-bottom:20px;

}

.footer p{

color:#d9d9d9;

line-height:28px;

}

.footer a{

display:block;

color:#d9d9d9;

text-decoration:none;

margin-bottom:10px;

transition:.3s;

}

.footer a:hover{

color:#D4AF37;

padding-left:8px;

}

.footer hr{

border-color:rgba(255,255,255,.15);

margin:40px 0 20px;

}

</style>

<!-- FOOTER -->

<footer class="footer">

<div class="container">

<div class="row">

<div class="col-lg-4 mb-4">

<h3>

Style<span>Hub</span>

</h3>

<p>

StyleHub offers premium fashion with quality,
comfort and modern style for every occasion.

</p>

</div>

<div class="col-lg-4 mb-4">

<h5>

Quick Links

</h5>

<a href="Home.aspx">Home</a>

<a href="Shop.aspx">Shop</a>

<a href="About.aspx">About</a>

<a href="Contact.aspx">Contact</a>

<a href="Login.aspx">Login</a>

</div>

<div class="col-lg-4 mb-4">

<h5>

Contact Info

</h5>

<p>

📍 Rajkot, Gujarat

</p>

<p>

📞 +91 98765 43210

</p>

<p>

📧 support@stylehub.com

</p>

<p>

🕒 Mon - Sat : 9 AM - 8 PM

</p>

</div>

</div>

<hr>

<div class="text-center">

<p class="mb-0">

© 2026 StyleHub. All Rights Reserved.

</p>

</div>

</div>

</footer>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>