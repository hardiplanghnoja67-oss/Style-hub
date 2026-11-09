<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="MyOrders.aspx.cs"
    Inherits="StyleHub.MyOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>My Orders | StyleHub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <style>

        body{
            font-family:'Poppins',sans-serif;
            background:#FAF8F3;
        }

        .hero{
            background:linear-gradient(rgba(16,42,67,.85),rgba(16,42,67,.85)),
            url('Images/order-banner.jpg');
            background-size:cover;
            background-position:center;
            padding:100px 0;
            text-align:center;
            color:white;
        }

        .hero h1{
            font-size:60px;
            font-weight:700;
        }

        .hero p{
            font-size:20px;
            color:#f5f5f5;
        }

        .order-card{
            background:#fff;
            border-radius:20px;
            padding:25px;
            margin-bottom:25px;
            box-shadow:0 10px 30px rgba(0,0,0,.08);
            transition:.3s;
        }

        .order-card:hover{
            transform:translateY(-6px);
        }

        .order-img{
            width:120px;
            height:120px;
            border-radius:15px;
            object-fit:cover;
        }

        .status{
            padding:8px 20px;
            border-radius:30px;
            font-size:14px;
            font-weight:600;
        }

        .delivered{
            background:#D4EDDA;
            color:#155724;
        }

        .shipped{
            background:#CCE5FF;
            color:#004085;
        }

        .pending{
            background:#FFF3CD;
            color:#856404;
        }

        .btn-view{
            background:#102A43;
            color:white;
            padding:10px 25px;
            border-radius:30px;
            text-decoration:none;
            transition:.3s;
        }

        .btn-view:hover{
            background:#D4AF37;
            color:#102A43;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

<section class="hero">

    <div class="container">

        <h1>My Orders</h1>

        <p>
            Track your recent purchases and order status.
        </p>

    </div>

</section>

<div class="container py-5">
    <!-- Order Card 1 -->

<div class="order-card">

    <div class="row align-items-center">

        <div class="col-lg-2 col-md-3 text-center">

            <img src="Images/shirt.jpg"
                 class="order-img img-fluid"
                 alt="Product" />

        </div>

        <div class="col-lg-4 col-md-5">

            <h4 class="fw-bold">Premium Cotton Shirt</h4>

            <p class="text-muted mb-1">
                <strong>Order ID:</strong> SH2026001
            </p>

            <p class="text-muted mb-1">
                <strong>Order Date:</strong> 02 Aug 2026
            </p>

            <p class="fw-bold text-success">
                ₹1,499
            </p>

        </div>

        <div class="col-lg-3 col-md-2 text-center">

            <span class="status delivered">
                Delivered
            </span>

        </div>

        <div class="col-lg-3 col-md-2 text-end">

            <a href="ProductDetails.aspx" class="btn-view">
                View Details
            </a>

        </div>

    </div>

</div>

<!-- Order Card 2 -->

<div class="order-card">

    <div class="row align-items-center">

        <div class="col-lg-2 col-md-3 text-center">

            <img src="Images/jacket.jpg"
                 class="order-img img-fluid"
                 alt="Product" />

        </div>

        <div class="col-lg-4 col-md-5">

            <h4 class="fw-bold">Denim Jacket</h4>

            <p class="text-muted mb-1">
                <strong>Order ID:</strong> SH2026002
            </p>

            <p class="text-muted mb-1">
                <strong>Order Date:</strong> 01 Aug 2026
            </p>

            <p class="fw-bold text-success">
                ₹2,299
            </p>

        </div>

        <div class="col-lg-3 col-md-2 text-center">

            <span class="status shipped">
                Shipped
            </span>

        </div>

        <div class="col-lg-3 col-md-2 text-end">

            <a href="ProductDetails.aspx" class="btn-view">
                View Details
            </a>

        </div>

    </div>

</div>

<!-- Order Card 3 -->

<div class="order-card">

    <div class="row align-items-center">

        <div class="col-lg-2 col-md-3 text-center">

            <img src="Images/shoes.jpg"
                 class="order-img img-fluid"
                 alt="Product" />

        </div>

        <div class="col-lg-4 col-md-5">

            <h4 class="fw-bold">Classic Sneakers</h4>

            <p class="text-muted mb-1">
                <strong>Order ID:</strong> SH2026003
            </p>

            <p class="text-muted mb-1">
                <strong>Order Date:</strong> 30 Jul 2026
            </p>

            <p class="fw-bold text-success">
                ₹3,499
            </p>

        </div>

        <div class="col-lg-3 col-md-2 text-center">

            <span class="status pending">
                Pending
            </span>

        </div>

        <div class="col-lg-3 col-md-2 text-end">

            <a href="ProductDetails.aspx" class="btn-view">
                View Details
            </a>

        </div>

    </div>

</div>
    </div>

<!-- Footer -->

<footer style="background:#102A43; color:#fff; padding:50px 0 20px; margin-top:50px;">

    <div class="container">

        <div class="row">

            <div class="col-md-4 mb-4">

                <h3 class="fw-bold">
                    Style<span style="color:#D4AF37;">Hub</span>
                </h3>

                <p class="text-light">
                    Discover premium fashion with StyleHub. We bring you the latest
                    trends, quality products, and a luxurious shopping experience.
                </p>

            </div>

            <div class="col-md-4 mb-4">

                <h5 style="color:#D4AF37;">Quick Links</h5>

                <ul class="list-unstyled">

                    <li><a href="Home.aspx" class="text-light text-decoration-none">Home</a></li>

                    <li><a href="Shop.aspx" class="text-light text-decoration-none">Shop</a></li>

                    <li><a href="Cart.aspx" class="text-light text-decoration-none">Cart</a></li>

                    <li><a href="Contact.aspx" class="text-light text-decoration-none">Contact</a></li>

                </ul>

            </div>

            <div class="col-md-4 mb-4">

                <h5 style="color:#D4AF37;">Contact Us</h5>

                <p class="mb-2">
                    <i class="fas fa-map-marker-alt me-2"></i> Rajkot, Gujarat
                </p>

                <p class="mb-2">
                    <i class="fas fa-phone me-2"></i> +91 98765 43210
                </p>

                <p>
                    <i class="fas fa-envelope me-2"></i> support@stylehub.com
                </p>

            </div>

        </div>

        <hr style="border-color:rgba(255,255,255,.2);" />

        <div class="text-center">

            <p class="mb-0">
                © 2026 <strong>StyleHub</strong>. All Rights Reserved.
            </p>

        </div>

    </div>

</footer>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>