USE [EEITDB]
GO
ALTER TABLE [dbo].[ProCategory] DROP CONSTRAINT [FK_ProductClass_ProductClass]
GO
/****** Object:  Table [dbo].[ProTransport]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[ProTransport]
GO
/****** Object:  Table [dbo].[ProPayType]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[ProPayType]
GO
/****** Object:  Table [dbo].[ProductPicture]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[ProductPicture]
GO
/****** Object:  Table [dbo].[ProductHotTest]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[ProductHotTest]
GO
/****** Object:  Table [dbo].[ProductHot]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[ProductHot]
GO
/****** Object:  Table [dbo].[Product_1]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[Product_1]
GO
/****** Object:  Table [dbo].[ProCategory]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[ProCategory]
GO
/****** Object:  Table [dbo].[ProCartList]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[ProCartList]
GO
/****** Object:  Table [dbo].[ProCart]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[ProCart]
GO
/****** Object:  Table [dbo].[ProBrand]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[ProBrand]
GO
/****** Object:  Table [dbo].[ProAdvertisement]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[ProAdvertisement]
GO
/****** Object:  Table [dbo].[PersonShop]    Script Date: 2018/5/10 下午 08:59:53 ******/
DROP TABLE [dbo].[PersonShop]
GO
/****** Object:  Table [dbo].[PersonShop]    Script Date: 2018/5/10 下午 08:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonShop](
	[personShopSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[personShopName] [varchar](max) NOT NULL,
	[personShopCoverFileName] [varchar](max) NOT NULL,
	[personShopCoverFilePath] [varchar](max) NOT NULL,
	[personShopDescription] [varchar](max) NOT NULL,
	[account] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProAdvertisement]    Script Date: 2018/5/10 下午 08:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProAdvertisement](
	[proAdverSeqNo] [int] NOT NULL,
	[proAdverName] [varchar](50) NOT NULL,
	[proAdverDay] [int] NOT NULL,
	[proAdverPrice] [varchar](10) NOT NULL,
	[proAdverStatus] [int] NOT NULL,
	[proAdverPicName] [varchar](max) NULL,
	[proAdverPicPath] [varchar](max) NULL,
	[productSeqNo] [nchar](10) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProBrand]    Script Date: 2018/5/10 下午 08:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProBrand](
	[brandSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[brandName] [varchar](30) NOT NULL,
	[brandPicPath] [varchar](max) NOT NULL,
 CONSTRAINT [PK__ProBrand__A72B91883E78E390] PRIMARY KEY CLUSTERED 
(
	[brandSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCart]    Script Date: 2018/5/10 下午 08:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCart](
	[proCartSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[proCreateDay] [datetime] NULL,
	[account] [varchar](50) NULL,
 CONSTRAINT [PK_ProCart] PRIMARY KEY CLUSTERED 
(
	[proCartSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCartList]    Script Date: 2018/5/10 下午 08:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCartList](
	[proCartListSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[productSeqNo] [int] NULL,
	[productCount] [int] NULL,
	[account] [varchar](50) NULL,
 CONSTRAINT [PK_ProCartList] PRIMARY KEY CLUSTERED 
(
	[proCartListSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCategory]    Script Date: 2018/5/10 下午 08:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCategory](
	[categorySeqNo] [int] IDENTITY(1,1) NOT NULL,
	[className] [varchar](50) NOT NULL,
	[classChildName] [varchar](50) NOT NULL,
	[productSeqNo] [nchar](10) NULL,
 CONSTRAINT [PK_ProductClass] PRIMARY KEY CLUSTERED 
(
	[className] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_1]    Script Date: 2018/5/10 下午 08:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_1](
	[productSeqNo] [bigint] IDENTITY(1,1) NOT NULL,
	[proName] [varchar](max) NOT NULL,
	[proCategorySeqNo] [int] NOT NULL,
	[proBrand] [varchar](max) NOT NULL,
	[proPrice] [bigint] NOT NULL,
	[proStatus] [int] NOT NULL,
	[proPayTypeSeqNo] [int] NOT NULL,
	[proPcs] [int] NOT NULL,
	[proDescription] [varchar](max) NOT NULL,
	[proTransSeqNo] [int] NOT NULL,
	[proAdverSeqNo] [int] NOT NULL,
	[proVolume] [varchar](50) NOT NULL,
	[proWeight] [decimal](10, 2) NOT NULL,
	[proDate] [datetime] NOT NULL,
	[account] [varchar](50) NOT NULL,
	[picSeqNo] [int] NULL,
 CONSTRAINT [PK_Product_1] PRIMARY KEY CLUSTERED 
(
	[productSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductHot]    Script Date: 2018/5/10 下午 08:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductHot](
	[productSeqNo] [int] NOT NULL,
	[productHot] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductHotTest]    Script Date: 2018/5/10 下午 08:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductHotTest](
	[productHotSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[productHotFileName] [varchar](max) NOT NULL,
	[productHotFilePath] [varchar](max) NOT NULL,
	[productName] [varchar](200) NOT NULL,
	[productCategory] [varchar](200) NOT NULL,
 CONSTRAINT [PK_ProductHotTest] PRIMARY KEY CLUSTERED 
(
	[productHotSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPicture]    Script Date: 2018/5/10 下午 08:59:54 ******/
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
/****** Object:  Table [dbo].[ProPayType]    Script Date: 2018/5/10 下午 08:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProPayType](
	[proPayTypeSeqNo] [int] NOT NULL,
	[payType] [varchar](50) NOT NULL,
	[payTypeStatus] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProTransport]    Script Date: 2018/5/10 下午 08:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProTransport](
	[proTransSeqNo] [int] NOT NULL,
	[proTransType] [varchar](max) NOT NULL,
	[proTransStatus] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProCartList] ON 

INSERT [dbo].[ProCartList] ([proCartListSeqNo], [productSeqNo], [productCount], [account]) VALUES (1, 2, 18, N'micky')
INSERT [dbo].[ProCartList] ([proCartListSeqNo], [productSeqNo], [productCount], [account]) VALUES (2, 1, 10, N'micky')
INSERT [dbo].[ProCartList] ([proCartListSeqNo], [productSeqNo], [productCount], [account]) VALUES (3, 3, 5, N'micky')
INSERT [dbo].[ProCartList] ([proCartListSeqNo], [productSeqNo], [productCount], [account]) VALUES (4, 1, 9, N'bob')
INSERT [dbo].[ProCartList] ([proCartListSeqNo], [productSeqNo], [productCount], [account]) VALUES (5, 6, 7, N'bob')
INSERT [dbo].[ProCartList] ([proCartListSeqNo], [productSeqNo], [productCount], [account]) VALUES (6, 5, 7, N'bob')
INSERT [dbo].[ProCartList] ([proCartListSeqNo], [productSeqNo], [productCount], [account]) VALUES (7, 2, 6, N'bob')
SET IDENTITY_INSERT [dbo].[ProCartList] OFF
SET IDENTITY_INSERT [dbo].[Product_1] ON 

INSERT [dbo].[Product_1] ([productSeqNo], [proName], [proCategorySeqNo], [proBrand], [proPrice], [proStatus], [proPayTypeSeqNo], [proPcs], [proDescription], [proTransSeqNo], [proAdverSeqNo], [proVolume], [proWeight], [proDate], [account], [picSeqNo]) VALUES (1, N'iphone', 2, N'apple', 1000, 1, 1, 2, N'好用的手機', 2, 5, N'0.2m x0.1m x0.3m', CAST(40.00 AS Decimal(10, 2)), CAST(N'2018-05-09T00:06:09.500' AS DateTime), N'bob', NULL)
INSERT [dbo].[Product_1] ([productSeqNo], [proName], [proCategorySeqNo], [proBrand], [proPrice], [proStatus], [proPayTypeSeqNo], [proPcs], [proDescription], [proTransSeqNo], [proAdverSeqNo], [proVolume], [proWeight], [proDate], [account], [picSeqNo]) VALUES (2, N'ps4', 1, N'sony', 5000, 1, 1, 2, N'超低特價', 2, 2, N'100m3', CAST(10.00 AS Decimal(10, 2)), CAST(N'2018-05-09T00:07:04.117' AS DateTime), N'bob', NULL)
INSERT [dbo].[Product_1] ([productSeqNo], [proName], [proCategorySeqNo], [proBrand], [proPrice], [proStatus], [proPayTypeSeqNo], [proPcs], [proDescription], [proTransSeqNo], [proAdverSeqNo], [proVolume], [proWeight], [proDate], [account], [picSeqNo]) VALUES (3, N'ps4', 1, N'sony', 88, 1, 1, 2, N'超低特價', 2, 2, N'100m3', CAST(10.00 AS Decimal(10, 2)), CAST(N'2018-05-09T00:07:35.997' AS DateTime), N'bob', NULL)
INSERT [dbo].[Product_1] ([productSeqNo], [proName], [proCategorySeqNo], [proBrand], [proPrice], [proStatus], [proPayTypeSeqNo], [proPcs], [proDescription], [proTransSeqNo], [proAdverSeqNo], [proVolume], [proWeight], [proDate], [account], [picSeqNo]) VALUES (4, N'google 耳機', 1, N'google', 20, 1, 1, 1, N'藍芽耳機喔', 1, 1, N'20m3', CAST(50.00 AS Decimal(10, 2)), CAST(N'2018-05-09T00:10:55.613' AS DateTime), N'micky', NULL)
INSERT [dbo].[Product_1] ([productSeqNo], [proName], [proCategorySeqNo], [proBrand], [proPrice], [proStatus], [proPayTypeSeqNo], [proPcs], [proDescription], [proTransSeqNo], [proAdverSeqNo], [proVolume], [proWeight], [proDate], [account], [picSeqNo]) VALUES (5, N'msi筆電', 1, N'msi', 50000, 1, 2, 20, N'超級電競筆電', 2, 0, N'0.2m x0.1m x0.3m', CAST(5.00 AS Decimal(10, 2)), CAST(N'2018-05-09T22:37:10.193' AS DateTime), N'bob', 5)
INSERT [dbo].[Product_1] ([productSeqNo], [proName], [proCategorySeqNo], [proBrand], [proPrice], [proStatus], [proPayTypeSeqNo], [proPcs], [proDescription], [proTransSeqNo], [proAdverSeqNo], [proVolume], [proWeight], [proDate], [account], [picSeqNo]) VALUES (6, N'dafas', 1, N'fdsfadfa', 34134, 1, 1, 12, N'adsfadf', 1, 0, N'adfa', CAST(123.00 AS Decimal(10, 2)), CAST(N'2018-05-09T23:34:28.883' AS DateTime), N'', 6)
SET IDENTITY_INSERT [dbo].[Product_1] OFF
SET IDENTITY_INSERT [dbo].[ProductPicture] ON 

INSERT [dbo].[ProductPicture] ([picSeqNo], [proPicSerial], [proPicName], [proPicPath], [productSeqNo]) VALUES (1, 1, N'商品05.jpg', N'C:/resources/images/product/bob/商品05.jpg', 1)
INSERT [dbo].[ProductPicture] ([picSeqNo], [proPicSerial], [proPicName], [proPicPath], [productSeqNo]) VALUES (2, 1, N'003.jpg', N'C:/resources/images/product/bob/003.jpg', 2)
INSERT [dbo].[ProductPicture] ([picSeqNo], [proPicSerial], [proPicName], [proPicPath], [productSeqNo]) VALUES (3, 1, N'001.jpg', N'C:/resources/images/product/bob/001.jpg', 3)
INSERT [dbo].[ProductPicture] ([picSeqNo], [proPicSerial], [proPicName], [proPicPath], [productSeqNo]) VALUES (4, 1, N'0481838_google-chromecast-hdmi-v3-.jpeg', N'C:/resources/images/product/micky/0481838_google-chromecast-hdmi-v3-.jpeg', 4)
INSERT [dbo].[ProductPicture] ([picSeqNo], [proPicSerial], [proPicName], [proPicPath], [productSeqNo]) VALUES (5, 1, N'商品01.jpg', N'C:/resources/images/product/bob/商品01.jpg', 5)
INSERT [dbo].[ProductPicture] ([picSeqNo], [proPicSerial], [proPicName], [proPicPath], [productSeqNo]) VALUES (6, 1, N'clothes02.jpg', N'C:/resources/images/product//clothes02.jpg', 6)
SET IDENTITY_INSERT [dbo].[ProductPicture] OFF
ALTER TABLE [dbo].[ProCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductClass_ProductClass] FOREIGN KEY([classChildName])
REFERENCES [dbo].[ProCategory] ([className])
GO
ALTER TABLE [dbo].[ProCategory] CHECK CONSTRAINT [FK_ProductClass_ProductClass]
GO
