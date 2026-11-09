<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Checkout.aspx.cs"
    Inherits="StyleHub.Checkout" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>StyleHub | Checkout</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet" />

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            background: #f8f8f6;
            font-family: 'Segoe UI', Arial, sans-serif;
            color: #102a43;
        }

        /* NAVBAR */

        .navbar {
            background: white;
            padding: 16px 6%;
            border-bottom: 1px solid #eeeeee;
        }

        .brand {
            text-decoration: none;
            color: #102a43;
            font-family: Georgia, serif;
            font-size: 30px;
            font-weight: bold;
        }

        .brand span {
            color: #c49a45;
        }

        .nav-link {
            color: #102a43 !important;
            margin-left: 22px;
            font-weight: 500;
        }

        .nav-link:hover {
            color: #c49a45 !important;
        }

        .nav-icon {
            color: #102a43;
            margin-left: 20px;
            font-size: 18px;
        }


        /* HEADER */

        .checkout-header {

            padding: 80px 20px;

            text-align: center;

            color: white;

            background:

                linear-gradient(
                    rgba(15, 23, 42, 0.78),
                    rgba(15, 23, 42, 0.78)
                ),

                url('https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1800&q=90');

            background-size: cover;

            background-position: center;

        }

        .checkout-header h1 {

            font-family: Georgia, serif;

            font-size: 52px;

            font-weight: bold;

            margin-bottom: 15px;

        }

        .checkout-header p {

            color: #e2e8f0;

            font-size: 17px;

        }


        /* CHECKOUT SECTION */

        .checkout-section {

            padding: 60px 0;

        }

        .checkout-box,

        .order-box {

            background: white;

            border-radius: 12px;

            padding: 30px;

            box-shadow: 0 8px 25px rgba(0, 0, 0, .06);

        }

        .checkout-box h3,

        .order-box h3 {

            font-family: Georgia, serif;

            margin-bottom: 25px;

        }


        /* FORM */

        .form-label {

            font-weight: 600;

            color: #102a43;

        }

        .form-control,

        .form-select {

            padding: 12px;

            border: 1px solid #d9e2ec;

            border-radius: 6px;

        }

        .form-control:focus,

        .form-select:focus {

            border-color: #c49a45;

            box-shadow: 0 0 0 3px rgba(196, 154, 69, .15);

        }


        /* PAYMENT */

        .payment-option {

            border: 1px solid #d9e2ec;

            padding: 15px;

            border-radius: 6px;

            margin-bottom: 12px;

            cursor: pointer;

        }

        .payment-option:hover {

            border-color: #c49a45;

            background: #fffdf7;

        }

        .payment-option input {

            margin-right: 10px;

        }


        /* ORDER SUMMARY */

        .order-product {

            display: flex;

            align-items: center;

            gap: 15px;

            padding-bottom: 18px;

            border-bottom: 1px solid #eeeeee;

            margin-bottom: 18px;

        }

        .order-product img {

            width: 70px;

            height: 80px;

            object-fit: cover;

            border-radius: 6px;

        }

        .order-product h6 {

            margin: 0;

            font-weight: 600;

        }

        .order-product p {

            margin: 5px 0 0;

            color: #64748b;

            font-size: 14px;

        }

        .summary-row {

            display: flex;

            justify-content: space-between;

            margin: 15px 0;

            color: #64748b;

        }

        .total-row {

            display: flex;

            justify-content: space-between;

            border-top: 1px solid #ddd;

            padding-top: 20px;

            margin-top: 20px;

            font-size: 21px;

            font-weight: bold;

        }

        .place-order-btn {

            width: 100%;

            border: none;

            background: #102a43;

            color: white;

            padding: 15px;

            border-radius: 6px;

            margin-top: 25px;

            font-size: 16px;

            font-weight: 600;

            cursor: pointer;

        }

        .place-order-btn:hover {

            background: #c49a45;

            color: #102a43;

        }


        /* FOOTER */

        footer {

            background: #102a43;

            color: white;

            padding: 45px 8% 20px;

            margin-top: 50px;

        }

        footer h4 {

            color: #d4af37;

            font-family: Georgia, serif;

        }

        footer p {

            color: #cbd5e1;

        }

        .copyright {

            border-top: 1px solid #334e68;

            margin-top: 30px;

            padding-top: 20px;

            text-align: center;

            color: #cbd5e1;

        }


        @media (max-width: 768px) {

            .checkout-header h1 {

                font-size: 38px;

            }

        }

    </style>

</head>


<body>

