<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Shop.aspx.cs"
    Inherits="StyleHub.Shop" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">

    <title>StyleHub | Shop Our Collection</title>
    <meta name="description" content="Browse StyleHub's premium fashion collection. Shop the latest clothing, footwear and accessories." />
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
        <button class="sh-toggler navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-expanded="false">
            <span></span><span></span><span></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto align-items-center gap-1">
                <li class="nav-item"><a class="sh-nav-link nav-link px-3" href="Home.aspx">Home</a></li>
                <li class="nav-item"><a class="sh-nav-link nav-link px-3" href="Shop.aspx">Shop</a></li>
                <li class="nav-item"><a class="sh-nav-link nav-link px-3" href="About.aspx">About</a></li>
                <li class="nav-item"><a class="sh-nav-link nav-link px-3" href="Contact.aspx">Contact</a></li>
                <li class="nav-item"><a class="sh-nav-link nav-link px-3" href="Login.aspx">Login</a></li>
            </ul>
            <div class="d-flex align-items-center gap-2 ms-3">
                <a href="Cart.aspx" class="sh-nav-icon" title="Cart"><i class="fa-solid fa-bag-shopping"></i></a>
                <a href="Wishlist.aspx" class="sh-nav-icon" title="Wishlist"><i class="fa-regular fa-heart"></i></a>
            </div>
        </div>
    </div>
</nav>


<!-- PAGE HEADER -->
<section class="sh-page-header">
    <h1>Shop Our Collection</h1>
    <p>Discover premium fashion designed for your unique style.</p>
    <div class="sh-breadcrumb">
        <a href="Home.aspx">Home</a>
        <span>/</span>
        <span>Shop</span>
    </div>
</section>


<!-- FILTER BAR -->
<div class="container">

    <div class="sh-filter-bar reveal">

        <div class="row g-3 align-items-center">

            <div class="col-md-5">
                <div class="sh-search-wrap">
                    <input type="text" placeholder="Search products..." />
                    <i class="fa-solid fa-search"></i>
                </div>
            </div>

            <div class="col-md-3">
                <select class="sh-filter-select">
                    <option>All Categories</option>
                    <option>Women's Fashion</option>
                    <option>Men's Fashion</option>
                    <option>Kids Fashion</option>
                    <option>Footwear</option>
                </select>
            </div>

            <div class="col-md-2">
                <select class="sh-filter-select">
                    <option>All Prices</option>
                    <option>Under ₹999</option>
                    <option>₹999 – ₹1999</option>
                    <option>Above ₹1999</option>
                </select>
            </div>

            <div class="col-md-2">
                <select class="sh-filter-select">
                    <option>Sort By</option>
                    <option>Newest</option>
                    <option>Price: Low to High</option>
                    <option>Price: High to Low</option>
                </select>
            </div>

        </div>

    </div>


    <!-- PRODUCT GRID -->
    <div class="row pb-5">
        <div class="col-12 text-center mb-4">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#333333"></asp:Label>
        </div>
        <div class="col-12">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="sh-datalist-table w-100" OnItemCommand="DataList1_ItemCommand">
                <ItemStyle VerticalAlign="Top" Width="25%" />
                <ItemTemplate>
                    <div class="sh-product-card">
                        <div class="sh-product-image">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' AlternateText='<%# Eval("ProductName") %>' onerror="this.onerror=null;this.src='https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=85';" />
                            <span class="sh-badge"><%# Eval("Category") != null && !string.IsNullOrEmpty(Eval("Category").ToString()) ? Eval("Category") : "Bestseller" %></span>
                            <button type="button" class="sh-wishlist-btn" title="Add to Wishlist" onclick="this.classList.toggle('active'); return false;">
                                <i class="fa-regular fa-heart"></i>
                            </button>
                            <div class="sh-product-actions">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="cmd_vd" href="ProductDetails.aspx" CommandArgument='<%# Eval("Id") %>' CssClass="sh-view-btn">View Details</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="cmd_cart" href="Cart.aspx" CommandArgument='<%# Eval("Id") %>' CssClass="sh-cart-btn">
                                    <i class="fa-solid fa-bag-shopping"></i> Add
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="sh-product-info">
                            <h5 class="sh-product-name"><%# Eval("ProductName") %></h5>
                            <div class="sh-product-rating">
                                <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <span>(128)</span>
                            </div>
                            <div class="sh-product-price">
                                &#8377;<%# string.Format("{0:N0}", Eval("Price")) %><span class="sh-old-price">&#8377;<%# string.Format("{0:N0}", Convert.ToDouble(Eval("Price")) * 1.25) %></span></div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>

</div>


<!-- FOOTER -->
<footer class="sh-footer">
    <div class="container">
        <div class="row g-5">
            <div class="col-md-4">
                <div class="sh-footer-brand">Style="col-md-4">
                <div class="sh-footer-brand">Style<span>Hub</span></div>
                <p>Premium fashion for your everyday lifestyle.</p>
                <div class="sh-footer-social">
                    <a href="#" class="sh-social-icon"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="sh-social-icon"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="sh-social-icon"><i class="fab fa-twitter"></i></a>
                </div>
            </div>
            <div class="col-6 col-md-2">
                <h5>Quick Links</h5>
                <a class="sh-footer-link" href="Home.aspx">Home</a>
                <a class="sh-footer-link" href="Shop.aspx">Shop</a>
                <a class="sh-footer-link" href="About.aspx">About</a>
                <a class="sh-footer-link" href="Contact.aspx">Contact</a>
            </div>
            <div class="col-6 col-md-2">
                <h5>Help</h5>
                <a class="sh-footer-link" href="Cart.aspx">Cart</a>
                <a class="sh-footer-link" href="MyOrders.aspx">My Orders</a>
                <a class="sh-footer-link" href="Login.aspx">Login</a>
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