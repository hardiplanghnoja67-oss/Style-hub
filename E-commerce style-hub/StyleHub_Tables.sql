-- =======================================================
-- STYLEHUB E-COMMERCE DATABASE TABLES SCRIPT
-- Style and naming convention matched to regi_tbl (reg_tbl)
-- =======================================================

-- 1. USER REGISTRATION TABLE (reg_tbl)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'reg_tbl')
BEGIN
    CREATE TABLE [dbo].[reg_tbl] (
        [Id]       INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [FullName] NVARCHAR(MAX) NOT NULL,
        [Email]    NVARCHAR(MAX) NOT NULL,
        [Mobile]   NVARCHAR(MAX) NOT NULL,
        [Password] NVARCHAR(MAX) NOT NULL,
        [Address]  NVARCHAR(MAX) NOT NULL
    );
    PRINT 'Table reg_tbl created successfully.';
END
ELSE
BEGIN
    PRINT 'Table reg_tbl already exists.';
END
GO

-- 2. ADMIN TABLE (admin_tbl)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'admin_tbl')
BEGIN
    CREATE TABLE [dbo].[admin_tbl] (
        [Id]       INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [Username] NVARCHAR(100) NOT NULL,
        [Password] NVARCHAR(100) NOT NULL,
        [FullName] NVARCHAR(MAX) NULL,
        [Email]    NVARCHAR(MAX) NULL
    );
    PRINT 'Table admin_tbl created successfully.';

    -- Default admin credentials
    INSERT INTO [dbo].[admin_tbl] ([Username], [Password], [FullName], [Email])
    VALUES ('admin', 'admin123', 'Administrator', 'admin@stylehub.com');
END
ELSE
BEGIN
    PRINT 'Table admin_tbl already exists.';
END
GO

-- 3. CATEGORY TABLE (category_tbl)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'category_tbl')
BEGIN
    CREATE TABLE [dbo].[category_tbl] (
        [Id]           INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [CategoryName] NVARCHAR(100) NOT NULL,
        [Description]  NVARCHAR(MAX) NULL,
        [Status]       NVARCHAR(50) DEFAULT 'Active'
    );
    PRINT 'Table category_tbl created successfully.';

    -- Default categories matching AddProduct.aspx
    INSERT INTO [dbo].[category_tbl] ([CategoryName], [Description])
    VALUES 
        ('Men', 'Men Fashion Collection'),
        ('Women', 'Women Fashion & Luxury Wear'),
        ('Kids', 'Kids Modern Outfits'),
        ('Accessories', 'Watches, Belts, Bags and Footwear');
END
ELSE
BEGIN
    PRINT 'Table category_tbl already exists.';
END
GO

-- 4. PRODUCT TABLE (product_tbl)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'product_tbl')
BEGIN
    CREATE TABLE [dbo].[product_tbl] (
        [Id]           INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [ProductName]  NVARCHAR(MAX) NOT NULL,
        [Category]     NVARCHAR(100) NOT NULL,
        [Price]        DECIMAL(18,2) NOT NULL,
        [Stock]        INT NOT NULL,
        [Brand]        NVARCHAR(MAX) NULL,
        [ProductImage] NVARCHAR(MAX) NULL,
        [Description]  NVARCHAR(MAX) NULL,
        [CreatedDate]  DATETIME DEFAULT GETDATE()
    );
    PRINT 'Table product_tbl created successfully.';

    -- Sample products matching ManageProduct.aspx
    INSERT INTO [dbo].[product_tbl] ([ProductName], [Category], [Price], [Stock], [Brand], [ProductImage], [Description])
    VALUES 
        ('Premium Cotton Shirt', 'Men', 1499.00, 25, 'StyleHub Men', 'Images/shirt.jpg', 'Tailored fit premium cotton shirt.'),
        ('Denim Jacket', 'Women', 2299.00, 18, 'StyleHub Studio', 'Images/jacket.jpg', 'Classic washed denim outerwear jacket.'),
        ('Classic Sneakers', 'Accessories', 3499.00, 12, 'Urban Luxe', 'Images/shoes.jpg', 'Modern street style cushioned sneakers.');
