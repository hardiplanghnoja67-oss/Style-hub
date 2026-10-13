<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AddCategory.aspx.cs"
    Inherits="StyleHub.AddCategory" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Add Category | StyleHub Admin</title>

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
                            <a href="AddCategory.aspx" class="sidebar-nav-link active">
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
                            <h1>Add Category</h1>
                            <p class="sub">Catalog Setup &bull; Create and manage store product categories</p>
                        </div>
                    </div>

                    <div class="topbar-right">
                        <a href="ManageProduct.aspx?openAdd=1" class="btn btn-sm btn-outline-dark px-3 rounded-pill me-2">
                            <i class="fas fa-plus-circle me-1"></i>Add Product
                </a>
                        <a href="ManageProduct.aspx" class="btn btn-sm btn-outline-dark px-3 rounded-pill me-2">
                            <i class="fas fa-boxes-stacked me-1"></i>View Products
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
                    <!-- Alert / Notification Message -->
                    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="mb-4">
                        <div class="alert alert-dismissible fade show d-flex align-items-center" id="divAlert" runat="server" role="alert">
                            <i id="alertIcon" runat="server" class="fas fa-check-circle me-2 fs-5"></i>
                            <div>
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </div>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    </asp:Panel>

                    <div class="row g-4">
                        <!-- FORM CARD: ADD CATEGORY -->
                        <div class="col-xl-5 col-lg-6">
                            <div class="admin-card h-100">
                                <div class="admin-card-header">
                                    <h2 class="admin-card-title">
                                        <i class="fas fa-folder-plus text-warning"></i>
                                        Category Information
                            </h2>
                                    <span class="text-muted small">* Required</span>
                                </div>

                                <div class="row g-3">
                                    <!-- Category Name -->
                                    <div class="col-12">
                                        <label class="admin-form-label">
                                            <i class="fas fa-tag me-1 text-muted"></i>Category Name *
                               
                                        </label>
                                        <asp:TextBox ID="txtCategoryName"
                                            runat="server"
                                            CssClass="form-control admin-form-control"
                                            placeholder="e.g. Footwear, Men, Accessories">
                                </asp:TextBox>
                                    </div>

                                    <!-- Status -->
                                    <div class="col-12">
                                        <label class="admin-form-label">
                                            <i class="fas fa-toggle-on me-1 text-muted"></i>Status
                               
                                        </label>
                                        <asp:DropDownList ID="ddlStatus"
                                            runat="server"
                                            CssClass="form-select admin-form-control">
                                            <asp:ListItem Text="Active" Value="Active" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <!-- Description -->
                                    <div class="col-12">
                                        <label class="admin-form-label">
                                            <i class="fas fa-align-left me-1 text-muted"></i>Description
                               
                                        </label>
                                        <asp:TextBox ID="txtDescription"
                                            runat="server"
                                            CssClass="form-control admin-form-control"
                                            TextMode="MultiLine"
                                            Rows="4"
                                            placeholder="Brief category description or collection notes...">
                                </asp:TextBox>
                                    </div>

                                    <!-- Action Buttons -->
                                    <div class="col-12 text-center pt-3 border-top mt-4">
                                        <asp:Button ID="btnSave"
                                            runat="server"
                                            Text="Save Category"
                                            CssClass="btn-admin-gold px-4 py-2 me-2"
                                            OnClick="btnSave_Click" />

                                        <asp:Button ID="btnReset"
                                            runat="server"
                                            Text="Reset Form"
                                            CssClass="btn btn-outline-secondary px-4 py-2 rounded-3"
                                            CausesValidation="false"
                                            OnClick="btnReset_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- TABLE CARD: EXISTING CATEGORIES -->
                        <div class="col-xl-7 col-lg-6">
                            <div class="admin-card h-100">
                                <div class="admin-card-header">
                                    <h2 class="admin-card-title">
                                        <i class="fas fa-list-check text-primary"></i>
                                        Existing Categories
                            </h2>
                                    <asp:Label ID="lblCategoryCount" runat="server" CssClass="badge bg-light text-dark border px-3 py-2 rounded-pill" Text="0 Categories"></asp:Label>
                                </div>

                                <div class="admin-table-container table-responsive">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CssClass="table admin-table table-hover align-middle mb-0">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Id">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Category Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Description">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt" CssClass="btn-action-edit me-1">Edit</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_del" CssClass="btn-action-delete" OnClientClick="return confirm('Are you sure you want to delete this category?');">Delete</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
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

