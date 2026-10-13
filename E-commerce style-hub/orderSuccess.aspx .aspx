<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="OrderSuccess.aspx.cs"
    Inherits="StyleHub.OrderSuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Order Success | StyleHub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

    <style>

        body{
            background:#F5F7FA;
            font-family:'Segoe UI',sans-serif;
        }

        .success-section{
            min-height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            padding:60px 20px;
            background:linear-gradient(135deg,#E8F8F5,#F5F7FA);
        }

        .success-card{
            background:#fff;
            width:100%;
            max-width:700px;
            border-radius:25px;
            padding:50px;
            text-align:center;
            box-shadow:0 15px 40px rgba(0,0,0,.12);
        }

        .success-icon{
            width:120px;
            height:120px;
            margin:auto;
            border-radius:50%;
            background:#28A745;
            display:flex;
            align-items:center;
            justify-content:center;
            color:white;
            font-size:60px;
            margin-bottom:30px;
        }

        h1{
            color:#102A43;
            font-weight:700;
        }

        .order-id{
            display:inline-block;
            background:#102A43;
            color:#fff;
            padding:10px 25px;
            border-radius:30px;
            margin:20px 0;
            font-weight:bold;
        }

        .info-box{
            background:#F8F9FA;
            border-radius:15px;
            padding:20px;
            margin-top:25px;
        }

        .btn-shop{
            background:#102A43;
            color:white;
            padding:12px 30px;
            border-radius:30px;
            text-decoration:none;
            margin:10px;
            display:inline-block;
        }

        .btn-shop:hover{
            background:#0b1d30;
            color:white;
        }

        .btn-orders{
            background:#D4AF37;
            color:#102A43;
            padding:12px 30px;
            border-radius:30px;
            text-decoration:none;
            margin:10px;
            display:inline-block;
            font-weight:600;
        }

        .btn-orders:hover{
            background:#c79d20;
            color:#102A43;
        }

    </style>

</head>

<body>

<form runat="server">

<section class="success-section">

<div class="success-card">

<div class="success-icon">

<i class="fas fa-check"></i>

</div>

<h1>Order Placed Successfully!</h1>

<p class="text-muted fs-5">

Thank you for shopping with <b>StyleHub</b>.

Your order has been placed successfully.

</p>

<div class="order-id">

Order ID : SH2026001

</div>

<div class="info-box">

<p><strong>Estimated Delivery:</strong> 3 - 5 Business Days</p>

<p><strong>Payment Status:</strong> Successful ✅</p>

<p><strong>Shipping:</strong> Free Delivery</p>

</div>
            <div class="mt-5">

            <a href="Shop.aspx" class="btn-shop">
                <i class="fas fa-shopping-bag me-2"></i>
                Continue Shopping
            </a>

            <a href="MyOrders.aspx" class="btn-orders">
                <i class="fas fa-box me-2"></i>
                View My Orders
            </a>

        </div>

        <hr class="my-5" />

        <div class="row text-center">

            <div class="col-md-4 mb-3">

                <i class="fas fa-truck fa-2x text-primary mb-3"></i>

                <h5>Fast Delivery</h5>

                <p class="text-muted">
                    Your order will be delivered within 3–5 business days.
                </p>

            </div>

            <div class="col-md-4 mb-3">

                <i class="fas fa-shield-alt fa-2x text-success mb-3"></i>

                <h5>Secure Payment</h5>

                <p class="text-muted">
                    Your payment has been processed securely.
                </p>

            </div>

            <div class="col-md-4 mb-3">

                <i class="fas fa-headset fa-2x text-warning mb-3"></i>

                <h5>24/7 Support</h5>

                <p class="text-muted">
                    We're always here to help you anytime.
                </p>

            </div>

        </div>

        <div class="mt-4">

            <h4 class="fw-bold text-success">
                Thank You for Choosing StyleHub ❤️
            </h4>

            <p class="text-muted">
                We appreciate your trust in us and hope you enjoy your purchase.
            </p>

        </div>

    </div>

</section>

<footer style="background:#102A43;color:white;padding:20px 0;">

    <div class="container text-center">

        <p class="mb-1">
            © 2026 <strong>StyleHub</strong>. All Rights Reserved.
        </p>

        <small style="color:#D4AF37;">
            Premium Fashion • Trusted Shopping • Fast Delivery
        </small>

    </div>

</footer>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>