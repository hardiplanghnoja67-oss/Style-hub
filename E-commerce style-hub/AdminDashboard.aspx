<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AdminDashboard.aspx.cs"
    Inherits="StyleHub.AdminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Dashboard | StyleHub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <link rel="stylesheet" href="admin-modern.css" />
</head>

<body>
<form id="form1" runat="server">

<div class="admin-wrapper">

    <!-- Mobile Overlay Backdrop -->
    <div class="sidebar-overlay" id="sidebarOverlay"></div>

    <!-- SIDEBAR NAVIGATION -->
    <aside class="admin-sidebar" id="adminSidebar">
        <!-- Brand Header -->
        <div class="sidebar-brand">
            <a href="AdminDashboard.aspx" class="brand-link">
                <div class="brand-icon">
                    <i class="fas fa-crown"></i>
                </div>
                <div class="brand-text">
                    <h2>StyleHub</h2>
                    <span>Admin Portal</span>
                </div>
            </a>
            <button type="button" class="sidebar-close-btn" id="sidebarClose" aria-label="Close sidebar">
                <i class="fas fa-times"></i>
            </button>
        </div>

        <!-- Admin Profile Snippet -->
        <div class="sidebar-profile">
            <div class="sidebar-profile-avatar">
                <i class="fas fa-user-shield"></i>
                <div class="status-indicator" title="Online"></div>
            </div>
            <div class="sidebar-profile-info">
                <h6 class="sidebar-profile-name">Administrator</h6>
                <p class="sidebar-profile-role">Super Admin</p>
            </div>
        </div>

        <!-- Menu Links -->
        <div class="sidebar-nav">
            <p class="nav-section-title">Core Management</p>
            <ul>
                <li>
                    <a href="AdminDashboard.aspx" class="sidebar-nav-link active">
                        <i class="fas fa-chart-pie"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="AddCategory.aspx" class="sidebar-nav-link">
                        <i class="fas fa-layer-group"></i>
                        <span>Add Category</span>
                    </a>
                </li>

                <li>
                    <a href="ManageProduct.aspx" class="sidebar-nav-link">
                        <i class="fas fa-boxes-stacked"></i>
                        <span>Manage Products</span>
                    </a>
                </li>
                <li>
                    <a href="ManageOrder.aspx" class="sidebar-nav-link">
                        <i class="fas fa-shopping-bag"></i>
                        <span>Manage Orders</span>
                    </a>
                </li>
                <li>
                    <a href="ManageUsers.aspx" class="sidebar-nav-link">
                        <i class="fas fa-users-gear"></i>
                        <span>Manage Users</span>
                    </a>
                </li>
            </ul>

            <p class="nav-section-title">Store &amp; System</p>
            <ul>
                <li>
                    <a href="home.aspx" target="_blank" class="sidebar-nav-link">
                        <i class="fas fa-store"></i>
                        <span>View Live Store</span>
                    </a>
                </li>
                <li>
                    <a href="AdminLogin.aspx?logout=1" class="sidebar-nav-link logout-link">
                        <i class="fas fa-arrow-right-from-bracket"></i>
                        <span>Logout</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="sidebar-footer">
            StyleHub Control Center &copy; 2026
        </div>
    </aside>

    <!-- MAIN CONTENT AREA -->
    <div class="admin-main">
        <!-- Topbar Header -->
        <header class="admin-topbar">
            <div class="topbar-left">
                <button type="button" class="sidebar-toggle-btn" id="sidebarToggle" title="Toggle Sidebar">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="breadcrumb-area">
                    <h1>Dashboard Overview</h1>
                    <p class="sub">Welcome back! Here is what's happening with your store today.</p>
                </div>
            </div>

            <div class="topbar-right">
                <a href="home.aspx" target="_blank" class="btn-view-store">
                    <i class="fas fa-arrow-up-right-from-square"></i>
                    <span>Visit Store</span>
                </a>

                <div class="topbar-user">
                    <div class="topbar-user-avatar">
                        <i class="fas fa-user-shield"></i>
                    </div>
                    <div>
                        <div class="topbar-user-name">Admin</div>
                        <div class="topbar-user-tag">Online</div>
                    </div>
                </div>
            </div>
        </header>

        <!-- Admin Page Body -->
        <main class="admin-body">
            <!-- Metric Stats Cards Row -->
            <div class="row g-4 mb-4">
                <!-- Total Products -->
                <div class="col-xl-3 col-md-6">
                    <div class="stat-card stat-products">
                        <div class="stat-content">
                            <h6>Total Products</h6>
                            <h3>120</h3>
                            <p><i class="fas fa-arrow-trend-up me-1"></i> +12 this month</p>
                        </div>
                        <div class="stat-icon bg-stat-products">
                            <i class="fas fa-box-open"></i>
                        </div>
                    </div>
                </div>

                <!-- Total Orders -->
                <div class="col-xl-3 col-md-6">
                    <div class="stat-card stat-orders">
                        <div class="stat-content">
                            <h6>Total Orders</h6>
                            <h3>85</h3>
                            <p><i class="fas fa-arrow-trend-up me-1"></i> +8 today</p>
                        </div>
                        <div class="stat-icon bg-stat-orders">
                            <i class="fas fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Total Users -->
                <div class="col-xl-3 col-md-6">
                    <div class="stat-card stat-users">
                        <div class="stat-content">
                            <h6>Registered Users</h6>
                            <h3>350</h3>
                            <p><i class="fas fa-user-plus me-1"></i> +24 new accounts</p>
                        </div>
                        <div class="stat-icon bg-stat-users">
                            <i class="fas fa-users"></i>
                        </div>
                    </div>
                </div>

                <!-- Total Revenue -->
                <div class="col-xl-3 col-md-6">
                    <div class="stat-card stat-revenue">
                        <div class="stat-content">
                            <h6>Total Revenue</h6>
                            <h3>2,45,000</h3>
                            <p><i class="fas fa-arrow-trend-up me-1"></i> +18% vs last month</p>
                        </div>
                        <div class="stat-icon bg-stat-revenue">
                            <i class="fas fa-indian-rupee-sign"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Quick Action Row -->
            <div class="row mb-4">
                <div class="col-12">
                    <div class="admin-card py-3">
                        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3">
                            <div class="d-flex align-items-center gap-2">
                                <i class="fas fa-bolt text-warning fs-5"></i>
                                <span class="fw-semibold">Quick Actions:</span>
                            </div>
                            <div class="d-flex flex-wrap gap-2">
                                <a href="ManageProduct.aspx?openAdd=1" class="btn-admin-primary">
                                    <i class="fas fa-plus-circle"></i> Add New Product
                                </a>
                                <a href="ManageProduct.aspx" class="btn-admin-gold">
                                    <i class="fas fa-boxes-stacked"></i> View Inventory
                                </a>
                                <a href="ManageOrder.aspx" class="btn-admin-primary">
                                    <i class="fas fa-receipt"></i> Process Orders
                                </a>
                                <a href="ManageUsers.aspx" class="btn-admin-primary">
                                    <i class="fas fa-user-check"></i> Customer Accounts
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Recent Activity Table -->
            <div class="admin-card">
                <div class="admin-card-header">
                    <h2 class="admin-card-title">
                        <i class="fas fa-clock-rotate-left"></i>
                        Recent Order Activity
                    </h2>
                    <a href="ManageOrder.aspx" class="btn btn-sm btn-outline-dark px-3 rounded-pill">
                        View All Orders <i class="fas fa-arrow-right ms-1"></i>
                    </a>
                </div>

                <div class="admin-table-container table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table admin-table table-hover align-middle mb-0">
                        <Columns>
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Order No">
                                <ItemTemplate>
                                    <span class="fw-semibold text-primary"><%# Eval("OrderNumber") %></span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Customer Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("CustomerName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Item Purchased">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductDetails") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Amount">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# "₹" + Eval("TotalAmount") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <span class="badge-status badge-status-paid"><%# Eval("DeliveryStatus") %></span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt" CssClass="btn-action-view">View</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </main>

        <!-- Admin Footer -->
        <footer class="admin-footer">
            <span>&copy; 2026 <strong>StyleHub Admin Control Center</strong>. All rights reserved.</span>
            <span>Version 2.0 &bull; Secure Portal</span>
        </footer>
    </div>

</div>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="admin-modern.js"></script>
</body>
</html>