<form id="form1" runat="server">


    <!-- NAVBAR -->

    <nav class="navbar navbar-expand-lg">

        <div class="container-fluid">

            <a class="brand" href="Home.aspx">

                Style<span>Hub</span>

            </a>


            <button class="navbar-toggler"

                    type="button"

                    data-bs-toggle="collapse"

                    data-bs-target="#navbarNav">

                <span class="navbar-toggler-icon"></span>

            </button>


            <div class="collapse navbar-collapse"

                 id="navbarNav">


                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">

                        <a class="nav-link" href="Home.aspx">

                            Home

                        </a>

                    </li>


                    <li class="nav-item">

                        <a class="nav-link" href="Shop.aspx">

                            Shop

                        </a>

                    </li>


                    <li class="nav-item">

                        <a class="nav-link" href="About.aspx">

                            About

                        </a>

                    </li>


                    <li class="nav-item">

                        <a class="nav-link" href="Contact.aspx">

                            Contact

                        </a>

                    </li>

                </ul>


                <a href="Cart.aspx" class="nav-icon">

                    <i class="fa-solid fa-bag-shopping"></i>

                </a>

            </div>

        </div>

    </nav>


    <!-- HEADER -->

    <section class="checkout-header">

        <h1>

            Checkout

        </h1>

        <p>

            Complete your order securely and enjoy your StyleHub experience.

        </p>

    </section>


    <!-- CHECKOUT -->

    <section class="checkout-section">

        <div class="container">

            <div class="row g-4">


                <!-- CUSTOMER DETAILS -->

                <div class="col-lg-7">

                    <div class="checkout-box">

                        <h3>

                            <i class="fa-solid fa-location-dot"></i>

                            Delivery Information

                        </h3>


                        <div class="row g-3">


                            <div class="col-md-6">

                                <label class="form-label">

                                    Full Name

                                </label>

                                <asp:TextBox ID="txtName"

                                    runat="server"

                                    CssClass="form-control"

                                    placeholder="Enter your full name">

                                </asp:TextBox>

                            </div>


                            <div class="col-md-6">

                                <label class="form-label">

                                    Email Address

                                </label>

                                <asp:TextBox ID="txtEmail"

                                    runat="server"

                                    CssClass="form-control"

                                    TextMode="Email"

                                    placeholder="Enter your email">

                                </asp:TextBox>

                            </div>


                            <div class="col-md-6">

                                <label class="form-label">

                                    Phone Number

                                </label>

                                <asp:TextBox ID="txtPhone"

                                    runat="server"

                                    CssClass="form-control"

                                    placeholder="Enter phone number">

                                </asp:TextBox>

                            </div>


                            <div class="col-md-6">

                                <label class="form-label">

                                    Pincode

                                </label>

                                <asp:TextBox ID="txtPincode"

                                    runat="server"

                                    CssClass="form-control"

                                    placeholder="Enter pincode">

                                </asp:TextBox>

                            </div>


                            <div class="col-12">

                                <label class="form-label">

                                    Address

                                </label>

                                <asp:TextBox ID="txtAddress"

                                    runat="server"

                                    CssClass="form-control"

                                    TextMode="MultiLine"

                                    Rows="3"

                                    placeholder="Enter complete delivery address">

                                </asp:TextBox>

                            </div>


                            <div class="col-md-6">

                                <label class="form-label">

                                    City

                                </label>

                                <asp:TextBox ID="txtCity"

                                    runat="server"

                                    CssClass="form-control"

                                    placeholder="Enter city">

                                </asp:TextBox>

                            </div>


                            <div class="col-md-6">

                                <label class="form-label">

                                    State

                                </label>

                                <asp:TextBox ID="txtState"

                                    runat="server"

                                    CssClass="form-control"

                                    placeholder="Enter state">

                                </asp:TextBox>

                            </div>

                        </div>


                        <h3 class="mt-5">

                            <i class="fa-solid fa-credit-card"></i>

                            Payment Method

                        </h3>


                        <div class="payment-option">

                            <asp:RadioButton ID="rdoCOD"

                                runat="server"

                                GroupName="Payment"

                                Checked="true"

                                Text=" Cash on Delivery" />

                        </div>


                        <div class="payment-option">

                            <asp:RadioButton ID="rdoUPI"

                                runat="server"

                                GroupName="Payment"

                                Text=" UPI Payment" />

                        </div>


                        <div class="payment-option">

                            <asp:RadioButton ID="rdoCard"

                                runat="server"

                                GroupName="Payment"

                                Text=" Credit / Debit Card" />

                        </div>


                        <asp:Button ID="btnPlaceOrder"

                            runat="server"

                            Text="Place Order"

                            CssClass="place-order-btn"

                            OnClick="btnPlaceOrder_Click" />

                    </div>

                </div>


                <!-- ORDER SUMMARY -->

                <div class="col-lg-5">

                    <div class="order-box">

                        <h3>

                            Order Summary

                        </h3>


                       

                              

                        </div>


                     


                        



                       

                    </div>

                </div>


            </div>

        </div>

    </section>


    <!-- FOOTER -->

    <footer>

        <div class="row">

            <div class="col-md-4">

                <h4>StyleHub</h4>

                <p>

                    Premium fashion for your everyday lifestyle.

                </p>

            </div>


            <div class="col-md-4">

                <h4>Quick Links</h4>

                <p>Home</p>

                <p>Shop</p>

                <p>About</p>

                <p>Contact</p>

            </div>


            <div class="col-md-4">

                <h4>Contact</h4>

                <p>

                    support@stylehub.com

                </p>

                <p>

                    +91 98765 43210

                </p>

            </div>

        </div>


        <div class="copyright">

            © 2026 StyleHub. All Rights Reserved.

        </div>

    </footer>


</form>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">

</script>

</body>

</html>