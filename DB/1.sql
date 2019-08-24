USE [LocalStore]
GO
/****** Object:  Table [dbo].[tblProductInfo]    Script Date: 8/24/2019 8:17:27 AM ******/
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
/****** Object:  Table [dbo].[tblStoreInfo]    Script Date: 8/24/2019 8:17:28 AM ******/
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
/****** Object:  Table [dbo].[tblUser]    Script Date: 8/24/2019 8:17:28 AM ******/
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
ALTER TABLE [dbo].[tblStoreInfo] ADD  CONSTRAINT [DF_tblStoreInfo_AdminApprove]  DEFAULT ((0)) FOR [AdminApprove]
GO