END
ELSE
BEGIN
    PRINT 'Table product_tbl already exists.';
END
GO

-- 5. CART TABLE (cart_tbl)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'cart_tbl')
BEGIN
    CREATE TABLE [dbo].[cart_tbl] (
        [Id]           INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [UserId]       INT NULL,
        [UserEmail]    NVARCHAR(MAX) NULL,
        [ProductId]    INT NOT NULL,
        [ProductName]  NVARCHAR(MAX) NOT NULL,
        [ProductImage] NVARCHAR(MAX) NULL,
        [Price]        DECIMAL(18,2) NOT NULL,
        [Quantity]     INT NOT NULL DEFAULT 1,
        [TotalPrice]   DECIMAL(18,2) NOT NULL,
        [AddedDate]    DATETIME DEFAULT GETDATE()
    );
    PRINT 'Table cart_tbl created successfully.';
END
ELSE
BEGIN
    PRINT 'Table cart_tbl already exists.';
END
GO

-- 6. ORDER TABLE (order_tbl)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'order_tbl')
BEGIN
    CREATE TABLE [dbo].[order_tbl] (
        [Id]             INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [OrderNumber]    NVARCHAR(50) NOT NULL,
        [UserId]         INT NULL,
        [CustomerName]   NVARCHAR(MAX) NOT NULL,
        [Email]          NVARCHAR(MAX) NOT NULL,
        [Mobile]         NVARCHAR(MAX) NOT NULL,
        [Address]        NVARCHAR(MAX) NOT NULL,
        [City]           NVARCHAR(100) NOT NULL,
        [State]          NVARCHAR(100) NOT NULL,
        [Pincode]        NVARCHAR(20) NOT NULL,
        [ProductDetails] NVARCHAR(MAX) NULL,
        [TotalAmount]    DECIMAL(18,2) NOT NULL,
        [PaymentMethod]  NVARCHAR(50) NOT NULL,
        [PaymentStatus]  NVARCHAR(50) DEFAULT 'Pending',
        [DeliveryStatus] NVARCHAR(50) DEFAULT 'Pending',
        [OrderDate]      DATETIME DEFAULT GETDATE()
    );
    PRINT 'Table order_tbl created successfully.';
END
ELSE
BEGIN
    PRINT 'Table order_tbl already exists.';
END
GO

-- 7. ORDER ITEMS TABLE (order_items_tbl)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'order_items_tbl')
BEGIN
    CREATE TABLE [dbo].[order_items_tbl] (
        [Id]          INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [OrderId]     INT NOT NULL,
        [ProductId]   INT NOT NULL,
        [ProductName] NVARCHAR(MAX) NOT NULL,
        [Price]       DECIMAL(18,2) NOT NULL,
        [Quantity]    INT NOT NULL,
        [TotalPrice]  DECIMAL(18,2) NOT NULL
    );
    PRINT 'Table order_items_tbl created successfully.';
END
ELSE
BEGIN
    PRINT 'Table order_items_tbl already exists.';
END
GO

-- 8. CONTACT / FEEDBACK TABLE (contact_tbl)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'contact_tbl')
BEGIN
    CREATE TABLE [dbo].[contact_tbl] (
        [Id]            INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [FullName]      NVARCHAR(MAX) NOT NULL,
        [Email]         NVARCHAR(MAX) NOT NULL,
        [Subject]       NVARCHAR(MAX) NULL,
        [Message]       NVARCHAR(MAX) NOT NULL,
        [SubmittedDate] DATETIME DEFAULT GETDATE()
    );
    PRINT 'Table contact_tbl created successfully.';
END
ELSE
BEGIN
    PRINT 'Table contact_tbl already exists.';
END
GO
