USE [EEITDB]
GO
ALTER TABLE [dbo].[ProCategory] DROP CONSTRAINT [FK_ProductClass_ProductClass]
GO
/****** Object:  Table [dbo].[ProTransport]    Script Date: 2018/5/8 下午 08:04:09 ******/
DROP TABLE [dbo].[ProTransport]
GO
/****** Object:  Table [dbo].[ProPayType]    Script Date: 2018/5/8 下午 08:04:09 ******/
DROP TABLE [dbo].[ProPayType]
GO
/****** Object:  Table [dbo].[ProductPicture]    Script Date: 2018/5/8 下午 08:04:09 ******/
DROP TABLE [dbo].[ProductPicture]
GO
/****** Object:  Table [dbo].[ProductHotTest]    Script Date: 2018/5/8 下午 08:04:09 ******/
DROP TABLE [dbo].[ProductHotTest]
GO
/****** Object:  Table [dbo].[ProductHot]    Script Date: 2018/5/8 下午 08:04:09 ******/
DROP TABLE [dbo].[ProductHot]
GO
/****** Object:  Table [dbo].[Product_1]    Script Date: 2018/5/8 下午 08:04:09 ******/
DROP TABLE [dbo].[Product_1]
GO
/****** Object:  Table [dbo].[ProCategory]    Script Date: 2018/5/8 下午 08:04:09 ******/
DROP TABLE [dbo].[ProCategory]
GO
/****** Object:  Table [dbo].[ProBrand]    Script Date: 2018/5/8 下午 08:04:09 ******/
DROP TABLE [dbo].[ProBrand]
GO
/****** Object:  Table [dbo].[ProAdvertisement]    Script Date: 2018/5/8 下午 08:04:09 ******/
DROP TABLE [dbo].[ProAdvertisement]
GO
/****** Object:  Table [dbo].[PersonShop]    Script Date: 2018/5/8 下午 08:04:09 ******/
DROP TABLE [dbo].[PersonShop]
GO
/****** Object:  Table [dbo].[PersonShop]    Script Date: 2018/5/8 下午 08:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonShop](
	[PersonShopSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[PersonShopName] [varchar](max) NULL,
	[PersonShopCoverFileName] [varchar](max) NULL,
	[PersonShopCoverFilePath] [varchar](max) NULL,
	[PersonShopDescription] [varchar](max) NULL,
	[account] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProAdvertisement]    Script Date: 2018/5/8 下午 08:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProAdvertisement](
	[ProAdverSeqNo] [int] NULL,
	[ProAdverName] [varchar](50) NULL,
	[ProAdverDay] [int] NULL,
	[ProAdverPrice] [varchar](10) NULL,
	[ProAdverStatus] [int] NULL,
	[ProAdverPicName] [varchar](max) NULL,
	[ProAdverPicPath] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProBrand]    Script Date: 2018/5/8 下午 08:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProBrand](
	[brandSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[brandName] [varchar](30) NULL,
	[brandPicPath] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[brandSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCategory]    Script Date: 2018/5/8 下午 08:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCategory](
	[ProductClassSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
	[ClassChildName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductClass] PRIMARY KEY CLUSTERED 
(
	[ClassName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_1]    Script Date: 2018/5/8 下午 08:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_1](
	[productSeqNo] [bigint] IDENTITY(1,1) NOT NULL,
	[proName] [varchar](max) NULL,
	[proCategorySeqNo] [int] NULL,
	[proBrand] [varchar](max) NULL,
	[proPrice] [bigint] NOT NULL,
	[proStatus] [int] NULL,
	[proPayTypeSeqNo] [int] NULL,
	[proPcs] [int] NULL,
	[proDescription] [varchar](max) NULL,
	[proTransSeqNo] [int] NULL,
	[proAdverSeqNo] [int] NULL,
	[proVolume] [varchar](50) NULL,
	[proWeight] [decimal](10, 2) NULL,
	[proDate] [datetime] NULL,
	[account] [varchar](50) NULL,
 CONSTRAINT [PK_Product_1] PRIMARY KEY CLUSTERED 
(
	[productSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductHot]    Script Date: 2018/5/8 下午 08:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductHot](
	[ProductSeqNo] [int] NOT NULL,
	[ProductHot] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductHotTest]    Script Date: 2018/5/8 下午 08:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductHotTest](
	[ProductHotSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[ProductHotFileName] [varchar](max) NOT NULL,
	[ProductHotFilePath] [varchar](max) NOT NULL,
	[ProductName] [varchar](200) NOT NULL,
	[ProductCategory] [varchar](200) NOT NULL,
 CONSTRAINT [PK_ProductHotTest] PRIMARY KEY CLUSTERED 
(
	[ProductHotSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPicture]    Script Date: 2018/5/8 下午 08:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPicture](
	[picSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[proPicSerial] [int] NOT NULL,
	[proPicName] [varchar](max) NOT NULL,
	[proPicPath] [varchar](max) NOT NULL,
	[productSeqNo] [int] NOT NULL,
 CONSTRAINT [PK__ProductP__A35C877CBC8392A5] PRIMARY KEY CLUSTERED 
(
	[picSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProPayType]    Script Date: 2018/5/8 下午 08:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProPayType](
	[proPayTypeSeqNo] [int] NULL,
	[PayType] [varchar](50) NULL,
	[PayTypeStatus] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProTransport]    Script Date: 2018/5/8 下午 08:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProTransport](
	[proTransSeqNo] [int] NULL,
	[proTransType] [varchar](max) NULL,
	[proTransStatus] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductClass_ProductClass] FOREIGN KEY([ClassChildName])
REFERENCES [dbo].[ProCategory] ([ClassName])
GO
ALTER TABLE [dbo].[ProCategory] CHECK CONSTRAINT [FK_ProductClass_ProductClass]
GO
