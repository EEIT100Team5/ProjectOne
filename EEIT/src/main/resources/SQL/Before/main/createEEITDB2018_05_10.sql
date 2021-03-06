USE [EEITDB]
GO
ALTER TABLE [dbo].[WatchHistory] DROP CONSTRAINT [FK_WatchHistory_Video]
GO
ALTER TABLE [dbo].[WatchHistory] DROP CONSTRAINT [FK_WatchHistory_Member]
GO
ALTER TABLE [dbo].[Video] DROP CONSTRAINT [FK_Video_VideoType]
GO
ALTER TABLE [dbo].[UserReports] DROP CONSTRAINT [FK_UserReports_Member]
GO
ALTER TABLE [dbo].[TrackExpressShipments] DROP CONSTRAINT [FK_TrackExpressShipments_ExpressShipping]
GO
ALTER TABLE [dbo].[SubscriptionUploader] DROP CONSTRAINT [FK_SubscriptionUploader_Member1]
GO
ALTER TABLE [dbo].[SubscriptionUploader] DROP CONSTRAINT [FK_SubscriptionUploader_Member]
GO
ALTER TABLE [dbo].[ServiceAns] DROP CONSTRAINT [FK_ServiceAns_MemberQues]
GO
ALTER TABLE [dbo].[ReplyCommentVideoLikeUnlike] DROP CONSTRAINT [FK_ReplyCommentVideoLikeUnlike_ReplyCommentVideo]
GO
ALTER TABLE [dbo].[ReplyCommentVideoLikeUnlike] DROP CONSTRAINT [FK_ReplyCommentVideoLikeUnlike_Member]
GO
ALTER TABLE [dbo].[ReplyCommentVideo] DROP CONSTRAINT [FK_ReplyCommentVideo_Member]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Member]
GO
ALTER TABLE [dbo].[ProCategory] DROP CONSTRAINT [FK_ProductClass_ProductClass]
GO
ALTER TABLE [dbo].[OrderList] DROP CONSTRAINT [FK_OrderList_Order]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Notification] DROP CONSTRAINT [FK_Notification_Member]
GO
ALTER TABLE [dbo].[Message] DROP CONSTRAINT [FK_Message_Member1]
GO
ALTER TABLE [dbo].[Message] DROP CONSTRAINT [FK_Message_Member]
GO
ALTER TABLE [dbo].[Member] DROP CONSTRAINT [FKjxhc0s2xa2m472ffeq3wtv3b7]
GO
ALTER TABLE [dbo].[Member] DROP CONSTRAINT [FKh86ayrro928dnhe7urkhsymrd]
GO
ALTER TABLE [dbo].[LikeUnlikeVideos] DROP CONSTRAINT [FK_LikeUnlikeVideos_Video]
GO
ALTER TABLE [dbo].[LikeUnlikeVideos] DROP CONSTRAINT [FK_LikeUnlikeVideos_Member]
GO
ALTER TABLE [dbo].[Friend] DROP CONSTRAINT [FK_Friend_Member]
GO
ALTER TABLE [dbo].[ForumReply] DROP CONSTRAINT [FK_ForumReply_Member]
GO
ALTER TABLE [dbo].[ForumReply] DROP CONSTRAINT [FK_ForumReply_ForumComment]
GO
ALTER TABLE [dbo].[ForumComment] DROP CONSTRAINT [FK_ForumComment_Member]
GO
ALTER TABLE [dbo].[ForumComment] DROP CONSTRAINT [FK_ForumComment_ForumArticle]
GO
ALTER TABLE [dbo].[ForumArticle] DROP CONSTRAINT [FK_ForumArticle_Member]
GO
ALTER TABLE [dbo].[ExpressShipping] DROP CONSTRAINT [FK_ExpressShipping_Order]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK_Cart_Order]
GO
ALTER TABLE [dbo].[Bid] DROP CONSTRAINT [FK_Bid_Auction]
GO
ALTER TABLE [dbo].[Auction] DROP CONSTRAINT [FK_Auction_Member]
GO
ALTER TABLE [dbo].[Auction] DROP CONSTRAINT [FK_Auction_LiveStream]
GO
/****** Object:  Index [UK_1otx0mgvjfsjh6722pmmkog5t]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP INDEX [UK_1otx0mgvjfsjh6722pmmkog5t] ON [dbo].[MemberQues]
GO
/****** Object:  Index [UK_lrj7q9gjmmuqmuke1slpj2wbv]    Script Date: 2018/5/11 下午 03:23:34 ******/
ALTER TABLE [dbo].[MEMBER_MEMBER] DROP CONSTRAINT [UK_lrj7q9gjmmuqmuke1slpj2wbv]
GO
/****** Object:  Table [dbo].[WatchLaterVideo]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[WatchLaterVideo]
GO
/****** Object:  Table [dbo].[WatchHistory]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[WatchHistory]
GO
/****** Object:  Table [dbo].[VideoType]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[VideoType]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Video]
GO
/****** Object:  Table [dbo].[UserReports]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[UserReports]
GO
/****** Object:  Table [dbo].[TrackExpressShipments]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[TrackExpressShipments]
GO
/****** Object:  Table [dbo].[SubscriptionUploader]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[SubscriptionUploader]
GO
/****** Object:  Table [dbo].[ServiceAns]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ServiceAns]
GO
/****** Object:  Table [dbo].[service_ans]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[service_ans]
GO
/****** Object:  Table [dbo].[ReplyCommentVideoLikeUnlike]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ReplyCommentVideoLikeUnlike]
GO
/****** Object:  Table [dbo].[ReplyCommentVideo]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ReplyCommentVideo]
GO
/****** Object:  Table [dbo].[ProTransport]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ProTransport]
GO
/****** Object:  Table [dbo].[ProPayType]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ProPayType]
GO
/****** Object:  Table [dbo].[ProductPicture]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ProductPicture]
GO
/****** Object:  Table [dbo].[ProductHotTest]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ProductHotTest]
GO
/****** Object:  Table [dbo].[ProductHot]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ProductHot]
GO
/****** Object:  Table [dbo].[Product_1]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Product_1]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[ProCategory]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ProCategory]
GO
/****** Object:  Table [dbo].[ProCartList]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ProCartList]
GO
/****** Object:  Table [dbo].[ProCart]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ProCart]
GO
/****** Object:  Table [dbo].[ProBrand]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ProBrand]
GO
/****** Object:  Table [dbo].[ProAdvertisement]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ProAdvertisement]
GO
/****** Object:  Table [dbo].[PersonShop]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[PersonShop]
GO
/****** Object:  Table [dbo].[OrderList]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[OrderList]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[NotificationRecording]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[NotificationRecording]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Notification]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Message]
GO
/****** Object:  Table [dbo].[MemberQues]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[MemberQues]
GO
/****** Object:  Table [dbo].[MEMBER_MEMBER]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[MEMBER_MEMBER]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Member]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Manager]
GO
/****** Object:  Table [dbo].[LiveStreamHistory]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[LiveStreamHistory]
GO
/****** Object:  Table [dbo].[LiveStream]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[LiveStream]
GO
/****** Object:  Table [dbo].[LikeUnlikeVideos]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[LikeUnlikeVideos]
GO
/****** Object:  Table [dbo].[Friend]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Friend]
GO
/****** Object:  Table [dbo].[ForumReply]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ForumReply]
GO
/****** Object:  Table [dbo].[ForumComment]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ForumComment]
GO
/****** Object:  Table [dbo].[ForumArticle]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ForumArticle]
GO
/****** Object:  Table [dbo].[ExpressShipping]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[ExpressShipping]
GO
/****** Object:  Table [dbo].[CommentVideosLikeUnlike]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[CommentVideosLikeUnlike]
GO
/****** Object:  Table [dbo].[CommentVideos]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[CommentVideos]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Cart]
GO
/****** Object:  Table [dbo].[Bid]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Bid]
GO
/****** Object:  Table [dbo].[Auction]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP TABLE [dbo].[Auction]
GO
USE [master]
GO
/****** Object:  Database [EEITDB]    Script Date: 2018/5/11 下午 03:23:34 ******/
DROP DATABASE [EEITDB]
GO
/****** Object:  Database [EEITDB]    Script Date: 2018/5/11 下午 03:23:34 ******/
CREATE DATABASE [EEITDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EEITDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EEITDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EEITDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EEITDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EEITDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EEITDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EEITDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EEITDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EEITDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EEITDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EEITDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EEITDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EEITDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EEITDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EEITDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EEITDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EEITDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EEITDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EEITDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EEITDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EEITDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EEITDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EEITDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EEITDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EEITDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EEITDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EEITDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EEITDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EEITDB] SET RECOVERY FULL 
GO
ALTER DATABASE [EEITDB] SET  MULTI_USER 
GO
ALTER DATABASE [EEITDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EEITDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EEITDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EEITDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EEITDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EEITDB', N'ON'
GO
ALTER DATABASE [EEITDB] SET QUERY_STORE = OFF
GO
USE [EEITDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [EEITDB]
GO
/****** Object:  Table [dbo].[Auction]    Script Date: 2018/5/11 下午 03:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auction](
	[account] [varchar](50) NOT NULL,
	[auctionSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[aucBegin] [datetime] NOT NULL,
	[aucEnd] [datetime] NOT NULL,
	[liveStreamSeqNo] [int] NOT NULL,
	[productSeqNo] [bigint] NOT NULL,
	[proPrice] [bigint] NOT NULL,
	[auctionStatus] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Auction] PRIMARY KEY CLUSTERED 
(
	[auctionSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bid]    Script Date: 2018/5/11 下午 03:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bid](
	[auctionSeqNo] [int] NOT NULL,
	[bidSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[bidTime] [datetime] NOT NULL,
	[bidPrice] [varchar](max) NOT NULL,
	[account] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bid] PRIMARY KEY CLUSTERED 
(
	[bidSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2018/5/11 下午 03:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cartSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[orderSeqNo] [int] NOT NULL,
	[productSeqNo] [int] NOT NULL,
	[orderDate] [varchar](20) NOT NULL,
	[shoppingDate] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Cart__7F2BC980D311E8B6] PRIMARY KEY CLUSTERED 
(
	[cartSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentVideos]    Script Date: 2018/5/11 下午 03:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentVideos](
	[commentVideoSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](255) NOT NULL,
	[commentArticle] [varchar](255) NOT NULL,
	[commentDate] [datetime2](7) NOT NULL,
	[commentLike] [int] NOT NULL,
	[commentUnLike] [int] NOT NULL,
	[commentVideoStatus] [varchar](255) NOT NULL,
	[videoSeqNo] [int] NOT NULL,
 CONSTRAINT [PK__CommentV__E23E0716FEE5638D] PRIMARY KEY CLUSTERED 
(
	[commentVideoSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentVideosLikeUnlike]    Script Date: 2018/5/11 下午 03:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentVideosLikeUnlike](
	[commentLikeUnlikeSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](255) NOT NULL,
	[commentLikeUnLikeDate] [datetime2](7) NOT NULL,
	[commentLikeUnLikeScore] [int] NOT NULL,
	[commentLikeUnlikeStatus] [varchar](255) NOT NULL,
	[commentVideoSeqNo] [int] NOT NULL,
 CONSTRAINT [PK__CommentV__506E0B952BB36D2B] PRIMARY KEY CLUSTERED 
(
	[commentLikeUnlikeSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpressShipping]    Script Date: 2018/5/11 下午 03:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpressShipping](
	[ShippingOrder] [nchar](10) NOT NULL,
	[Surcharges] [varchar](50) NOT NULL,
	[CheckVolumetricWeight] [varchar](50) NOT NULL,
	[ShippingDangerousGoods] [varchar](50) NOT NULL,
	[ShippingLithiumBatteries] [varchar](50) NOT NULL,
	[PackagingAdvice] [varchar](50) NOT NULL,
	[OrderSeqNo] [int] NOT NULL,
 CONSTRAINT [PK_ExpressShipping] PRIMARY KEY CLUSTERED 
(
	[ShippingOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForumArticle]    Script Date: 2018/5/11 下午 03:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumArticle](
	[articleSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[articleTitle] [varchar](50) NOT NULL,
	[articleContent] [varchar](max) NOT NULL,
	[articleUploadTime] [datetime] NOT NULL,
	[account] [varchar](50) NOT NULL,
	[articleAccountLastLogin] [datetime] NOT NULL,
	[articleAccountPic] [varbinary](max) NOT NULL,
 CONSTRAINT [PK__ForumArt__0FC14F9217E7E1CC] PRIMARY KEY CLUSTERED 
(
	[articleSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForumComment]    Script Date: 2018/5/11 下午 03:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumComment](
	[commentSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[articleSeqNo] [int] NOT NULL,
	[commentContent] [varchar](1000) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[commentAccountLastLogin] [datetime] NOT NULL,
	[commentAccountPic] [varbinary](max) NOT NULL,
 CONSTRAINT [PK__ForumCom__7870F4E71B725F24] PRIMARY KEY CLUSTERED 
(
	[commentSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForumReply]    Script Date: 2018/5/11 下午 03:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumReply](
	[replySeqNo] [int] IDENTITY(1,1) NOT NULL,
	[commentSeqNo] [int] NOT NULL,
	[account] [varchar](50) NOT NULL,
	[replyContent] [varchar](1000) NOT NULL,
	[replyUploadTime] [datetime] NOT NULL,
 CONSTRAINT [PK__ForumRep__DF30EF7F5ED74100] PRIMARY KEY CLUSTERED 
(
	[replySeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Friend]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friend](
	[friendseqNo] [int] IDENTITY(1,1) NOT NULL,
	[friendsend] [varchar](50) NOT NULL,
	[friendto] [varchar](50) NOT NULL,
	[time] [datetime] NOT NULL,
	[friendStatus] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LikeUnlikeVideos]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LikeUnlikeVideos](
	[likeUnlikeVideosSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[videoSeqNo] [int] NOT NULL,
	[LikeUnlikeVideosStatus] [varchar](50) NOT NULL,
	[likeUnLikeVideosDate] [datetime] NOT NULL,
	[likeUnlikeVideosScore] [int] NOT NULL,
 CONSTRAINT [PK_LikeUnlikeVideos] PRIMARY KEY CLUSTERED 
(
	[likeUnlikeVideosSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiveStream]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiveStream](
	[account] [varchar](50) NOT NULL,
	[liveStreamSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[liveStart] [datetime] NOT NULL,
	[liveEnd] [datetime] NULL,
	[videoSeqNo] [int] NOT NULL,
	[streamName] [varchar](50) NOT NULL,
	[liveStatus] [varchar](50) NOT NULL,
	[liveCoverPath] [varchar](500) NOT NULL,
	[liveCoverName] [varchar](500) NOT NULL,
	[liveStreamPath] [varchar](500) NULL,
	[liveStreamView] [int] NULL,
 CONSTRAINT [PK_LiveStream] PRIMARY KEY CLUSTERED 
(
	[liveStreamSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiveStreamHistory]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiveStreamHistory](
	[account] [varchar](50) NOT NULL,
	[LiveStreamHistorySeqNo] [int] IDENTITY(1,1) NOT NULL,
	[LiveStreamSeqNo] [int] NOT NULL,
	[HistoryTime] [datetime] NOT NULL,
	[LiveStreamStatus] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[managerSeqNo] [int] IDENTITY(20000,1) NOT NULL,
	[managerId] [varchar](500) NOT NULL,
	[managerPwd] [varchar](500) NOT NULL,
	[managerName] [varchar](1000) NOT NULL,
	[managerStatus] [int] NOT NULL,
 CONSTRAINT [PK__Manager__47E0141F1F88A00E] PRIMARY KEY CLUSTERED 
(
	[managerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[memberSeqNo] [int] IDENTITY(10000,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[nickname] [varchar](50) NOT NULL,
	[firstname] [varchar](50) NOT NULL,
	[lastname] [varchar](50) NOT NULL,
	[gender] [varchar](10) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[birthday] [datetime] NOT NULL,
	[photoPath] [varchar](500) NOT NULL,
	[photoName] [varchar](500) NOT NULL,
	[phone] [varchar](15) NOT NULL,
	[registerdate] [datetime] NOT NULL,
	[lastlogin] [datetime] NOT NULL,
	[subscription] [bigint] NOT NULL,
	[ban] [bit] NOT NULL,
 CONSTRAINT [PK__Member__EA162E107C9E0CE0] PRIMARY KEY CLUSTERED 
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEMBER_MEMBER]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEMBER_MEMBER](
	[MemberBean_account] [varchar](255) NOT NULL,
	[faqbean_account] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberBean_account] ASC,
	[faqbean_account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberQues]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberQues](
	[memberQuesSeqNo] [int] IDENTITY(10000,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[memTopic] [varchar](1000) NOT NULL,
	[memTitle] [varchar](1000) NOT NULL,
	[memAsk] [varchar](3000) NOT NULL,
	[memQuesTime] [datetime] NOT NULL,
	[memFileName] [varchar](1000) NOT NULL,
	[memFilePath] [varchar](1000) NOT NULL,
 CONSTRAINT [PK__MemberQu__CEBD0F946CDF9311] PRIMARY KEY CLUSTERED 
(
	[memberQuesSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[messageSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[messageArticle] [varchar](max) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[receiverAccount] [varchar](50) NOT NULL,
	[messageDate] [datetime] NOT NULL,
	[messageStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[messageSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[notificationSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[notificationArticle] [varchar](max) NOT NULL,
	[notificationType] [varchar](50) NOT NULL,
	[notificationDate] [datetime] NOT NULL,
	[notificationStatus] [varchar](50) NOT NULL,
	[account] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Notification_1] PRIMARY KEY CLUSTERED 
(
	[notificationSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationRecording]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationRecording](
	[notificationRecordingSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](255) NOT NULL,
	[receiverAccount] [varchar](255) NULL,
	[notificationSeqNo] [int] NOT NULL,
	[notificationRecordingStatus] [varchar](50) NOT NULL,
	[notificationDate] [datetime] NOT NULL,
	[notificationReadDate] [datetime] NULL,
	[notificationArticle] [varchar](max) NULL,
 CONSTRAINT [PK_notificationRecording] PRIMARY KEY CLUSTERED 
(
	[notificationRecordingSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[productSeqNo] [int] NOT NULL,
	[account] [varchar](20) NOT NULL,
	[orderDate] [datetime] NOT NULL,
	[totalPrice] [decimal](20, 2) NOT NULL,
	[payStatus] [varchar](50) NOT NULL,
	[logisticStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Order__47082FD67F78A013] PRIMARY KEY CLUSTERED 
(
	[orderSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderList]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderList](
	[orderSeqNo] [int] NOT NULL,
	[orderlistSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[proId] [varchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[unitPrice] [decimal](20, 2) NOT NULL,
	[discount] [decimal](10, 1) NOT NULL,
 CONSTRAINT [PK__OrderLis__583C88AFD23D3925] PRIMARY KEY CLUSTERED 
(
	[orderlistSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonShop]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[ProAdvertisement]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[ProBrand]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[ProCart]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[ProCartList]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[ProCategory]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[proName] [varchar](30) NULL,
	[proPicFilePath] [varchar](max) NULL,
	[proPicFileName] [varchar](max) NULL,
	[price] [decimal](20, 2) NULL,
	[brandSeqNo] [int] NULL,
	[proSpeicNo1] [varchar](max) NULL,
	[proSpeicNo2] [varchar](max) NULL,
	[picSeqNo] [int] NULL,
	[prostock] [decimal](10, 2) NULL,
	[prodiscount] [decimal](10, 2) NULL,
	[account] [varchar](50) NULL,
	[proDate] [datetime] NULL,
	[prostatus] [varchar](1) NULL,
	[volume] [varchar](max) NULL,
	[weight] [decimal](10, 2) NULL,
	[transport] [varchar](max) NULL,
	[categorySeqNo] [int] NULL,
 CONSTRAINT [PK__Product__53AA21699EBCF56E] PRIMARY KEY CLUSTERED 
(
	[productSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_1]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[ProductHot]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductHot](
	[productSeqNo] [int] NOT NULL,
	[productHot] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductHotTest]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[ProductPicture]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[ProPayType]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[ProTransport]    Script Date: 2018/5/11 下午 03:23:35 ******/
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
/****** Object:  Table [dbo].[ReplyCommentVideo]    Script Date: 2018/5/11 下午 03:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplyCommentVideo](
	[replyCommentVideoSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[commentVideoSeqNo] [int] NOT NULL,
	[replyCommentArticle] [varchar](max) NOT NULL,
	[replyCommentDate] [datetime] NOT NULL,
	[replyCommentLike] [int] NOT NULL,
	[replyCommentUnLike] [int] NOT NULL,
	[replyCommentVideoStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ReplyCommentVideo] PRIMARY KEY CLUSTERED 
(
	[replyCommentVideoSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReplyCommentVideoLikeUnlike]    Script Date: 2018/5/11 下午 03:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplyCommentVideoLikeUnlike](
	[replyCommentVideoLikeUnlikeSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[replyCommentVideoLikeUnlikeStatus] [varchar](50) NOT NULL,
	[replyCommentVideoLikeUnlikeDate] [datetime] NOT NULL,
	[replyCommentVideoLikeUnLikeScore] [int] NOT NULL,
	[replyCommentVideoSeqNo] [int] NOT NULL,
 CONSTRAINT [PK_ReplyCommentLikeUnlike] PRIMARY KEY CLUSTERED 
(
	[replyCommentVideoLikeUnlikeSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service_ans]    Script Date: 2018/5/11 下午 03:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service_ans](
	[memberQuesNum] [int] NOT NULL,
	[manageNum] [int] NOT NULL,
	[manageResponse] [varchar](255) NOT NULL,
	[memAsk] [varchar](255) NOT NULL,
	[memQuesTime] [date] NOT NULL,
	[memTitle] [varchar](255) NOT NULL,
	[responseDay] [date] NOT NULL,
 CONSTRAINT [PK__service___ED410494534C9A10] PRIMARY KEY CLUSTERED 
(
	[memberQuesNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceAns]    Script Date: 2018/5/11 下午 03:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceAns](
	[serviceAnsSeqNo] [nchar](10) NOT NULL,
	[memberQuesSeqNo] [int] NOT NULL,
	[managerId] [varchar](500) NOT NULL,
	[manageResponse] [varchar](max) NOT NULL,
	[responseDay] [datetime] NOT NULL,
 CONSTRAINT [PK_ServiceAns] PRIMARY KEY CLUSTERED 
(
	[serviceAnsSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscriptionUploader]    Script Date: 2018/5/11 下午 03:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionUploader](
	[subscriptionUploaderSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[uploaderAccount] [varchar](50) NOT NULL,
	[subscriptionUploaderStatus] [varchar](50) NOT NULL,
	[subscriptionUploaderDate] [datetime] NOT NULL,
	[subscriptionUploaderScore] [int] NOT NULL,
 CONSTRAINT [PK_SubscriptionUploader_1] PRIMARY KEY CLUSTERED 
(
	[subscriptionUploaderSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackExpressShipments]    Script Date: 2018/5/11 下午 03:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackExpressShipments](
	[ShippingOrder] [nchar](10) NOT NULL,
	[ShipmentType] [varchar](50) NOT NULL,
	[TrackingNumber] [varchar](50) NOT NULL,
	[TrackingFAQs] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserReports]    Script Date: 2018/5/11 下午 03:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserReports](
	[userReportsSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_1UserReports] PRIMARY KEY CLUSTERED 
(
	[userReportsSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 2018/5/11 下午 03:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[videoSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[videoTitle] [varchar](500) NOT NULL,
	[videoDescription] [varchar](max) NOT NULL,
	[videoType] [varchar](50) NOT NULL,
	[videoUplodaerListType] [varchar](500) NOT NULL,
	[videoUploadDate] [datetime] NOT NULL,
	[videoLikes] [int] NOT NULL,
	[videoUnlikes] [int] NOT NULL,
	[videoViews] [int] NOT NULL,
	[videoStatus] [varchar](50) NOT NULL,
	[videoFilePath] [varchar](500) NOT NULL,
	[VideoFileName] [varchar](500) NOT NULL,
	[videoImageFilePath] [varchar](500) NOT NULL,
	[videoImageFileName] [varchar](500) NOT NULL,
	[account] [varchar](255) NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[videoSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoType]    Script Date: 2018/5/11 下午 03:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoType](
	[sortedVideosSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[videoType] [varchar](50) NOT NULL,
	[sortedVideosScore] [int] NOT NULL,
	[sortedVideosStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SortedVideos] PRIMARY KEY CLUSTERED 
(
	[videoType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WatchHistory]    Script Date: 2018/5/11 下午 03:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatchHistory](
	[watchHistorySeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[videoSeqNo] [int] NOT NULL,
	[watchVideoDate] [datetime] NOT NULL,
	[watchHistoryScore] [int] NOT NULL,
	[watchHistoryStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WatchHistory] PRIMARY KEY CLUSTERED 
(
	[watchHistorySeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WatchLaterVideo]    Script Date: 2018/5/11 下午 03:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatchLaterVideo](
	[watchLaterVideosSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](255) NOT NULL,
	[videoSeqNo] [int] NOT NULL,
	[watchLaterVideoDate] [datetime2](7) NOT NULL,
	[watchLaterVideosScore] [int] NOT NULL,
	[watchLaterVideosStatus] [varchar](255) NOT NULL,
 CONSTRAINT [PK__WatchLat__8F57D8EA2288716D] PRIMARY KEY CLUSTERED 
(
	[watchLaterVideosSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CommentVideos] ON 

INSERT [dbo].[CommentVideos] ([commentVideoSeqNo], [account], [commentArticle], [commentDate], [commentLike], [commentUnLike], [commentVideoStatus], [videoSeqNo]) VALUES (1, N'bob', N'nbmbmvbnm', CAST(N'2018-05-07T21:28:35.7470000' AS DateTime2), 1, 0, N'1', 3)
INSERT [dbo].[CommentVideos] ([commentVideoSeqNo], [account], [commentArticle], [commentDate], [commentLike], [commentUnLike], [commentVideoStatus], [videoSeqNo]) VALUES (2, N'snoopy', N'123', CAST(N'2018-05-09T16:41:41.5430000' AS DateTime2), 0, 0, N'1', 1)
SET IDENTITY_INSERT [dbo].[CommentVideos] OFF
SET IDENTITY_INSERT [dbo].[CommentVideosLikeUnlike] ON 

INSERT [dbo].[CommentVideosLikeUnlike] ([commentLikeUnlikeSeqNo], [account], [commentLikeUnLikeDate], [commentLikeUnLikeScore], [commentLikeUnlikeStatus], [commentVideoSeqNo]) VALUES (1, N'bob', CAST(N'2018-05-07T21:28:36.9060000' AS DateTime2), 0, N'like', 1)
SET IDENTITY_INSERT [dbo].[CommentVideosLikeUnlike] OFF
SET IDENTITY_INSERT [dbo].[Friend] ON 

INSERT [dbo].[Friend] ([friendseqNo], [friendsend], [friendto], [time], [friendStatus]) VALUES (6, N'micky', N'bob', CAST(N'2018-05-09T13:03:32.587' AS DateTime), 0)
INSERT [dbo].[Friend] ([friendseqNo], [friendsend], [friendto], [time], [friendStatus]) VALUES (7, N'snoopy', N'bob', CAST(N'2018-05-09T13:31:53.503' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Friend] OFF
SET IDENTITY_INSERT [dbo].[LikeUnlikeVideos] ON 

INSERT [dbo].[LikeUnlikeVideos] ([likeUnlikeVideosSeqNo], [account], [videoSeqNo], [LikeUnlikeVideosStatus], [likeUnLikeVideosDate], [likeUnlikeVideosScore]) VALUES (1, N'bob', 3, N'like', CAST(N'2018-05-07T21:28:33.467' AS DateTime), 0)
INSERT [dbo].[LikeUnlikeVideos] ([likeUnlikeVideosSeqNo], [account], [videoSeqNo], [LikeUnlikeVideosStatus], [likeUnLikeVideosDate], [likeUnlikeVideosScore]) VALUES (2, N'bob', 1, N'like', CAST(N'2018-05-07T10:25:24.147' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[LikeUnlikeVideos] OFF
SET IDENTITY_INSERT [dbo].[LiveStream] ON 

INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 2, CAST(N'1994-06-30T00:00:00.000' AS DateTime), CAST(N'2018-05-10T12:10:44.407' AS DateTime), 1, N'tttest', N'0', N'C:\resources\images\members\bob\LiveCoverPath\bob.jpg', N'01.jpg', N'42jwUc7LNR0', 114)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'bob', 1028, CAST(N'2018-05-09T14:22:47.427' AS DateTime), CAST(N'2018-05-10T12:18:41.617' AS DateTime), 1, N'asdasdasdas', N'0', N'C:/resources/images/LiveCoverPath/bob/1028/1028.jpg', N'01.jpg', N'06DNNI2R8xE', 3)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1032, CAST(N'2018-05-09T15:53:37.957' AS DateTime), CAST(N'2018-05-10T12:11:33.183' AS DateTime), 1, N'asdasdasTTT', N'0', N'C:/resources/images/LiveCoverPath/micky/1032/1032.jpg', N'pokimane-4.jpg', N'UPXSB2gMsfI', 20)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1033, CAST(N'2018-05-09T15:55:55.913' AS DateTime), CAST(N'2018-05-10T12:15:47.437' AS DateTime), 1, N'OAO', N'0', N'C:/resources/images/LiveCoverPath/micky/1033/1033.jpg', N'pokimane-4.jpg', N'UPXSB2gMsfI', 12)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1034, CAST(N'2018-05-10T12:21:21.557' AS DateTime), CAST(N'2018-05-10T12:21:37.827' AS DateTime), 1, N'TTTEST', N'0', N'C:/resources/images/LiveCoverPath/micky/1034/1034.jpg', N'pokimane-4.jpg', N'RQ45YpSlrDk', 1)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1035, CAST(N'2018-05-10T12:22:22.600' AS DateTime), CAST(N'2018-05-10T17:34:36.363' AS DateTime), 1, N'TTTTTTTTTTT', N'0', N'C:/resources/images/LiveCoverPath/micky/1035/1035.jpg', N'pokimane-4.jpg', N'RQ45YpSlrDk', 45)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1036, CAST(N'2018-05-10T14:54:23.203' AS DateTime), CAST(N'2018-05-10T17:34:36.363' AS DateTime), 1, N'dfasfasfas', N'0', N'C:/resources/images/LiveCoverPath/micky/1036/1036.jpg', N'pokimane-4.jpg', N'T8KMkFjY0B8', 7)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'bob', 1037, CAST(N'2018-05-10T15:57:25.580' AS DateTime), CAST(N'2018-05-10T17:34:36.363' AS DateTime), 1, N'asdasdasdsaf', N'0', N'C:/resources/images/LiveCoverPath/bob/1037/1037.jpg', N'pokimane-4.jpg', N'yvdXkHuV0DE', 5)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1038, CAST(N'2018-05-10T16:37:33.183' AS DateTime), CAST(N'2018-05-10T17:34:36.363' AS DateTime), 1, N'asdasdasd', N'0', N'C:/resources/images/LiveCoverPath/micky/1038/1038.jpg', N'pokimane-4.jpg', N'Qgi6T4_Aipw', 1)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1039, CAST(N'2018-05-10T16:37:44.273' AS DateTime), CAST(N'2018-05-10T16:37:55.783' AS DateTime), 1, N'sadasdas', N'0', N'C:/resources/images/LiveCoverPath/micky/1039/1039.jpg', N'pokimane-4.jpg', N'Qgi6T4_Aipw', 1)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1040, CAST(N'2018-05-10T17:20:49.130' AS DateTime), CAST(N'2018-05-10T17:25:34.630' AS DateTime), 1, N'sadsadasdas', N'0', N'C:/resources/images/LiveCoverPath/micky/1040/1040.jpg', N'pokimane-4.jpg', N'Qgi6T4_Aipw', 5)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1042, CAST(N'2018-05-10T17:21:43.337' AS DateTime), CAST(N'2018-05-10T17:21:51.847' AS DateTime), 1, N'sadsadsa', N'0', N'C:/resources/images/LiveCoverPath/micky/1042/1042.jpg', N'pokimane-4.jpg', N'Qgi6T4_Aipw', 1)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'bob', 1044, CAST(N'2018-05-10T17:33:50.580' AS DateTime), CAST(N'2018-05-10T17:34:36.363' AS DateTime), 1, N'dfafasfasfasfas', N'0', N'C:/resources/images/LiveCoverPath/bob/1044/1044.jpg', N'pokimane-4.jpg', N'Qgi6T4_Aipw', 1)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'bob', 1045, CAST(N'2018-05-10T17:34:47.860' AS DateTime), CAST(N'2018-05-10T17:34:36.363' AS DateTime), 1, N'agfwarqtqet', N'0', N'C:/resources/images/LiveCoverPath/bob/1045/1045.jpg', N'pokimane-4.jpg', N'Qgi6T4_Aipw', 10)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1046, CAST(N'2018-05-10T17:39:22.140' AS DateTime), CAST(N'2018-05-10T17:34:36.363' AS DateTime), 1, N'asdsadasd', N'0', N'C:/resources/images/LiveCoverPath/micky/1046/1046.jpg', N'pokimane-4.jpg', N'yvdXkHuV0DE', 1)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1047, CAST(N'2018-05-10T17:41:30.113' AS DateTime), CAST(N'2018-05-10T17:34:36.363' AS DateTime), 1, N'asfasfasf', N'0', N'C:/resources/images/LiveCoverPath/micky/1047/1047.jpg', N'31950158_1474769975961503_5435932419108634624_n.jpg', N'yvdXkHuV0DE', 1)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1048, CAST(N'2018-05-10T19:07:12.270' AS DateTime), NULL, 1, N'直播直播', N'1', N'C:/resources/images/LiveCoverPath/micky/1048/1048.jpg', N'31947756_1473111092794058_6668525717380136960_n.jpg', N'yvdXkHuV0DE', 4)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'bob', 1049, CAST(N'2018-05-10T19:07:39.903' AS DateTime), NULL, 1, N'直播直播02', N'1', N'C:/resources/images/LiveCoverPath/bob/1049/1049.jpg', N'31950496_1474080516030449_6941997941657698304_n.jpg', N'yvdXkHuV0DE', 9)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'snoopy', 1050, CAST(N'2018-05-10T19:46:39.890' AS DateTime), NULL, 1, N'直播直播03', N'1', N'C:/resources/images/LiveCoverPath/snoopy/1050/1050.jpg', N'30741170_1459842987454202_1009932272272408576_n.jpg', N'mxpfezaHGz0', 2)
SET IDENTITY_INSERT [dbo].[LiveStream] OFF
SET IDENTITY_INSERT [dbo].[LiveStreamHistory] ON 

INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 1, 2, CAST(N'2018-05-09T15:33:59.403' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 2, 2, CAST(N'2018-05-09T15:34:18.997' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 3, 2, CAST(N'2018-05-09T15:34:23.377' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 4, 2, CAST(N'2018-05-09T15:34:33.377' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 5, 2, CAST(N'2018-05-09T15:34:33.540' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 6, 2, CAST(N'2018-05-09T15:34:33.693' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 7, 2, CAST(N'2018-05-09T15:34:33.827' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 8, 2, CAST(N'2018-05-09T15:34:33.963' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 9, 2, CAST(N'2018-05-09T15:39:52.223' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 10, 2, CAST(N'2018-05-09T15:40:01.003' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 11, 2, CAST(N'2018-05-09T15:40:01.157' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 12, 2, CAST(N'2018-05-09T15:40:01.347' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 13, 2, CAST(N'2018-05-09T15:40:01.500' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 15, 2, CAST(N'2018-05-09T15:49:40.000' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 23, 2, CAST(N'2018-05-09T15:49:45.403' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 26, 2, CAST(N'2018-05-09T15:49:46.813' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 27, 2, CAST(N'2018-05-09T15:49:46.957' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 28, 2, CAST(N'2018-05-09T15:49:47.123' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 29, 2, CAST(N'2018-05-09T15:49:47.283' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 34, 2, CAST(N'2018-05-09T15:49:53.980' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 35, 2, CAST(N'2018-05-09T15:49:54.107' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 36, 2, CAST(N'2018-05-09T15:49:54.257' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 40, 1029, CAST(N'2018-05-09T15:52:20.533' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 48, 1032, CAST(N'2018-05-09T15:54:20.000' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 54, 1033, CAST(N'2018-05-09T15:56:20.853' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 55, 1033, CAST(N'2018-05-09T15:56:20.987' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 56, 1033, CAST(N'2018-05-09T15:56:21.147' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 57, 1033, CAST(N'2018-05-09T15:56:21.297' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 62, 1033, CAST(N'2018-05-09T15:56:39.803' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 63, 1033, CAST(N'2018-05-09T16:28:07.213' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 66, 2, CAST(N'2018-05-09T18:05:58.853' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 68, 2, CAST(N'2018-05-10T10:24:57.220' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 69, 2, CAST(N'2018-05-10T10:25:52.873' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 70, 1032, CAST(N'2018-05-10T10:28:02.750' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 71, 1032, CAST(N'2018-05-10T10:28:03.317' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 82, 2, CAST(N'2018-05-10T10:32:16.993' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 83, 2, CAST(N'2018-05-10T10:33:35.687' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 84, 2, CAST(N'2018-05-10T10:35:20.753' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 85, 2, CAST(N'2018-05-10T10:35:23.560' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 86, 2, CAST(N'2018-05-10T10:35:35.430' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 89, 2, CAST(N'2018-05-10T10:48:22.337' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 90, 2, CAST(N'2018-05-10T10:48:41.183' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 91, 2, CAST(N'2018-05-10T10:48:41.930' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 92, 2, CAST(N'2018-05-10T10:48:48.600' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 93, 2, CAST(N'2018-05-10T10:49:02.430' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 94, 2, CAST(N'2018-05-10T10:51:02.077' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 95, 2, CAST(N'2018-05-10T10:51:40.307' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 96, 2, CAST(N'2018-05-10T10:51:52.233' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 97, 2, CAST(N'2018-05-10T10:52:23.887' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 98, 2, CAST(N'2018-05-10T10:52:25.250' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 99, 2, CAST(N'2018-05-10T10:52:34.517' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 100, 2, CAST(N'2018-05-10T10:56:23.610' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 109, 2, CAST(N'2018-05-10T10:58:00.907' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 110, 2, CAST(N'2018-05-10T10:59:43.913' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 111, 2, CAST(N'2018-05-10T10:59:44.170' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 112, 2, CAST(N'2018-05-10T11:02:15.203' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 113, 2, CAST(N'2018-05-10T11:02:33.473' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 114, 2, CAST(N'2018-05-10T11:06:42.653' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 115, 2, CAST(N'2018-05-10T11:07:22.387' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 116, 2, CAST(N'2018-05-10T11:07:24.700' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 117, 2, CAST(N'2018-05-10T11:07:25.300' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 118, 2, CAST(N'2018-05-10T11:08:09.907' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 119, 2, CAST(N'2018-05-10T11:08:12.057' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 120, 2, CAST(N'2018-05-10T11:08:12.570' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 121, 2, CAST(N'2018-05-10T11:08:12.693' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 122, 2, CAST(N'2018-05-10T11:08:12.850' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 123, 2, CAST(N'2018-05-10T11:08:12.987' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 124, 2, CAST(N'2018-05-10T11:09:16.840' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 125, 2, CAST(N'2018-05-10T11:09:24.020' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 126, 2, CAST(N'2018-05-10T11:09:25.217' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 127, 2, CAST(N'2018-05-10T11:09:27.170' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 128, 2, CAST(N'2018-05-10T11:09:28.087' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 129, 2, CAST(N'2018-05-10T11:09:28.717' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 130, 2, CAST(N'2018-05-10T11:09:28.850' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 131, 2, CAST(N'2018-05-10T11:09:29.050' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 132, 2, CAST(N'2018-05-10T11:09:29.257' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 133, 2, CAST(N'2018-05-10T11:09:30.603' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 134, 2, CAST(N'2018-05-10T11:25:44.520' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 135, 2, CAST(N'2018-05-10T11:26:33.277' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 136, 2, CAST(N'2018-05-10T11:27:37.427' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 137, 2, CAST(N'2018-05-10T11:29:06.063' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 138, 2, CAST(N'2018-05-10T11:38:15.897' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 139, 2, CAST(N'2018-05-10T11:38:42.567' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 140, 2, CAST(N'2018-05-10T11:38:43.073' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 153, 2, CAST(N'2018-05-10T11:51:40.183' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 154, 2, CAST(N'2018-05-10T11:51:40.457' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 158, 2, CAST(N'2018-05-10T12:10:06.920' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 159, 2, CAST(N'2018-05-10T12:10:39.260' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 162, 1033, CAST(N'2018-05-10T12:15:45.487' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 164, 1034, CAST(N'2018-05-10T12:21:24.967' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 185, 1035, CAST(N'2018-05-10T13:29:56.903' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 189, 1035, CAST(N'2018-05-10T14:50:01.053' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 190, 1035, CAST(N'2018-05-10T14:53:21.427' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 191, 1036, CAST(N'2018-05-10T14:54:29.803' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 192, 1035, CAST(N'2018-05-10T15:21:22.450' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 193, 1035, CAST(N'2018-05-10T15:22:26.203' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 195, 1035, CAST(N'2018-05-10T15:23:52.823' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 196, 1035, CAST(N'2018-05-10T15:25:15.427' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 197, 1035, CAST(N'2018-05-10T15:26:09.620' AS DateTime), N'1')
GO
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 198, 1035, CAST(N'2018-05-10T15:27:03.537' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 199, 1035, CAST(N'2018-05-10T15:31:56.163' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 200, 1035, CAST(N'2018-05-10T15:32:25.523' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 201, 1035, CAST(N'2018-05-10T15:32:35.747' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 203, 1035, CAST(N'2018-05-10T15:33:32.397' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 204, 1036, CAST(N'2018-05-10T15:33:44.687' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 205, 1036, CAST(N'2018-05-10T15:34:03.503' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 219, 1036, CAST(N'2018-05-10T16:58:22.460' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 223, 1040, CAST(N'2018-05-10T17:22:29.770' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 224, 1040, CAST(N'2018-05-10T17:22:30.367' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 225, 1040, CAST(N'2018-05-10T17:22:30.517' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 226, 1040, CAST(N'2018-05-10T17:22:30.707' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 231, 1045, CAST(N'2018-05-10T17:39:31.977' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 233, 1045, CAST(N'2018-05-10T17:47:26.970' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 240, 1047, CAST(N'2018-05-10T18:05:43.523' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 241, 1036, CAST(N'2018-05-10T19:03:57.517' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 242, 1037, CAST(N'2018-05-10T19:03:59.410' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 251, 1048, CAST(N'2018-05-10T21:06:42.277' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 254, 1048, CAST(N'2018-05-10T21:09:10.557' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 255, 1049, CAST(N'2018-05-10T21:09:28.877' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 256, 1048, CAST(N'2018-05-10T21:09:45.240' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 257, 1048, CAST(N'2018-05-10T21:10:06.397' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 14, 2, CAST(N'2018-05-09T15:48:41.200' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 16, 2, CAST(N'2018-05-09T15:49:42.807' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 17, 2, CAST(N'2018-05-09T15:49:43.260' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 18, 2, CAST(N'2018-05-09T15:49:43.387' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 19, 2, CAST(N'2018-05-09T15:49:43.530' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 20, 2, CAST(N'2018-05-09T15:49:43.677' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 21, 2, CAST(N'2018-05-09T15:49:43.820' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 22, 2, CAST(N'2018-05-09T15:49:43.963' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 24, 2, CAST(N'2018-05-09T15:49:45.547' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 25, 2, CAST(N'2018-05-09T15:49:45.700' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 30, 2, CAST(N'2018-05-09T15:49:50.557' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 31, 2, CAST(N'2018-05-09T15:49:50.690' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 32, 2, CAST(N'2018-05-09T15:49:50.843' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 33, 2, CAST(N'2018-05-09T15:49:51.003' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 37, 2, CAST(N'2018-05-09T15:49:55.733' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 38, 2, CAST(N'2018-05-09T15:49:55.877' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 39, 2, CAST(N'2018-05-09T15:49:56.050' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 41, 1032, CAST(N'2018-05-09T15:53:47.813' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 42, 1032, CAST(N'2018-05-09T15:53:48.693' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 43, 1032, CAST(N'2018-05-09T15:53:48.877' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 44, 1032, CAST(N'2018-05-09T15:53:49.060' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 45, 1032, CAST(N'2018-05-09T15:53:49.210' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 46, 1032, CAST(N'2018-05-09T15:53:49.373' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 47, 1032, CAST(N'2018-05-09T15:53:49.507' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 49, 2, CAST(N'2018-05-09T15:56:08.727' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 50, 2, CAST(N'2018-05-09T15:56:08.883' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 51, 2, CAST(N'2018-05-09T15:56:09.020' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 52, 2, CAST(N'2018-05-09T15:56:09.163' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 53, 1033, CAST(N'2018-05-09T15:56:15.803' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 58, 1033, CAST(N'2018-05-09T15:56:23.460' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 59, 1033, CAST(N'2018-05-09T15:56:23.610' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 60, 1033, CAST(N'2018-05-09T15:56:23.747' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 61, 1033, CAST(N'2018-05-09T15:56:23.900' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 64, 2, CAST(N'2018-05-09T16:44:24.560' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 65, 2, CAST(N'2018-05-09T16:48:54.600' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 67, 2, CAST(N'2018-05-09T18:07:16.013' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 160, 1028, CAST(N'2018-05-10T12:11:26.590' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 161, 1032, CAST(N'2018-05-10T12:11:30.337' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 217, 1038, CAST(N'2018-05-10T16:37:49.587' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 227, 1040, CAST(N'2018-05-10T17:25:33.257' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'snoopy', 250, 1049, CAST(N'2018-05-10T20:56:13.953' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 72, 1032, CAST(N'2018-05-10T10:28:03.490' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 73, 1032, CAST(N'2018-05-10T10:28:03.667' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 74, 1032, CAST(N'2018-05-10T10:28:04.220' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 75, 1032, CAST(N'2018-05-10T10:28:04.533' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 76, 1032, CAST(N'2018-05-10T10:28:05.140' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 77, 1032, CAST(N'2018-05-10T10:28:05.357' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 78, 1032, CAST(N'2018-05-10T10:28:05.767' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 79, 1032, CAST(N'2018-05-10T10:28:05.957' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 80, 1032, CAST(N'2018-05-10T10:28:06.813' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 141, 2, CAST(N'2018-05-10T11:39:23.850' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 142, 2, CAST(N'2018-05-10T11:39:45.690' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 143, 2, CAST(N'2018-05-10T11:40:28.217' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 144, 2, CAST(N'2018-05-10T11:45:13.230' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 145, 2, CAST(N'2018-05-10T11:45:13.857' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 146, 2, CAST(N'2018-05-10T11:46:21.913' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 147, 2, CAST(N'2018-05-10T11:46:29.833' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 148, 2, CAST(N'2018-05-10T11:46:30.493' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 149, 2, CAST(N'2018-05-10T11:46:30.540' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 150, 2, CAST(N'2018-05-10T11:48:13.427' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 151, 2, CAST(N'2018-05-10T11:51:36.473' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 152, 2, CAST(N'2018-05-10T11:51:40.183' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 155, 2, CAST(N'2018-05-10T12:03:14.873' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 156, 2, CAST(N'2018-05-10T12:04:47.833' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 157, 2, CAST(N'2018-05-10T12:04:57.827' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 175, 1035, CAST(N'2018-05-10T12:23:19.557' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 176, 1035, CAST(N'2018-05-10T12:23:20.403' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 177, 1035, CAST(N'2018-05-10T12:23:23.983' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 178, 1035, CAST(N'2018-05-10T12:23:25.137' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 179, 1035, CAST(N'2018-05-10T12:23:32.433' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 180, 1035, CAST(N'2018-05-10T12:27:42.877' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 181, 1035, CAST(N'2018-05-10T12:27:58.683' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 182, 1035, CAST(N'2018-05-10T12:28:11.220' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 183, 1035, CAST(N'2018-05-10T12:30:33.837' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 184, 1035, CAST(N'2018-05-10T12:33:38.080' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 186, 1035, CAST(N'2018-05-10T14:16:04.257' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 187, 1035, CAST(N'2018-05-10T14:19:32.607' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 188, 1035, CAST(N'2018-05-10T14:24:28.847' AS DateTime), N'1')
GO
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 194, 1035, CAST(N'2018-05-10T15:23:44.097' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 202, 1035, CAST(N'2018-05-10T15:32:56.757' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 208, 1037, CAST(N'2018-05-10T15:57:59.747' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 212, 1035, CAST(N'2018-05-10T16:06:59.420' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 213, 1036, CAST(N'2018-05-10T16:07:10.990' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 214, 1035, CAST(N'2018-05-10T16:07:31.880' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 215, 1036, CAST(N'2018-05-10T16:18:22.820' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 218, 1039, CAST(N'2018-05-10T16:37:54.463' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 220, 1037, CAST(N'2018-05-10T17:01:17.047' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 222, 1042, CAST(N'2018-05-10T17:21:50.440' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 230, 1045, CAST(N'2018-05-10T17:36:33.667' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 232, 1046, CAST(N'2018-05-10T17:41:16.983' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 234, 1045, CAST(N'2018-05-10T17:47:32.320' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 235, 1045, CAST(N'2018-05-10T17:49:29.853' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 236, 1045, CAST(N'2018-05-10T17:49:30.063' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 237, 1045, CAST(N'2018-05-10T17:49:30.310' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 238, 1045, CAST(N'2018-05-10T17:49:30.537' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 239, 1045, CAST(N'2018-05-10T17:49:32.430' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 243, 1049, CAST(N'2018-05-10T19:13:14.250' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 244, 1049, CAST(N'2018-05-10T19:13:16.250' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 245, 1049, CAST(N'2018-05-10T19:13:16.397' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 246, 1049, CAST(N'2018-05-10T19:13:16.573' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 247, 1049, CAST(N'2018-05-10T19:13:16.740' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 248, 1049, CAST(N'2018-05-10T19:13:16.910' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 249, 1049, CAST(N'2018-05-10T19:13:17.077' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 252, 1050, CAST(N'2018-05-10T21:08:13.457' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 253, 1050, CAST(N'2018-05-10T21:09:02.323' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 81, 2, CAST(N'2018-05-10T10:32:02.863' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 101, 2, CAST(N'2018-05-10T10:57:15.613' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 102, 2, CAST(N'2018-05-10T10:57:15.863' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 103, 2, CAST(N'2018-05-10T10:57:16.077' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 104, 2, CAST(N'2018-05-10T10:57:16.230' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 105, 2, CAST(N'2018-05-10T10:57:18.100' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 106, 2, CAST(N'2018-05-10T10:57:18.430' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 107, 2, CAST(N'2018-05-10T10:57:18.630' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 108, 2, CAST(N'2018-05-10T10:57:56.347' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 163, 1028, CAST(N'2018-05-10T12:18:39.817' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'visitor', 87, 2, CAST(N'2018-05-10T10:35:39.480' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 88, 2, CAST(N'2018-05-10T10:35:53.260' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 165, 1035, CAST(N'2018-05-10T12:22:28.800' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 166, 1035, CAST(N'2018-05-10T12:22:29.357' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 167, 1035, CAST(N'2018-05-10T12:22:29.520' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 168, 1035, CAST(N'2018-05-10T12:22:29.680' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 169, 1035, CAST(N'2018-05-10T12:22:32.290' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 170, 1035, CAST(N'2018-05-10T12:22:32.617' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 171, 1035, CAST(N'2018-05-10T12:22:32.743' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 172, 1035, CAST(N'2018-05-10T12:22:32.863' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 173, 1035, CAST(N'2018-05-10T12:22:33.007' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 174, 1035, CAST(N'2018-05-10T12:22:53.490' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 206, 1035, CAST(N'2018-05-10T15:55:00.980' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 207, 1035, CAST(N'2018-05-10T15:55:12.660' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 209, 1035, CAST(N'2018-05-10T16:05:28.843' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 210, 1035, CAST(N'2018-05-10T16:06:02.567' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 211, 1037, CAST(N'2018-05-10T16:06:06.890' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'micky', 216, 1035, CAST(N'2018-05-10T16:18:41.177' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 221, 1037, CAST(N'2018-05-10T17:01:26.287' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 228, 1044, CAST(N'2018-05-10T17:34:28.727' AS DateTime), N'1')
INSERT [dbo].[LiveStreamHistory] ([account], [LiveStreamHistorySeqNo], [LiveStreamSeqNo], [HistoryTime], [LiveStreamStatus]) VALUES (N'bob', 229, 1045, CAST(N'2018-05-10T17:34:50.737' AS DateTime), N'1')
SET IDENTITY_INSERT [dbo].[LiveStreamHistory] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([memberSeqNo], [account], [password], [nickname], [firstname], [lastname], [gender], [email], [address], [birthday], [photoPath], [photoName], [phone], [registerdate], [lastlogin], [subscription], [ban]) VALUES (10004, N'AXB', N'56j50da5ek2', N'DD', N'ASAA', N'CC', N'男性', N'axbxsd10@gmail.com', N'1321231', CAST(N'2019-12-30T00:00:00.000' AS DateTime), N'C:/resources/images/members/AXB/photo/AXB.jpg', N'1001.jpg', N'121321', CAST(N'2018-05-09T15:51:45.143' AS DateTime), CAST(N'2018-05-09T15:51:45.143' AS DateTime), 0, 0)
INSERT [dbo].[Member] ([memberSeqNo], [account], [password], [nickname], [firstname], [lastname], [gender], [email], [address], [birthday], [photoPath], [photoName], [phone], [registerdate], [lastlogin], [subscription], [ban]) VALUES (10000, N'bob', N'123', N'BOB', N'包柏', N'陳', N'男性', N'2222@gmail.com', N'台北市', CAST(N'1968-06-04T00:00:00.000' AS DateTime), N'C:/resources/images/members/bob/photo/bob.jpg', N'java.jpg', N'0937123456', CAST(N'2018-05-06T14:34:24.653' AS DateTime), CAST(N'2018-05-11T15:02:57.167' AS DateTime), 0, 0)
INSERT [dbo].[Member] ([memberSeqNo], [account], [password], [nickname], [firstname], [lastname], [gender], [email], [address], [birthday], [photoPath], [photoName], [phone], [registerdate], [lastlogin], [subscription], [ban]) VALUES (10005, N'dddsda', N'123', N'123', N'123', N'123', N'男性', N'123@123', N'', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'C:/resources/images/members/dddsda/photo/dddsda.jpg', N'1001.jpg', N'5555555', CAST(N'2018-05-10T09:16:17.143' AS DateTime), CAST(N'2018-05-10T09:16:17.143' AS DateTime), 0, 0)
INSERT [dbo].[Member] ([memberSeqNo], [account], [password], [nickname], [firstname], [lastname], [gender], [email], [address], [birthday], [photoPath], [photoName], [phone], [registerdate], [lastlogin], [subscription], [ban]) VALUES (10003, N'jerry', N'lekc900fi8kdji', N'小87', N'米', N'米', N'男性', N'sara77656@gmail.com', N'123131231', CAST(N'2018-12-29T00:00:00.000' AS DateTime), N'C:/resources/images/members/jerry/photo/jerry.jpg', N'h1.jpg', N'213113213', CAST(N'2018-05-09T15:36:11.000' AS DateTime), CAST(N'2018-05-09T15:36:11.000' AS DateTime), 0, 0)
INSERT [dbo].[Member] ([memberSeqNo], [account], [password], [nickname], [firstname], [lastname], [gender], [email], [address], [birthday], [photoPath], [photoName], [phone], [registerdate], [lastlogin], [subscription], [ban]) VALUES (10001, N'micky', N'123', N'MICKY', N'米奇', N'陳', N'男性', N'333@gmail.com', N'台灣', CAST(N'2018-05-03T00:00:00.000' AS DateTime), N'C:/resources/images/members/micky/photo/micky.png', N'javascript.png', N'0937456789', CAST(N'2018-05-06T14:35:36.587' AS DateTime), CAST(N'2018-05-11T15:00:11.757' AS DateTime), 0, 0)
INSERT [dbo].[Member] ([memberSeqNo], [account], [password], [nickname], [firstname], [lastname], [gender], [email], [address], [birthday], [photoPath], [photoName], [phone], [registerdate], [lastlogin], [subscription], [ban]) VALUES (10002, N'snoopy', N'123', N'SNOOPY', N'奴比', N'使', N'男性', N'444@gmail.com', N'天堂', CAST(N'1966-01-03T00:00:00.000' AS DateTime), N'C:/resources/images/members/snoopy/photo/snoopy.jpg', N'net.jpg', N'0932963852', CAST(N'2018-05-06T14:36:53.253' AS DateTime), CAST(N'2018-05-11T11:37:36.543' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[MemberQues] ON 

INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10000, N'micky', N'直播', N'dd', N'ddd', CAST(N'2018-05-03T22:57:45.217' AS DateTime), N'02.jpg', N'xx')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10003, N'micky', N'直播', N'ooo', N'ooo', CAST(N'2018-05-04T09:20:21.380' AS DateTime), N'02.jpg', N'xxx')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10005, N'micky', N'直播', N'ooo', N'ooo', CAST(N'2018-05-04T09:21:21.020' AS DateTime), N'02.jpg', N'xxx')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10006, N'kitty', N'直播', N'xxx', N'ooo', CAST(N'2018-05-04T09:28:48.317' AS DateTime), N'01.jpg', N'xxx')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10007, N'kitty', N'直播', N'zzz', N'ooo', CAST(N'2018-05-04T09:31:54.460' AS DateTime), N'01.jpg', N'xx')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10008, N'kitty', N'直播', N'zzz', N'ooo', CAST(N'2018-05-04T09:31:59.677' AS DateTime), N'01.jpg', N'xx')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10009, N'kitty', N'直播', N'zzz', N'ooo', CAST(N'2018-05-04T09:32:03.220' AS DateTime), N'01.jpg', N'xx')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10010, N'micky', N'直播', N'ads', N'fasdfasdf', CAST(N'2018-05-04T10:28:40.633' AS DateTime), N'02.jpg', N'xx')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10011, N'micky', N'直播', N'ads', N'fasdfasdf', CAST(N'2018-05-04T10:29:15.230' AS DateTime), N'02.jpg', N'xxx')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10012, N'micky', N'直播', N'fdsfasdf', N'das', CAST(N'2018-05-04T11:14:24.110' AS DateTime), N'01.jpg', N'xxx')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10013, N'micky', N'直播', N'12312', N'312312321', CAST(N'2018-05-04T14:16:28.690' AS DateTime), N'01.jpg', N'C:/resources/images/video/micky/.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10014, N'micky', N'直播', N'12312', N'312312321', CAST(N'2018-05-04T14:27:57.897' AS DateTime), N'01.jpg', N'C:/resources/images/micky/.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10015, N'micky', N'直播', N'12312', N'312312321', CAST(N'2018-05-04T14:30:04.623' AS DateTime), N'01.jpg', N'C:/resources/images/micky/01.jpg.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10016, N'micky', N'直播', N'12312', N'312312321', CAST(N'2018-05-04T14:39:14.337' AS DateTime), N'01.jpg', N'C:/resources/images/micky/01.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10017, N'micky', N'直播', N'12312', N'312312321', CAST(N'2018-05-04T14:39:29.413' AS DateTime), N'01.jpg', N'C:/resources/images/micky/01.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10018, N'micky', N'直播', N'12312', N'312312321', CAST(N'2018-05-04T14:39:44.527' AS DateTime), N'01.jpg', N'C:/resources/images/micky/01.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10019, N'micky', N'直播', N'第一次新增', N'第一次來', CAST(N'2018-05-04T14:40:10.707' AS DateTime), N'02.jpg', N'C:/resources/images/micky/02.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10020, N'micky', N'直播', N'第一次新增', N'第一次來', CAST(N'2018-05-04T14:47:45.693' AS DateTime), N'02.jpg', N'C:/resources/images/micky/02.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10021, N'micky', N'直播', N'第一次新增', N'第一次來', CAST(N'2018-05-04T14:48:17.427' AS DateTime), N'02.jpg', N'C:/resources/images/micky/02.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10022, N'micky', N'直播', N'第一次新增', N'第一次來', CAST(N'2018-05-04T14:51:20.193' AS DateTime), N'02.jpg', N'C:/resources/images/micky/02.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10023, N'micky', N'直播', N'第一次新增', N'第一次來', CAST(N'2018-05-04T14:51:45.313' AS DateTime), N'02.jpg', N'C:/resources/images/micky/02.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10024, N'micky', N'直播', N'第一次新增', N'第一次來', CAST(N'2018-05-04T14:51:48.717' AS DateTime), N'02.jpg', N'C:/resources/images/micky/02.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10025, N'micky', N'直播', N'第一次新增', N'第一次來', CAST(N'2018-05-04T15:14:37.063' AS DateTime), N'02.jpg', N'C:/resources/images/micky/02.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10026, N'micky', N'直播', N'第一次新增', N'第一次來', CAST(N'2018-05-04T15:15:19.860' AS DateTime), N'02.jpg', N'C:/resources/images/micky/02.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10027, N'micky', N'直播', N'第一次新增', N'第一次來', CAST(N'2018-05-04T15:21:14.613' AS DateTime), N'02.jpg', N'C:/resources/images/micky/02.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10028, N'micky', N'直播', N'第2次來', N'第2次來', CAST(N'2018-05-04T15:45:06.877' AS DateTime), N'02.jpg', N'C:/resources/images/micky/02.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10029, N'micky', N'直播', N'ad', N'fasdfasdfa', CAST(N'2018-05-05T14:43:16.713' AS DateTime), N'01.jpg', N'C:/resources/images/micky/01.jpg')
INSERT [dbo].[MemberQues] ([memberQuesSeqNo], [account], [memTopic], [memTitle], [memAsk], [memQuesTime], [memFileName], [memFilePath]) VALUES (10030, N'asdf', N'直播', N'asdf', N'asdf', CAST(N'2018-05-07T16:37:59.980' AS DateTime), N'02.jpg', N'C:/resources/images/asdf/02.jpg')
SET IDENTITY_INSERT [dbo].[MemberQues] OFF
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
SET IDENTITY_INSERT [dbo].[ReplyCommentVideo] ON 

INSERT [dbo].[ReplyCommentVideo] ([replyCommentVideoSeqNo], [account], [commentVideoSeqNo], [replyCommentArticle], [replyCommentDate], [replyCommentLike], [replyCommentUnLike], [replyCommentVideoStatus]) VALUES (1, N'bob', 1, N'vbnm', CAST(N'2018-05-07T21:28:38.897' AS DateTime), 0, 0, N'1')
INSERT [dbo].[ReplyCommentVideo] ([replyCommentVideoSeqNo], [account], [commentVideoSeqNo], [replyCommentArticle], [replyCommentDate], [replyCommentLike], [replyCommentUnLike], [replyCommentVideoStatus]) VALUES (2, N'snoopy', 2, N'123xxx', CAST(N'2018-05-09T16:41:51.687' AS DateTime), 0, 0, N'1')
SET IDENTITY_INSERT [dbo].[ReplyCommentVideo] OFF
SET IDENTITY_INSERT [dbo].[ReplyCommentVideoLikeUnlike] ON 

INSERT [dbo].[ReplyCommentVideoLikeUnlike] ([replyCommentVideoLikeUnlikeSeqNo], [account], [replyCommentVideoLikeUnlikeStatus], [replyCommentVideoLikeUnlikeDate], [replyCommentVideoLikeUnLikeScore], [replyCommentVideoSeqNo]) VALUES (1, N'snoopy', N'none', CAST(N'2018-05-09T16:41:55.180' AS DateTime), 0, 2)
SET IDENTITY_INSERT [dbo].[ReplyCommentVideoLikeUnlike] OFF
SET IDENTITY_INSERT [dbo].[SubscriptionUploader] ON 

INSERT [dbo].[SubscriptionUploader] ([subscriptionUploaderSeqNo], [account], [uploaderAccount], [subscriptionUploaderStatus], [subscriptionUploaderDate], [subscriptionUploaderScore]) VALUES (1, N'bob', N'bob', N'subscription', CAST(N'2018-05-07T09:30:34.097' AS DateTime), 0)
INSERT [dbo].[SubscriptionUploader] ([subscriptionUploaderSeqNo], [account], [uploaderAccount], [subscriptionUploaderStatus], [subscriptionUploaderDate], [subscriptionUploaderScore]) VALUES (2, N'snoopy', N'bob', N'subscription', CAST(N'2018-05-09T09:11:50.410' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[SubscriptionUploader] OFF
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([videoSeqNo], [videoTitle], [videoDescription], [videoType], [videoUplodaerListType], [videoUploadDate], [videoLikes], [videoUnlikes], [videoViews], [videoStatus], [videoFilePath], [VideoFileName], [videoImageFilePath], [videoImageFileName], [account]) VALUES (1, N'影片標題', N'影片描述', N'音樂', N'', CAST(N'2018-05-06T14:39:52.587' AS DateTime), 1, 1, 7, N'1', N'C:/resources/videos/video/bob/bob_2.mp4', N'videoplayback.mp4', N'C:/resources/images/video/bob/bob_2.jpeg', N'videoImage.jpeg', N'bob')
INSERT [dbo].[Video] ([videoSeqNo], [videoTitle], [videoDescription], [videoType], [videoUplodaerListType], [videoUploadDate], [videoLikes], [videoUnlikes], [videoViews], [videoStatus], [videoFilePath], [VideoFileName], [videoImageFilePath], [videoImageFileName], [account]) VALUES (2, N'跟iPhone完美連動！？Apple藍牙耳機AirPods開箱！【小馬 】', N'? 訂閱小馬：https://goo.gl/C6in0o ?Instagram：lin19940 ?FB粉絲專頁:https://www.facebook.com/lin19940/ - - - - - - - - - - - - - - - - - - - - - - 藍牙耳機這項科技已經有許多年了 apple終於在今年年初推出了藍牙耳機airpods 不過實在是很難買到 過了這麼久終於買到了 實測過後發現airpods真的很實用 跟iPhone的連動也是花了一番功夫 只是有些小缺點 我就來為AirPods做個簡單的評測吧～ - - - - - - - - - - - - - - - - - - - - - - 也許你會喜歡： Apple iOS 11介紹：https://youtu.be/MJZyCT5DTww  4.5G網路解析：https://youtu.be/_wrqFWFlrus', N'科技', N'', CAST(N'2018-05-06T14:41:32.997' AS DateTime), 0, 1, 4, N'1', N'C:/resources/videos/video/bob/bob_3.mp4', N'2.mp4', N'C:/resources/images/video/bob/bob_3.jpeg', N'videoImage.jpeg', N'bob')
INSERT [dbo].[Video] ([videoSeqNo], [videoTitle], [videoDescription], [videoType], [videoUplodaerListType], [videoUploadDate], [videoLikes], [videoUnlikes], [videoViews], [videoStatus], [videoFilePath], [VideoFileName], [videoImageFilePath], [videoImageFileName], [account]) VALUES (3, N'iPhone 8 and iPhone 8 Plus — Unveiled — Apple', N'iPhone 8 and iPhone 8 Plus. A new durable glass design and Retina HD display with True Tone. Wireless charging, augmented reality, and even better cameras. A11 Bionic, the most powerful and smartest chip in a smartphone. And introducing Portrait Lighting on iPhone 8 Plus. A new generation of iPhone.   Learn more: http://apple.com/iphone-8  Song: “Area” by MagnusTheMagnus https://itunes.apple.com/us/album/are...  The AirPower mat has not been authorized as required by the rules of the Federal Communications Commission. This device is not, and may not be, offered for sale or lease, or sold or leased, until authorization is obtained.', N'科技', N'', CAST(N'2018-05-06T14:43:23.783' AS DateTime), 2, 0, 9, N'1', N'C:/resources/videos/video/bob/bob_4.mp4', N'3.mp4', N'C:/resources/images/video/bob/bob_4.jpeg', N'videoImage.jpeg', N'bob')
INSERT [dbo].[Video] ([videoSeqNo], [videoTitle], [videoDescription], [videoType], [videoUplodaerListType], [videoUploadDate], [videoLikes], [videoUnlikes], [videoViews], [videoStatus], [videoFilePath], [VideoFileName], [videoImageFilePath], [videoImageFileName], [account]) VALUES (4, N'Game 3: Cleveland Cavaliers vs Toronto Raptors | 2018 NBA Playoffs', N'Game 3: Cleveland Cavaliers vs Toronto Raptors | 2018 NBA Playoffs', N'運動', N'', CAST(N'2018-05-06T14:44:56.130' AS DateTime), 1, 0, 2, N'1', N'C:/resources/videos/video/bob/bob_5.mp4', N'4.mp4', N'C:/resources/images/video/bob/bob_5.jpeg', N'videoImage.jpeg', N'bob')
SET IDENTITY_INSERT [dbo].[Video] OFF
SET IDENTITY_INSERT [dbo].[VideoType] ON 

INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (1, N'其他', 0, N'1')
INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (2, N'直播', 0, N'1')
INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (3, N'政治', 0, N'1')
INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (4, N'科技', 0, N'1')
INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (5, N'美食', 0, N'1')
INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (6, N'音樂', 0, N'1')
INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (7, N'時尚', 0, N'1')
INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (8, N'新聞', 0, N'1')
INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (9, N'運動', 0, N'1')
INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (10, N'遊戲', 0, N'1')
INSERT [dbo].[VideoType] ([sortedVideosSeqNo], [videoType], [sortedVideosScore], [sortedVideosStatus]) VALUES (11, N'電影', 0, N'1')
SET IDENTITY_INSERT [dbo].[VideoType] OFF
SET IDENTITY_INSERT [dbo].[WatchHistory] ON 

INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (1, N'bob', 3, CAST(N'2018-05-07T09:30:26.027' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (2, N'bob', 1, CAST(N'2018-05-07T10:24:58.653' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (3, N'bob', 1, CAST(N'2018-05-07T10:25:22.293' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (4, N'bob', 1, CAST(N'2018-05-07T10:36:06.193' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (5, N'bob', 3, CAST(N'2018-05-07T21:28:30.687' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (6, N'bob', 3, CAST(N'2018-05-07T21:28:40.467' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (7, N'micky', 3, CAST(N'2018-05-08T10:26:49.570' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (8, N'micky', 1, CAST(N'2018-05-08T10:26:53.690' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (9, N'micky', 3, CAST(N'2018-05-08T10:28:39.987' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (10, N'micky', 1, CAST(N'2018-05-08T10:46:43.300' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (11, N'micky', 3, CAST(N'2018-05-08T10:58:40.870' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (12, N'micky', 2, CAST(N'2018-05-08T16:49:01.080' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (13, N'snoopy', 2, CAST(N'2018-05-09T09:10:04.013' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (14, N'snoopy', 2, CAST(N'2018-05-09T09:11:48.773' AS DateTime), 0, N'1')
INSERT [dbo].[WatchHistory] ([watchHistorySeqNo], [account], [videoSeqNo], [watchVideoDate], [watchHistoryScore], [watchHistoryStatus]) VALUES (15, N'snoopy', 1, CAST(N'2018-05-09T16:41:30.997' AS DateTime), 0, N'1')
SET IDENTITY_INSERT [dbo].[WatchHistory] OFF
SET IDENTITY_INSERT [dbo].[WatchLaterVideo] ON 

INSERT [dbo].[WatchLaterVideo] ([watchLaterVideosSeqNo], [account], [videoSeqNo], [watchLaterVideoDate], [watchLaterVideosScore], [watchLaterVideosStatus]) VALUES (1, N'bob', 1, CAST(N'2018-05-07T09:26:37.3080000' AS DateTime2), 0, N'1')
INSERT [dbo].[WatchLaterVideo] ([watchLaterVideosSeqNo], [account], [videoSeqNo], [watchLaterVideoDate], [watchLaterVideosScore], [watchLaterVideosStatus]) VALUES (2, N'bob', 2, CAST(N'2018-05-07T09:26:40.9500000' AS DateTime2), 0, N'0')
INSERT [dbo].[WatchLaterVideo] ([watchLaterVideosSeqNo], [account], [videoSeqNo], [watchLaterVideoDate], [watchLaterVideosScore], [watchLaterVideosStatus]) VALUES (3, N'bob', 4, CAST(N'2018-05-07T09:29:55.6870000' AS DateTime2), 0, N'1')
INSERT [dbo].[WatchLaterVideo] ([watchLaterVideosSeqNo], [account], [videoSeqNo], [watchLaterVideoDate], [watchLaterVideosScore], [watchLaterVideosStatus]) VALUES (4, N'bob', 3, CAST(N'2018-05-07T09:29:59.1430000' AS DateTime2), 0, N'1')
INSERT [dbo].[WatchLaterVideo] ([watchLaterVideosSeqNo], [account], [videoSeqNo], [watchLaterVideoDate], [watchLaterVideosScore], [watchLaterVideosStatus]) VALUES (5, N'micky', 3, CAST(N'2018-05-08T10:27:38.5670000' AS DateTime2), 0, N'1')
INSERT [dbo].[WatchLaterVideo] ([watchLaterVideosSeqNo], [account], [videoSeqNo], [watchLaterVideoDate], [watchLaterVideosScore], [watchLaterVideosStatus]) VALUES (6, N'micky', 2, CAST(N'2018-05-08T10:28:44.9230000' AS DateTime2), 0, N'1')
SET IDENTITY_INSERT [dbo].[WatchLaterVideo] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_lrj7q9gjmmuqmuke1slpj2wbv]    Script Date: 2018/5/11 下午 03:23:36 ******/
ALTER TABLE [dbo].[MEMBER_MEMBER] ADD  CONSTRAINT [UK_lrj7q9gjmmuqmuke1slpj2wbv] UNIQUE NONCLUSTERED 
(
	[faqbean_account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_1otx0mgvjfsjh6722pmmkog5t]    Script Date: 2018/5/11 下午 03:23:36 ******/
CREATE NONCLUSTERED INDEX [UK_1otx0mgvjfsjh6722pmmkog5t] ON [dbo].[MemberQues]
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auction]  WITH CHECK ADD  CONSTRAINT [FK_Auction_LiveStream] FOREIGN KEY([liveStreamSeqNo])
REFERENCES [dbo].[LiveStream] ([liveStreamSeqNo])
GO
ALTER TABLE [dbo].[Auction] CHECK CONSTRAINT [FK_Auction_LiveStream]
GO
ALTER TABLE [dbo].[Auction]  WITH CHECK ADD  CONSTRAINT [FK_Auction_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[Auction] CHECK CONSTRAINT [FK_Auction_Member]
GO
ALTER TABLE [dbo].[Bid]  WITH CHECK ADD  CONSTRAINT [FK_Bid_Auction] FOREIGN KEY([auctionSeqNo])
REFERENCES [dbo].[Auction] ([auctionSeqNo])
GO
ALTER TABLE [dbo].[Bid] CHECK CONSTRAINT [FK_Bid_Auction]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Order] FOREIGN KEY([orderSeqNo])
REFERENCES [dbo].[Order] ([orderSeqNo])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Order]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([productSeqNo])
REFERENCES [dbo].[Product] ([productSeqNo])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[ExpressShipping]  WITH CHECK ADD  CONSTRAINT [FK_ExpressShipping_Order] FOREIGN KEY([OrderSeqNo])
REFERENCES [dbo].[Order] ([orderSeqNo])
GO
ALTER TABLE [dbo].[ExpressShipping] CHECK CONSTRAINT [FK_ExpressShipping_Order]
GO
ALTER TABLE [dbo].[ForumArticle]  WITH CHECK ADD  CONSTRAINT [FK_ForumArticle_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[ForumArticle] CHECK CONSTRAINT [FK_ForumArticle_Member]
GO
ALTER TABLE [dbo].[ForumComment]  WITH CHECK ADD  CONSTRAINT [FK_ForumComment_ForumArticle] FOREIGN KEY([articleSeqNo])
REFERENCES [dbo].[ForumArticle] ([articleSeqNo])
GO
ALTER TABLE [dbo].[ForumComment] CHECK CONSTRAINT [FK_ForumComment_ForumArticle]
GO
ALTER TABLE [dbo].[ForumComment]  WITH CHECK ADD  CONSTRAINT [FK_ForumComment_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[ForumComment] CHECK CONSTRAINT [FK_ForumComment_Member]
GO
ALTER TABLE [dbo].[ForumReply]  WITH CHECK ADD  CONSTRAINT [FK_ForumReply_ForumComment] FOREIGN KEY([commentSeqNo])
REFERENCES [dbo].[ForumComment] ([commentSeqNo])
GO
ALTER TABLE [dbo].[ForumReply] CHECK CONSTRAINT [FK_ForumReply_ForumComment]
GO
ALTER TABLE [dbo].[ForumReply]  WITH CHECK ADD  CONSTRAINT [FK_ForumReply_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[ForumReply] CHECK CONSTRAINT [FK_ForumReply_Member]
GO
ALTER TABLE [dbo].[Friend]  WITH CHECK ADD  CONSTRAINT [FK_Friend_Member] FOREIGN KEY([friendsend])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[Friend] CHECK CONSTRAINT [FK_Friend_Member]
GO
ALTER TABLE [dbo].[LikeUnlikeVideos]  WITH CHECK ADD  CONSTRAINT [FK_LikeUnlikeVideos_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[LikeUnlikeVideos] CHECK CONSTRAINT [FK_LikeUnlikeVideos_Member]
GO
ALTER TABLE [dbo].[LikeUnlikeVideos]  WITH CHECK ADD  CONSTRAINT [FK_LikeUnlikeVideos_Video] FOREIGN KEY([videoSeqNo])
REFERENCES [dbo].[Video] ([videoSeqNo])
GO
ALTER TABLE [dbo].[LikeUnlikeVideos] CHECK CONSTRAINT [FK_LikeUnlikeVideos_Video]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FKh86ayrro928dnhe7urkhsymrd] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FKh86ayrro928dnhe7urkhsymrd]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FKjxhc0s2xa2m472ffeq3wtv3b7] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FKjxhc0s2xa2m472ffeq3wtv3b7]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Member]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Member1] FOREIGN KEY([receiverAccount])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Member1]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Member]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([productSeqNo])
REFERENCES [dbo].[Product] ([productSeqNo])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [FK_OrderList_Order] FOREIGN KEY([orderSeqNo])
REFERENCES [dbo].[Order] ([orderSeqNo])
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [FK_OrderList_Order]
GO
ALTER TABLE [dbo].[ProCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductClass_ProductClass] FOREIGN KEY([classChildName])
REFERENCES [dbo].[ProCategory] ([className])
GO
ALTER TABLE [dbo].[ProCategory] CHECK CONSTRAINT [FK_ProductClass_ProductClass]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Member]
GO
ALTER TABLE [dbo].[ReplyCommentVideo]  WITH CHECK ADD  CONSTRAINT [FK_ReplyCommentVideo_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[ReplyCommentVideo] CHECK CONSTRAINT [FK_ReplyCommentVideo_Member]
GO
ALTER TABLE [dbo].[ReplyCommentVideoLikeUnlike]  WITH CHECK ADD  CONSTRAINT [FK_ReplyCommentVideoLikeUnlike_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[ReplyCommentVideoLikeUnlike] CHECK CONSTRAINT [FK_ReplyCommentVideoLikeUnlike_Member]
GO
ALTER TABLE [dbo].[ReplyCommentVideoLikeUnlike]  WITH CHECK ADD  CONSTRAINT [FK_ReplyCommentVideoLikeUnlike_ReplyCommentVideo] FOREIGN KEY([replyCommentVideoSeqNo])
REFERENCES [dbo].[ReplyCommentVideo] ([replyCommentVideoSeqNo])
GO
ALTER TABLE [dbo].[ReplyCommentVideoLikeUnlike] CHECK CONSTRAINT [FK_ReplyCommentVideoLikeUnlike_ReplyCommentVideo]
GO
ALTER TABLE [dbo].[ServiceAns]  WITH CHECK ADD  CONSTRAINT [FK_ServiceAns_MemberQues] FOREIGN KEY([memberQuesSeqNo])
REFERENCES [dbo].[MemberQues] ([memberQuesSeqNo])
GO
ALTER TABLE [dbo].[ServiceAns] CHECK CONSTRAINT [FK_ServiceAns_MemberQues]
GO
ALTER TABLE [dbo].[SubscriptionUploader]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionUploader_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[SubscriptionUploader] CHECK CONSTRAINT [FK_SubscriptionUploader_Member]
GO
ALTER TABLE [dbo].[SubscriptionUploader]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionUploader_Member1] FOREIGN KEY([uploaderAccount])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[SubscriptionUploader] CHECK CONSTRAINT [FK_SubscriptionUploader_Member1]
GO
ALTER TABLE [dbo].[TrackExpressShipments]  WITH CHECK ADD  CONSTRAINT [FK_TrackExpressShipments_ExpressShipping] FOREIGN KEY([ShippingOrder])
REFERENCES [dbo].[ExpressShipping] ([ShippingOrder])
GO
ALTER TABLE [dbo].[TrackExpressShipments] CHECK CONSTRAINT [FK_TrackExpressShipments_ExpressShipping]
GO
ALTER TABLE [dbo].[UserReports]  WITH CHECK ADD  CONSTRAINT [FK_UserReports_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[UserReports] CHECK CONSTRAINT [FK_UserReports_Member]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_VideoType] FOREIGN KEY([videoType])
REFERENCES [dbo].[VideoType] ([videoType])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_VideoType]
GO
ALTER TABLE [dbo].[WatchHistory]  WITH CHECK ADD  CONSTRAINT [FK_WatchHistory_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[WatchHistory] CHECK CONSTRAINT [FK_WatchHistory_Member]
GO
ALTER TABLE [dbo].[WatchHistory]  WITH CHECK ADD  CONSTRAINT [FK_WatchHistory_Video] FOREIGN KEY([videoSeqNo])
REFERENCES [dbo].[Video] ([videoSeqNo])
GO
ALTER TABLE [dbo].[WatchHistory] CHECK CONSTRAINT [FK_WatchHistory_Video]
GO
USE [master]
GO
ALTER DATABASE [EEITDB] SET  READ_WRITE 
GO
