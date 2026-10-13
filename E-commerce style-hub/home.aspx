<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs"
    Inherits="StyleHub.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">

    <title>StyleHub | Premium Fashion Store</title>
    <meta name="description" content="Discover premium fashion collections at StyleHub. Shop the latest trends in clothing, footwear and accessories." />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&family=Playfair+Display:ital,wght@0,600;0,700;0,800;1,600&display=swap" rel="stylesheet" />

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <!-- StyleHub Modern Design System -->
    <link rel="stylesheet" href="stylehub-modern.css" />

</head>

<body>

<form id="form1" runat="server">

<!-- ═══════════════════════════════════════════════════════════
     NAVBAR
════════════════════════════════════════════════════════════ -->
<nav class="sh-navbar navbar navbar-expand-lg">

    <div class="container-fluid">

        <a class="sh-brand" href="Home.aspx">
            Style<span>Hub</span>
        </a>

        <!-- Hamburger -->
        <button class="sh-toggler navbar-toggler border-0"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav ms-auto align-items-center gap-1">

                <li class="nav-item">
                    <a class="sh-nav-link nav-link px-3" href="Home.aspx">Home</a>
                </li>

                <li class="nav-item">
                    <a class="sh-nav-link nav-link px-3" href="Shop.aspx">Shop</a>
                </li>

                <li class="nav-item">
                    <a class="sh-nav-link nav-link px-3" href="About.aspx">About</a>
                </li>

                <li class="nav-item">
                    <a class="sh-nav-link nav-link px-3" href="Contact.aspx">Contact</a>
                </li>

                <li class="nav-item">
                    <a class="sh-nav-link nav-link px-3" href="Login.aspx">Login</a>
                </li>

                <li class="nav-item">
                    <a class="sh-nav-link nav-link px-3" href="Registration.aspx">Register</a>
                </li>

            </ul>

            <!-- Icon bar -->
            <div class="d-flex align-items-center gap-2 ms-3">

                <a href="Cart.aspx" class="sh-nav-icon" title="Cart">
                    <i class="fa-solid fa-bag-shopping"></i>
                </a>

                <a href="Wishlist.aspx" class="sh-nav-icon" title="Wishlist">
                    <i class="fa-regular fa-heart"></i>
                </a>

            </div>

        </div>

    </div>

</nav>


<!-- ═══════════════════════════════════════════════════════════
     HERO
════════════════════════════════════════════════════════════ -->
<section class="sh-hero">

    <div class="sh-hero-content">

        <span class="sh-hero-label">New Collection 2026</span>

        <h1 class="sh-display">
            Discover Your<br/>
            <em>Signature Style</em>
        </h1>

        <p>
            Explore premium fashion collections carefully
            designed for those who believe style is a lifestyle.
        </p>

        <div class="sh-hero-btns">

            <a href="Shop.aspx" class="sh-btn sh-btn-primary">
                Explore Collection
                <i class="fa-solid fa-arrow-right"></i>
            </a>

            <a href="About.aspx" class="sh-btn sh-btn-outline">
                Our Story
            </a>

        </div>

    </div>

</section>


<!-- ═══════════════════════════════════════════════════════════
     FEATURE STRIP
════════════════════════════════════════════════════════════ -->
<section class="sh-features">

    <div class="container">

        <div class="row g-0">

            <div class="col-6 col-md-3 reveal delay-1">
                <div class="sh-feature-item">
                    <div class="sh-feature-icon">
                        <i class="fa-solid fa-gem"></i>
                    </div>
                    <div class="sh-feature-text">
                        <h6>Premium Quality</h6>
                        <small>Carefully selected products</small>
                    </div>
                </div>
            </div>

            <div class="col-6 col-md-3 reveal delay-2">
                <div class="sh-feature-item">
                    <div class="sh-feature-icon">
                        <i class="fa-solid fa-truck-fast"></i>
                    </div>
                    <div class="sh-feature-text">
                        <h6>Free Shipping</h6>
                        <small>On orders above ₹999</small>
                    </div>
                </div>
            </div>

            <div class="col-6 col-md-3 reveal delay-3">
                <div class="sh-feature-item">
                    <div class="sh-feature-icon">
                        <i class="fa-solid fa-rotate-left"></i>
                    </div>
                    <div class="sh-feature-text">
                        <h6>Easy Returns</h6>
                        <small>30 days return policy</small>
                    </div>
                </div>
            </div>

            <div class="col-6 col-md-3 reveal delay-4">
                <div class="sh-feature-item">
                    <div class="sh-feature-icon">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>
                    <div class="sh-feature-text">
                        <h6>Secure Payments</h6>
                        <small>100% safe checkout</small>
                    </div>
                </div>
            </div>

        </div>

    </div>

</section>


<!-- ═══════════════════════════════════════════════════════════
     SHOP BY CATEGORY
