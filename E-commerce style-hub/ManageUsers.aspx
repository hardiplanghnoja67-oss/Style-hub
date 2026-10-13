<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ManageUsers.aspx.cs"
    Inherits="StyleHub.ManageUsers" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Manage Users | StyleHub Admin</title>

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
                    <a href="AdminDashboard.aspx" class="sidebar-nav-link">
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
                    <a href="ManageUsers.aspx" class="sidebar-nav-link active">
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
                    <a href="AdminLogin.aspx" class="sidebar-nav-link logout-link">
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
                    <h1>Manage Users</h1>
                    <p class="sub">Customer Accounts &bull; View active members and account permissions</p>
                </div>
            </div>

            <div class="topbar-right">
                <a href="AdminDashboard.aspx" class="btn btn-sm btn-outline-dark px-3 rounded-pill me-2">
                    <i class="fas fa-chart-pie me-1"></i> Dashboard
                </a>
                <a href="home.aspx" target="_blank" class="btn-view-store">
                    <i class="fas fa-arrow-up-right-from-square"></i>
                    <span>Visit Store</span>
                </a>
                <div class="topbar-user">
                    <div class="topbar-user-avatar">
                        <i class="fas fa-user-shield"></i>
                    </div>
                </div>
            </div>
        </header>

        <!-- Page Body -->
        <main class="admin-body">
            <div class="admin-card">
                <div class="admin-card-header">
                    <h2 class="admin-card-title">
                        <i class="fas fa-users-gear"></i>
                        Registered Customers Directory
                    </h2>
                    <div class="d-flex gap-2">
                        <span class="badge bg-light text-dark border px-3 py-2 rounded-pill">Total: 3 Active Accounts</span>
                    </div>
                </div>

                <div class="admin-table-container table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CssClass="table admin-table table-hover align-middle">
                        <Columns>
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Fullname">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Fullname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                          
                            <asp:TemplateField HeaderText="Address">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                           
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt" CssClass="btn-action-edit me-1">Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_del" CssClass="btn-action-delete" OnClientClick="return confirm('Are you sure you want to delete this user?');">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

                <div class="mt-4 d-flex justify-content-between align-items-center">
                    <a href="AdminDashboard.aspx" class="btn btn-outline-secondary px-3 py-2 rounded-3">
                        <i class="fas fa-arrow-left me-1"></i> Back to Dashboard
                    </a>
                    <a href="ManageOrder.aspx" class="btn-admin-primary">
                        <i class="fas fa-receipt"></i> View Customer Orders
                    </a>
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