USE [LocalStore]
GO
ALTER TABLE [dbo].[tblStoreInfo] DROP CONSTRAINT [DF_tblStoreInfo_AdminApprove]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 8/24/2019 9:15:04 AM ******/
DROP TABLE [dbo].[tblUser]
GO
/****** Object:  Table [dbo].[tblStoreInfo]    Script Date: 8/24/2019 9:15:04 AM ******/
DROP TABLE [dbo].[tblStoreInfo]
GO
/****** Object:  Table [dbo].[tblProductInfo]    Script Date: 8/24/2019 9:15:04 AM ******/
DROP TABLE [dbo].[tblProductInfo]
GO
/****** Object:  Table [dbo].[tblProductInfo]    Script Date: 8/24/2019 9:15:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductInfo](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](50) NULL,
	[BrandName] [varchar](50) NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[StoreId] [int] NULL,
	[StoreAuthId] [varchar](50) NULL,
 CONSTRAINT [PK_tblProductInfo] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStoreInfo]    Script Date: 8/24/2019 9:15:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStoreInfo](
	[StoreId] [int] IDENTITY(1,1) NOT NULL,
	[StoreName] [varchar](50) NULL,
	[StoreAddress] [varchar](50) NULL,
	[Pincode] [varchar](50) NULL,
	[SearchTags] [varchar](50) NULL,
	[AdminApprove] [int] NULL,
	[StoreAuthId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblStoreInfo] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 8/24/2019 9:15:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[RoleType] [varchar](50) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblProductInfo] ON 

INSERT [dbo].[tblProductInfo] ([ProductId], [Category], [BrandName], [Price], [Quantity], [StoreId], [StoreAuthId]) VALUES (1, N'Cement', N'Ultratech(Grade-PPC)', CAST(380 AS Decimal(18, 0)), 1, 1, N'GoodLuckStore@LocalStore.com')
INSERT [dbo].[tblProductInfo] ([ProductId], [Category], [BrandName], [Price], [Quantity], [StoreId], [StoreAuthId]) VALUES (2, N'Cement', N'Ramco', CAST(355 AS Decimal(18, 0)), 1, 1, N'GoodLuckStore@LocalStore.com')
INSERT [dbo].[tblProductInfo] ([ProductId], [Category], [BrandName], [Price], [Quantity], [StoreId], [StoreAuthId]) VALUES (3, N'Steel', N'Tata Steel', CAST(59 AS Decimal(18, 0)), 1, 1, N'GoodLuckStore@LocalStore.com')
SET IDENTITY_INSERT [dbo].[tblProductInfo] OFF
SET IDENTITY_INSERT [dbo].[tblStoreInfo] ON 

INSERT [dbo].[tblStoreInfo] ([StoreId], [StoreName], [StoreAddress], [Pincode], [SearchTags], [AdminApprove], [StoreAuthId]) VALUES (1, N'Good Luck Store', N'Chennai', N'600100', N'Cement', 1, N'GoodLuckStore@LocalStore.com')
INSERT [dbo].[tblStoreInfo] ([StoreId], [StoreName], [StoreAddress], [Pincode], [SearchTags], [AdminApprove], [StoreAuthId]) VALUES (2, N'New Store', N'Chennai', N'600100', N'Steel', 0, N'NewStore@LocalStore.com')
INSERT [dbo].[tblStoreInfo] ([StoreId], [StoreName], [StoreAddress], [Pincode], [SearchTags], [AdminApprove], [StoreAuthId]) VALUES (3, N'Karthik Traders', N'Chennai', N'600100', N'hardware,cement,stones', 0, N'KarthikTraders@LocalStore.com')
SET IDENTITY_INSERT [dbo].[tblStoreInfo] OFF
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([UserId], [UserName], [Password], [RoleType]) VALUES (1, N'Admin', N'Admin1', N'Admin')
INSERT [dbo].[tblUser] ([UserId], [UserName], [Password], [RoleType]) VALUES (2, N'Store1', N'Store1', N'Store')
INSERT [dbo].[tblUser] ([UserId], [UserName], [Password], [RoleType]) VALUES (3, N'Store2', N'Store2', N'Store')
INSERT [dbo].[tblUser] ([UserId], [UserName], [Password], [RoleType]) VALUES (4, N'User1', N'User1', N'User')
INSERT [dbo].[tblUser] ([UserId], [UserName], [Password], [RoleType]) VALUES (5, N'User2', N'User2', N'User')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
ALTER TABLE [dbo].[tblStoreInfo] ADD  CONSTRAINT [DF_tblStoreInfo_AdminApprove]  DEFAULT ((0)) FOR [AdminApprove]
GO