════════════════════════════════════════════════════════════ -->
<section class="sh-section">
<div class="container">

    <div class="sh-section-head reveal">
        <span class="sh-label">Explore Collections</span>
        <h2>Shop By Category</h2>
        <p>Find your perfect style from our curated collections.</p>
    </div>

    <div class="row g-4">

        <div class="col-6 col-md-3 reveal delay-1">
            <div class="sh-category-card">
                <img src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=700&q=85" alt="Women's Fashion" loading="lazy" />
                <div class="sh-category-overlay">
                    <h4>Women</h4>
                    <a href="Shop.aspx">
                        Explore Collection
                        <i class="fa-solid fa-arrow-right fa-xs"></i>
                    </a>
                </div>
            </div>
        </div>

        <div class="col-6 col-md-3 reveal delay-2">
            <div class="sh-category-card">
                <img src="https://images.unsplash.com/photo-1617137968427-85924c800a22?auto=format&fit=crop&w=700&q=85" alt="Men's Fashion" loading="lazy" />
                <div class="sh-category-overlay">
                    <h4>Men</h4>
                    <a href="Shop.aspx">
                        Explore Collection
                        <i class="fa-solid fa-arrow-right fa-xs"></i>
                    </a>
                </div>
            </div>
        </div>

        <div class="col-6 col-md-3 reveal delay-3">
            <div class="sh-category-card">
                <img src="https://images.unsplash.com/photo-1519238263530-99bdd11df2ea?auto=format&fit=crop&w=700&q=85" alt="Kids Fashion" loading="lazy" />
                <div class="sh-category-overlay">
                    <h4>Kids</h4>
                    <a href="Shop.aspx">
                        Explore Collection
                        <i class="fa-solid fa-arrow-right fa-xs"></i>
                    </a>
                </div>
            </div>
        </div>

        <div class="col-6 col-md-3 reveal delay-4">
            <div class="sh-category-card">
                <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85" alt="Footwear" loading="lazy" />
                <div class="sh-category-overlay">
                    <h4>Footwear</h4>
                    <a href="Shop.aspx">
                        Explore Collection
                        <i class="fa-solid fa-arrow-right fa-xs"></i>
                    </a>
                </div>
            </div>
        </div>

    </div>

</div>
</section>




<!-- ═══════════════════════════════════════════════════════════
     OFFER BANNER
════════════════════════════════════════════════════════════ -->
<div class="container px-3 px-md-4">
<div class="sh-offer reveal">

    <div class="sh-offer-content">

        <span class="sh-label">Limited Time Offer</span>

        <h2 class="sh-display">
            Elevate Your Style.<br/>
            <em>Save 20% Today.</em>
        </h2>

        <p>
            Discover premium fashion pieces designed
            to make every look unforgettable.
        </p>

        <div class="sh-offer-code">
            <span>Use Code:</span>
            <strong>STYLE20</strong>
        </div>

        <a href="Shop.aspx" class="sh-btn sh-btn-primary">
            Explore Collection
            <i class="fa-solid fa-arrow-right"></i>
        </a>

    </div>

    <div class="sh-offer-badge">
        <strong>20%</strong>
        <span>OFF</span>
        <small>FIRST ORDER</small>
    </div>

</div>
</div>


<!-- ═══════════════════════════════════════════════════════════
     NEWSLETTER
════════════════════════════════════════════════════════════ -->
<section class="sh-newsletter">

    <div class="reveal">
        <span class="sh-label">Stay Connected</span>
        <h2>Stay In Style</h2>
        <p>
            Subscribe to receive updates about new collections
            and exclusive offers.
        </p>
    </div>

    <form class="sh-newsletter-form reveal" onsubmit="return false;">
        <input type="email" placeholder="Enter your email address" />
        <button type="submit">
            Subscribe
            <i class="fa-solid fa-paper-plane ms-1"></i>
        </button>
    </form>

</section>


<!-- ═══════════════════════════════════════════════════════════
     FOOTER
════════════════════════════════════════════════════════════ -->
<footer class="sh-footer">

    <div class="container">

        <div class="row g-5">

            <div class="col-md-4">
                <div class="sh-footer-brand">Style<span>Hub</span></div>
                <p>
                    A premium fashion and lifestyle destination
                    created for modern individuals who believe
                    that style is more than clothing — it's an identity.
                </p>
                <div class="sh-footer-social">
                    <a href="#" class="sh-social-icon" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="sh-social-icon" title="Instagram"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="sh-social-icon" title="Twitter"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="sh-social-icon" title="Pinterest"><i class="fab fa-pinterest-p"></i></a>
                </div>
            </div>

            <div class="col-6 col-md-2">
                <h5>Quick Links</h5>
                <a class="sh-footer-link" href="Home.aspx">Home</a>
                <a class="sh-footer-link" href="Shop.aspx">Shop</a>
                <a class="sh-footer-link" href="About.aspx">About Us</a>
                <a class="sh-footer-link" href="Contact.aspx">Contact</a>
            </div>

            <div class="col-6 col-md-2">
                <h5>Account</h5>
                <a class="sh-footer-link" href="Login.aspx">Login</a>
                <a class="sh-footer-link" href="Registration.aspx">Register</a>
                <a class="sh-footer-link" href="Cart.aspx">Cart</a>
                <a class="sh-footer-link" href="MyOrders.aspx">My Orders</a>
            </div>

            <div class="col-md-4">
                <h5>Contact Us</h5>
                <div class="sh-footer-info">
                    <p>
                        <i class="fa-solid fa-location-dot"></i>
                        StyleHub Fashion Store, Ahmedabad, Gujarat, India
                    </p>
                    <p>
                        <i class="fa-solid fa-envelope"></i>
                        support@stylehub.com
                    </p>
                    <p>
                        <i class="fa-solid fa-phone"></i>
                        +91 98765 43210
                    </p>
                </div>
            </div>

        </div>

        <div class="sh-copyright">
            <p>© 2026 StyleHub. All Rights Reserved.</p>
            <p>Designed with <i class="fa-solid fa-heart" style="color:var(--accent);"></i> for fashion lovers.</p>
        </div>

    </div>

</footer>

</form>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="stylehub-modern.js"></script>

</body>
</html>