<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ManageProduct.aspx.cs"
    Inherits="StyleHub.ManageProducts" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Manage Products | StyleHub Admin</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <link rel="stylesheet" href="admin-modern.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .product-grid-img {
            width: 54px;
            height: 54px;
            object-fit: cover;
            border-radius: 10px;
            border: 1px solid rgba(16, 42, 67, 0.1);
            box-shadow: 0 2px 6px rgba(16, 42, 67, 0.06);
            background-color: #f8fafc;
        }
        .modal-icon-badge {
            width: 42px;
            height: 42px;
            border-radius: 10px;
            background: linear-gradient(135deg, #d4af37, #f6d365);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #0a192f;
            font-size: 18px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server" enctype="multipart/form-data">

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
                    <a href="javascript:void(0)" class="sidebar-nav-link" data-bs-toggle="modal" data-bs-target="#addProductModal" onclick="openAddModal();">
                        <i class="fas fa-plus-circle"></i>
                        <span>Add Product</span>
                    </a>
                </li>
                <li>
                    <a href="ManageProduct.aspx" class="sidebar-nav-link active">
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
                    <h1>Manage Products</h1>
                    <p class="sub">Inventory Control &bull; View, update or remove items</p>
                </div>
            </div>

            <div class="topbar-right">
                <button type="button" class="btn-admin-gold border-0" data-bs-toggle="modal" data-bs-target="#addProductModal" onclick="openAddModal();">
                    <i class="fas fa-plus-circle"></i>
                    <span>Add New Product</span>
                </button>
                <div class="topbar-user">
                    <div class="topbar-user-avatar">
                        <i class="fas fa-user-shield"></i>
                    </div>
                </div>
            </div>
        </header>

        <!-- Page Body -->
        <main class="admin-body">
            <!-- Page Feedback Alert -->
            <asp:Literal ID="litAlertMessage" runat="server"></asp:Literal>

            <div class="admin-card">
                <div class="admin-card-header">
                    <h2 class="admin-card-title">
                        <i class="fas fa-boxes-stacked"></i>
                        Product Catalog Inventory
                    </h2>
                    <div class="d-flex gap-2">
                        <span class="badge bg-light text-dark border px-3 py-2 rounded-pill fw-semibold">
                            Total: <asp:Label ID="lblTotalCount" runat="server" Text="0"></asp:Label> Products
                        </span>
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
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    
                                    <asp:Image ID="Image1" runat="server" Height="50" Width="50" ImageUrl='<%# Eval("ProductImage") %>' />
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <div class="fw-semibold text-dark"><%# Eval("ProductName") %></div>
                                    <small class="text-muted"><%# ((System.Data.DataRowView)Container.DataItem).Row.Table.Columns.Contains("Brand") ? (Eval("Brand") ?? "").ToString() : "" %></small>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category">
                                <ItemTemplate>
                                    <span class="badge bg-light text-secondary border px-2 py-1 rounded-pill">
                                        <%# Eval("Category") %>
                                    </span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <span class="fw-bold text-dark">&#8377;<%# Eval("Price", "{0:N2}") %></span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Stock">
                                <ItemTemplate>
                                    <span class='<%# Convert.ToInt32(Eval("Stock")) <= 5 ? "badge bg-danger-subtle text-danger px-2 py-1 rounded-pill" : (Convert.ToInt32(Eval("Stock")) <= 15 ? "badge bg-warning-subtle text-warning-emphasis px-2 py-1 rounded-pill" : "badge bg-success-subtle text-success px-2 py-1 rounded-pill") %>'>
                                        <%# Eval("Stock") %> units
                                    </span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt" CssClass="btn-action-edit me-1">
                                        <i class="fas fa-pencil-alt me-1"></i>Edit
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_del" CssClass="btn-action-delete" OnClientClick="return confirm('Are you sure you want to delete this product?');">
                                        <i class="fas fa-trash me-1"></i>Delete
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

                <div class="mt-4 d-flex justify-content-between align-items-center">
                    <a href="AdminDashboard.aspx" class="btn btn-outline-secondary px-3 py-2 rounded-3">
                        <i class="fas fa-arrow-left me-1"></i> Back to Dashboard
                    </a>
                    <button type="button" class="btn-admin-gold border-0" data-bs-toggle="modal" data-bs-target="#addProductModal" onclick="openAddModal();">
                        <i class="fas fa-plus-circle"></i> Add New Product
                    </button>
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

<!-- ==========================================
     ADD / EDIT PRODUCT POPUP MODAL
     ========================================== -->
<div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="addProductModalLabel" aria-hidden="true" data-bs-backdrop="static">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content shadow-lg border-0 rounded-4 overflow-hidden">
            <div class="modal-header bg-dark text-white px-4 py-3">
                <div class="d-flex align-items-center gap-3">
                    <div class="modal-icon-badge">
                        <i class="fas fa-box-open" id="modalHeaderIcon"></i>
                    </div>
                    <div>
                        <h5 class="modal-title fw-bold mb-0 text-white" id="addProductModalLabel">Add New Product</h5>
                        <small class="text-white-50" id="modalSubtitle">Catalog Management &bull; Fill in item details to publish</small>
                    </div>
                </div>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body p-4">
                <asp:Literal ID="litModalAlert" runat="server"></asp:Literal>
                <asp:HiddenField ID="hfProductId" runat="server" Value="" />
                <asp:HiddenField ID="hfExistingImage" runat="server" Value="" />

                <div class="row g-3">
                    <!-- Product Name -->
                    <div class="col-md-7">
                        <label class="form-label fw-semibold text-secondary small mb-1">
                            <i class="fas fa-tag me-1 text-warning"></i> Product Name <span class="text-danger">*</span>
                        </label>
                        <asp:TextBox ID="txtModalProductName" runat="server" CssClass="form-control admin-form-control" placeholder="e.g. Classic Cotton Oxford Shirt"></asp:TextBox>
                    </div>

                    <!-- Category -->
                    <div class="col-md-5">
                        <label class="form-label fw-semibold text-secondary small mb-1">
                            <i class="fas fa-layer-group me-1 text-warning"></i> Category <span class="text-danger">*</span>
                        </label>
                        <asp:DropDownList ID="ddlModalCategory" runat="server" CssClass="form-select admin-form-control">
                            <asp:ListItem Value="">-- Select Category --</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <!-- Price -->
                    <div class="col-md-4">
                        <label class="form-label fw-semibold text-secondary small mb-1">
                            <i class="fas fa-indian-rupee-sign me-1 text-warning"></i> Price (INR) <span class="text-danger">*</span>
                        </label>
                        <div class="input-group">
                            <span class="input-group-text bg-light text-muted border-end-0">&#8377;</span>
                            <asp:TextBox ID="txtModalPrice" runat="server" CssClass="form-control admin-form-control border-start-0" placeholder="1499.00"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Stock -->
                    <div class="col-md-4">
                        <label class="form-label fw-semibold text-secondary small mb-1">
                            <i class="fas fa-cubes me-1 text-warning"></i> Available Stock Units <span class="text-danger">*</span>
                        </label>
                        <asp:TextBox ID="txtModalStock" runat="server" TextMode="Number" CssClass="form-control admin-form-control" placeholder="50"></asp:TextBox>
                    </div>

                    <!-- Brand -->
                    <div class="col-md-4">
                        <label class="form-label fw-semibold text-secondary small mb-1">
                            <i class="fas fa-award me-1 text-warning"></i> Brand Name
                        </label>
                        <asp:TextBox ID="txtModalBrand" runat="server" CssClass="form-control admin-form-control" placeholder="e.g. StyleHub Studio"></asp:TextBox>
                    </div>

                    <!-- Image Upload and URL -->
                    <div class="col-md-7">
                        <label class="form-label fw-semibold text-secondary small mb-1">
                            <i class="fas fa-image me-1 text-warning"></i> Product Image (Upload File)
                        </label>
                        <asp:FileUpload ID="fuModalImage" runat="server" CssClass="form-control admin-form-control" onchange="previewSelectedImage(this);" />
                        <div class="mt-2">
                            <label class="form-label fw-semibold text-muted small mb-1">Or paste Image URL:</label>
                            <asp:TextBox ID="txtModalImageUrl" runat="server" CssClass="form-control admin-form-control" placeholder="https://images.unsplash.com/..." oninput="previewUrlImage(this.value);"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Live Image Preview -->
                    <div class="col-md-5">
                        <label class="form-label fw-semibold text-secondary small mb-1">Image Preview</label>
                        <div class="border rounded-3 p-2 text-center bg-light d-flex align-items-center justify-content-center" style="height: 125px; background-color: #f8fafc;">
                            <img id="imgModalPreview" src="https://images.unsplash.com/photo-1523381210434-271e8be1f52b?w=200&q=80" alt="Preview" style="max-height: 110px; max-width: 100%; object-fit: contain; border-radius: 6px;" />
                        </div>
                    </div>

                    <!-- Product Description -->
                    <div class="col-12">
                        <label class="form-label fw-semibold text-secondary small mb-1">
                            <i class="fas fa-align-left me-1 text-warning"></i> Product Description
                        </label>
                        <asp:TextBox ID="txtModalDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control admin-form-control" placeholder="Detailed product specifications, materials, fit, care instructions..."></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="modal-footer bg-light px-4 py-3 d-flex justify-content-between">
                <button type="button" class="btn btn-outline-secondary px-4 rounded-3" data-bs-dismiss="modal">
                    <i class="fas fa-times me-1"></i> Cancel
                </button>
                <div class="d-flex gap-2">
                    <button type="button" class="btn btn-light border px-3 rounded-3" onclick="resetProductModal();">
                        <i class="fas fa-rotate me-1"></i> Reset
                    </button>
                    <asp:Button ID="btnSaveProduct" runat="server" Text="Save Product" CssClass="btn-admin-gold px-4" OnClick="btnSaveProduct_Click" />
                </div>
            </div>
        </div>
    </div>
</div>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="admin-modern.js"></script>

<script>
    function openAddModal() {
        var hfId = document.getElementById('<%= hfProductId.ClientID %>');
        if (hfId) hfId.value = '';

        var hfImg = document.getElementById('<%= hfExistingImage.ClientID %>');
        if (hfImg) hfImg.value = '';

        var txtName = document.getElementById('<%= txtModalProductName.ClientID %>');
        if (txtName) txtName.value = '';

        var ddlCat = document.getElementById('<%= ddlModalCategory.ClientID %>');
        if (ddlCat) ddlCat.selectedIndex = 0;

        var txtPrice = document.getElementById('<%= txtModalPrice.ClientID %>');
        if (txtPrice) txtPrice.value = '';

        var txtStock = document.getElementById('<%= txtModalStock.ClientID %>');
        if (txtStock) txtStock.value = '';

        var txtBrand = document.getElementById('<%= txtModalBrand.ClientID %>');
        if (txtBrand) txtBrand.value = '';

        var txtUrl = document.getElementById('<%= txtModalImageUrl.ClientID %>');
        if (txtUrl) txtUrl.value = '';

        var fu = document.getElementById('<%= fuModalImage.ClientID %>');
        if (fu) fu.value = '';

        var txtDesc = document.getElementById('<%= txtModalDescription.ClientID %>');
        if (txtDesc) txtDesc.value = '';

        var preview = document.getElementById('imgModalPreview');
        if (preview) preview.src = 'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?w=200&q=80';

        var title = document.getElementById('addProductModalLabel');
        if (title) title.innerText = 'Add New Product';

        var sub = document.getElementById('modalSubtitle');
        if (sub) sub.innerText = 'Catalog Management • Fill in item details to publish';

        var icon = document.getElementById('modalHeaderIcon');
        if (icon) icon.className = 'fas fa-box-open';

        var btn = document.getElementById('<%= btnSaveProduct.ClientID %>');
        if (btn) btn.value = 'Save Product';

        var modalEl = document.getElementById('addProductModal');
        if (modalEl) {
            var modal = bootstrap.Modal.getOrCreateInstance(modalEl);
            modal.show();
        }
    }

    function openEditModal() {
        var title = document.getElementById('addProductModalLabel');
        if (title) title.innerText = 'Edit Product';

        var sub = document.getElementById('modalSubtitle');
        if (sub) sub.innerText = 'Catalog Management • Update product details';

        var icon = document.getElementById('modalHeaderIcon');
        if (icon) icon.className = 'fas fa-pencil-alt';

        var btn = document.getElementById('<%= btnSaveProduct.ClientID %>');
        if (btn) btn.value = 'Update';

        var txtUrl = document.getElementById('<%= txtModalImageUrl.ClientID %>');
        if (txtUrl && txtUrl.value && txtUrl.value.trim().length > 0) {
            previewUrlImage(txtUrl.value.trim());
        }

        var modalEl = document.getElementById('addProductModal');
        if (modalEl) {
            if (typeof bootstrap !== 'undefined' && bootstrap.Modal) {
                var modal = bootstrap.Modal.getOrCreateInstance(modalEl);
                modal.show();
            } else {
                setTimeout(function () {
                    var modal = bootstrap.Modal.getOrCreateInstance(modalEl);
                    modal.show();
                }, 200);
            }
        }
    }

    function resetProductModal() {
        openAddModal();
    }

    function previewSelectedImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                var preview = document.getElementById('imgModalPreview');
                if (preview) preview.src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

    function previewUrlImage(url) {
        if (url && url.trim().length > 5) {
            var preview = document.getElementById('imgModalPreview');
            if (preview) preview.src = url.trim();
        }
    }

    // Auto open modal on Edit or if URL contains openAdd=1
    document.addEventListener('DOMContentLoaded', function () {
        var btn = document.getElementById('<%= btnSaveProduct.ClientID %>');
        if (btn && btn.value === 'Update') {
            openEditModal();
        }

        var params = new URLSearchParams(window.location.search);
        if (params.get('openAdd') === '1' || params.get('add') === '1') {
            openAddModal();
            if (window.history.replaceState) {
                var cleanUrl = window.location.protocol + "//" + window.location.host + window.location.pathname;
                window.history.replaceState({ path: cleanUrl }, '', cleanUrl);
            }
        }
    });
</script>
</body>
</html>
