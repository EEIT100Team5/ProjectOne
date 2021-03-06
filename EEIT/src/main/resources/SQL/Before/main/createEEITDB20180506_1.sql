USE [EEITDB]
GO
ALTER TABLE [dbo].[WatchLaterVideos] DROP CONSTRAINT [FK_WatchLaterVideos_Video]
GO
ALTER TABLE [dbo].[WatchLaterVideos] DROP CONSTRAINT [FK_WatchLaterVideos_Member]
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
ALTER TABLE [dbo].[ReplyCommentVideo] DROP CONSTRAINT [FK_ReplyCommentVideo_CommentVideo]
GO
ALTER TABLE [dbo].[ProductPicture] DROP CONSTRAINT [FK_ProductPicture_Product]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Member]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Brand]
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
ALTER TABLE [dbo].[MemberQues] DROP CONSTRAINT [FKi51d9j54a97bs6th5cvbjg17t]
GO
ALTER TABLE [dbo].[Member] DROP CONSTRAINT [FKjxhc0s2xa2m472ffeq3wtv3b7]
GO
ALTER TABLE [dbo].[Member] DROP CONSTRAINT [FKh86ayrro928dnhe7urkhsymrd]
GO
ALTER TABLE [dbo].[LiveStream] DROP CONSTRAINT [FK_LiveStream_Video]
GO
ALTER TABLE [dbo].[LiveStream] DROP CONSTRAINT [FK_LiveStream_Member]
GO
ALTER TABLE [dbo].[LikeUnlikeVideos] DROP CONSTRAINT [FK_LikeUnlikeVideos_Video]
GO
ALTER TABLE [dbo].[LikeUnlikeVideos] DROP CONSTRAINT [FK_LikeUnlikeVideos_Member]
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
ALTER TABLE [dbo].[CommentVideoLikeUnlike] DROP CONSTRAINT [FK_CommentVideoLikeUnlike_Member]
GO
ALTER TABLE [dbo].[CommentVideoLikeUnlike] DROP CONSTRAINT [FK_CommentVideoLikeUnlike_CommentVideo]
GO
ALTER TABLE [dbo].[CommentVideo] DROP CONSTRAINT [FK_CommentVideo_Video]
GO
ALTER TABLE [dbo].[CommentVideo] DROP CONSTRAINT [FK_CommentVideo_Member]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK_Cart_Order]
GO
ALTER TABLE [dbo].[Bid] DROP CONSTRAINT [FK_Bid_Auction]
GO
ALTER TABLE [dbo].[Auction] DROP CONSTRAINT [FK_Auction_Product]
GO
ALTER TABLE [dbo].[Auction] DROP CONSTRAINT [FK_Auction_Member]
GO
ALTER TABLE [dbo].[Auction] DROP CONSTRAINT [FK_Auction_LiveStream]
GO
/****** Object:  Index [UK_1otx0mgvjfsjh6722pmmkog5t]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP INDEX [UK_1otx0mgvjfsjh6722pmmkog5t] ON [dbo].[MemberQues]
GO
/****** Object:  Index [UK_lrj7q9gjmmuqmuke1slpj2wbv]    Script Date: 2018/5/6 下午 07:20:22 ******/
ALTER TABLE [dbo].[MEMBER_MEMBER] DROP CONSTRAINT [UK_lrj7q9gjmmuqmuke1slpj2wbv]
GO
/****** Object:  Table [dbo].[WatchLaterVideos]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[WatchLaterVideos]
GO
/****** Object:  Table [dbo].[WatchLaterVideo]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[WatchLaterVideo]
GO
/****** Object:  Table [dbo].[WatchHistory]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[WatchHistory]
GO
/****** Object:  Table [dbo].[VideoType]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[VideoType]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Video]
GO
/****** Object:  Table [dbo].[UserReports]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[UserReports]
GO
/****** Object:  Table [dbo].[TrackExpressShipments]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[TrackExpressShipments]
GO
/****** Object:  Table [dbo].[SubscriptionUploader]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[SubscriptionUploader]
GO
/****** Object:  Table [dbo].[ServiceAns]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ServiceAns]
GO
/****** Object:  Table [dbo].[service_ans]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[service_ans]
GO
/****** Object:  Table [dbo].[ReplyCommentVideoLikeUnlike]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ReplyCommentVideoLikeUnlike]
GO
/****** Object:  Table [dbo].[ReplyCommentVideo]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ReplyCommentVideo]
GO
/****** Object:  Table [dbo].[ProductPicture]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ProductPicture]
GO
/****** Object:  Table [dbo].[ProductHotTest]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ProductHotTest]
GO
/****** Object:  Table [dbo].[ProductHot]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ProductHot]
GO
/****** Object:  Table [dbo].[Product_1]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Product_1]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[ProCategory]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ProCategory]
GO
/****** Object:  Table [dbo].[OrderList]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[OrderList]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Notification]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Message]
GO
/****** Object:  Table [dbo].[MemberQues]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[MemberQues]
GO
/****** Object:  Table [dbo].[MEMBER_MEMBER]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[MEMBER_MEMBER]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Member]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Manager]
GO
/****** Object:  Table [dbo].[LiveStream]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[LiveStream]
GO
/****** Object:  Table [dbo].[LikeUnlikeVideos]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[LikeUnlikeVideos]
GO
/****** Object:  Table [dbo].[ForumReply]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ForumReply]
GO
/****** Object:  Table [dbo].[ForumComment]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ForumComment]
GO
/****** Object:  Table [dbo].[ForumArticle]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ForumArticle]
GO
/****** Object:  Table [dbo].[ExpressShipping]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[ExpressShipping]
GO
/****** Object:  Table [dbo].[CommentVideosLikeUnlike]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[CommentVideosLikeUnlike]
GO
/****** Object:  Table [dbo].[CommentVideos]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[CommentVideos]
GO
/****** Object:  Table [dbo].[CommentVideoLikeUnlike]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[CommentVideoLikeUnlike]
GO
/****** Object:  Table [dbo].[CommentVideo]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[CommentVideo]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Cart]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[Bid]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Bid]
GO
/****** Object:  Table [dbo].[Auction]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP TABLE [dbo].[Auction]
GO
USE [master]
GO
/****** Object:  Database [EEITDB]    Script Date: 2018/5/6 下午 07:20:22 ******/
DROP DATABASE [EEITDB]
GO
/****** Object:  Database [EEITDB]    Script Date: 2018/5/6 下午 07:20:22 ******/
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
/****** Object:  Table [dbo].[Auction]    Script Date: 2018/5/6 下午 07:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auction](
	[account] [varchar](50) NOT NULL,
	[auctionSeqNo] [int] NOT NULL,
	[aucBegin] [datetime] NOT NULL,
	[aucEnd] [datetime] NOT NULL,
	[LiveStreamSeqNo] [int] NOT NULL,
	[productSeqNo] [int] NOT NULL,
 CONSTRAINT [PK_Auction] PRIMARY KEY CLUSTERED 
(
	[auctionSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bid]    Script Date: 2018/5/6 下午 07:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bid](
	[auctionSeqNo] [int] NOT NULL,
	[bidSeqNo] [int] NOT NULL,
	[bidTime] [datetime] NOT NULL,
	[bidPrice] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Bid] PRIMARY KEY CLUSTERED 
(
	[bidSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 2018/5/6 下午 07:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brandSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[brandName] [varchar](30) NULL,
	[brandPicPath] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[brandSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[CommentVideo]    Script Date: 2018/5/6 下午 07:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentVideo](
	[commentVideoSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[videoSeqNo] [int] NOT NULL,
	[commentArticle] [varchar](max) NOT NULL,
	[commentDate] [datetime] NOT NULL,
	[commentLike] [int] NOT NULL,
	[commentUnLike] [int] NOT NULL,
	[commentVideoStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CommentsVideo] PRIMARY KEY CLUSTERED 
(
	[commentVideoSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentVideoLikeUnlike]    Script Date: 2018/5/6 下午 07:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentVideoLikeUnlike](
	[commentLikeUnlikeSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[commentVideoSeqNo] [int] NOT NULL,
	[commentLikeUnlikeStatus] [varchar](50) NOT NULL,
	[commentLikeUnLikeDate] [datetime] NOT NULL,
	[commentLikeUnLikeScore] [int] NOT NULL,
 CONSTRAINT [PK_CommentsVideoLikeUnlike] PRIMARY KEY CLUSTERED 
(
	[commentLikeUnlikeSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentVideos]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[CommentVideosLikeUnlike]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[ExpressShipping]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[ForumArticle]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[ForumComment]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[ForumReply]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[LikeUnlikeVideos]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[LiveStream]    Script Date: 2018/5/6 下午 07:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiveStream](
	[account] [varchar](50) NOT NULL,
	[LiveStreamSeqNo] [int] NOT NULL,
	[LiveStart] [datetime] NOT NULL,
	[LiveEnd] [datetime] NOT NULL,
	[videoSeqNo] [int] NOT NULL,
	[streamName] [varchar](50) NOT NULL,
	[LiveNo] [varchar](max) NOT NULL,
 CONSTRAINT [PK_LiveStream] PRIMARY KEY CLUSTERED 
(
	[LiveStreamSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 2018/5/6 下午 07:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[managerSeqNo] [int] IDENTITY(20000,1) NOT NULL,
	[managerId] [varchar](500) NOT NULL,
	[managerPwd] [varchar](500) NOT NULL,
	[managerName] [varchar](1000) NOT NULL,
	[managerStatus] [varchar](10) NOT NULL,
 CONSTRAINT [PK__Manager__47E0141F1F88A00E] PRIMARY KEY CLUSTERED 
(
	[managerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[MEMBER_MEMBER]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[MemberQues]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[Message]    Script Date: 2018/5/6 下午 07:20:23 ******/
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
/****** Object:  Table [dbo].[Notification]    Script Date: 2018/5/6 下午 07:20:24 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 2018/5/6 下午 07:20:24 ******/
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
/****** Object:  Table [dbo].[OrderList]    Script Date: 2018/5/6 下午 07:20:24 ******/
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
/****** Object:  Table [dbo].[ProCategory]    Script Date: 2018/5/6 下午 07:20:24 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 2018/5/6 下午 07:20:24 ******/
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
/****** Object:  Table [dbo].[Product_1]    Script Date: 2018/5/6 下午 07:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_1](
	[productSeqNo] [bigint] NULL,
	[proName] [varchar](max) NULL,
	[categorySeqNo] [int] NULL,
	[brandSeqNo] [int] NULL,
	[proPrice] [bigint] NULL,
	[proStatus] [int] NULL,
	[proPayTypeSeqNo] [int] NULL,
	[proPcs] [int] NULL,
	[proDescription] [varchar](max) NULL,
	[proPicSeqNo] [int] NULL,
	[proTransSeqNo] [int] NULL,
	[proadvanSeqNo] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductHot]    Script Date: 2018/5/6 下午 07:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductHot](
	[ProductSeqNo] [int] NOT NULL,
	[ProductHot] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductHotTest]    Script Date: 2018/5/6 下午 07:20:24 ******/
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
/****** Object:  Table [dbo].[ProductPicture]    Script Date: 2018/5/6 下午 07:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPicture](
	[picSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[ProPicSerial] [int] NOT NULL,
	[ProPicPath] [varchar](max) NOT NULL,
	[productSeqNo] [int] NOT NULL,
	[ProPicMain] [varchar](max) NOT NULL,
 CONSTRAINT [PK__ProductP__A35C877CBC8392A5] PRIMARY KEY CLUSTERED 
(
	[picSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReplyCommentVideo]    Script Date: 2018/5/6 下午 07:20:24 ******/
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
/****** Object:  Table [dbo].[ReplyCommentVideoLikeUnlike]    Script Date: 2018/5/6 下午 07:20:24 ******/
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
/****** Object:  Table [dbo].[service_ans]    Script Date: 2018/5/6 下午 07:20:25 ******/
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
/****** Object:  Table [dbo].[ServiceAns]    Script Date: 2018/5/6 下午 07:20:25 ******/
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
/****** Object:  Table [dbo].[SubscriptionUploader]    Script Date: 2018/5/6 下午 07:20:25 ******/
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
/****** Object:  Table [dbo].[TrackExpressShipments]    Script Date: 2018/5/6 下午 07:20:25 ******/
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
/****** Object:  Table [dbo].[UserReports]    Script Date: 2018/5/6 下午 07:20:25 ******/
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
/****** Object:  Table [dbo].[Video]    Script Date: 2018/5/6 下午 07:20:25 ******/
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
/****** Object:  Table [dbo].[VideoType]    Script Date: 2018/5/6 下午 07:20:25 ******/
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
/****** Object:  Table [dbo].[WatchHistory]    Script Date: 2018/5/6 下午 07:20:25 ******/
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
/****** Object:  Table [dbo].[WatchLaterVideo]    Script Date: 2018/5/6 下午 07:20:39 ******/
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
/****** Object:  Table [dbo].[WatchLaterVideos]    Script Date: 2018/5/6 下午 07:20:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatchLaterVideos](
	[watchLaterVideosSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[videoSeqNo] [int] NOT NULL,
	[watchLaterVideoDate] [datetime] NOT NULL,
	[watchLaterVideosScore] [int] NOT NULL,
	[watchLaterVideosStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WatchLaterVideos] PRIMARY KEY CLUSTERED 
(
	[watchLaterVideosSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([brandSeqNo], [brandName], [brandPicPath]) VALUES (1, N'nike', N'xxxxxxx')
INSERT [dbo].[Brand] ([brandSeqNo], [brandName], [brandPicPath]) VALUES (2, N'adidas', N'xxxxxxx')
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([memberSeqNo], [account], [password], [nickname], [firstname], [lastname], [gender], [email], [address], [birthday], [photoPath], [photoName], [phone], [registerdate], [lastlogin], [subscription], [ban]) VALUES (10001, N'kitty', N'123', N'凱蒂', N'梁', N'凱蒂', N'男', N'eee@mail.com', N'xxx', CAST(N'1990-02-02T00:00:00.000' AS DateTime), N'xxxx', N'11', N'333333', CAST(N'1999-09-09T00:00:00.000' AS DateTime), CAST(N'1999-09-09T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Member] ([memberSeqNo], [account], [password], [nickname], [firstname], [lastname], [gender], [email], [address], [birthday], [photoPath], [photoName], [phone], [registerdate], [lastlogin], [subscription], [ban]) VALUES (10000, N'micky', N'123', N'米奇', N'米', N'小琪', N'女', N'micky@gmail.com', N'xxxx', CAST(N'2010-01-01T00:00:00.000' AS DateTime), N'xxxxxx', N'11', N'2222', CAST(N'1999-09-09T00:00:00.000' AS DateTime), CAST(N'1999-09-09T00:00:00.000' AS DateTime), 0, 1)
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
SET IDENTITY_INSERT [dbo].[MemberQues] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_lrj7q9gjmmuqmuke1slpj2wbv]    Script Date: 2018/5/6 下午 07:20:40 ******/
ALTER TABLE [dbo].[MEMBER_MEMBER] ADD  CONSTRAINT [UK_lrj7q9gjmmuqmuke1slpj2wbv] UNIQUE NONCLUSTERED 
(
	[faqbean_account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_1otx0mgvjfsjh6722pmmkog5t]    Script Date: 2018/5/6 下午 07:20:40 ******/
CREATE NONCLUSTERED INDEX [UK_1otx0mgvjfsjh6722pmmkog5t] ON [dbo].[MemberQues]
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auction]  WITH CHECK ADD  CONSTRAINT [FK_Auction_LiveStream] FOREIGN KEY([LiveStreamSeqNo])
REFERENCES [dbo].[LiveStream] ([LiveStreamSeqNo])
GO
ALTER TABLE [dbo].[Auction] CHECK CONSTRAINT [FK_Auction_LiveStream]
GO
ALTER TABLE [dbo].[Auction]  WITH CHECK ADD  CONSTRAINT [FK_Auction_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[Auction] CHECK CONSTRAINT [FK_Auction_Member]
GO
ALTER TABLE [dbo].[Auction]  WITH CHECK ADD  CONSTRAINT [FK_Auction_Product] FOREIGN KEY([productSeqNo])
REFERENCES [dbo].[Product] ([productSeqNo])
GO
ALTER TABLE [dbo].[Auction] CHECK CONSTRAINT [FK_Auction_Product]
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
ALTER TABLE [dbo].[CommentVideo]  WITH CHECK ADD  CONSTRAINT [FK_CommentVideo_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[CommentVideo] CHECK CONSTRAINT [FK_CommentVideo_Member]
GO
ALTER TABLE [dbo].[CommentVideo]  WITH CHECK ADD  CONSTRAINT [FK_CommentVideo_Video] FOREIGN KEY([videoSeqNo])
REFERENCES [dbo].[Video] ([videoSeqNo])
GO
ALTER TABLE [dbo].[CommentVideo] CHECK CONSTRAINT [FK_CommentVideo_Video]
GO
ALTER TABLE [dbo].[CommentVideoLikeUnlike]  WITH CHECK ADD  CONSTRAINT [FK_CommentVideoLikeUnlike_CommentVideo] FOREIGN KEY([commentVideoSeqNo])
REFERENCES [dbo].[CommentVideo] ([commentVideoSeqNo])
GO
ALTER TABLE [dbo].[CommentVideoLikeUnlike] CHECK CONSTRAINT [FK_CommentVideoLikeUnlike_CommentVideo]
GO
ALTER TABLE [dbo].[CommentVideoLikeUnlike]  WITH CHECK ADD  CONSTRAINT [FK_CommentVideoLikeUnlike_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[CommentVideoLikeUnlike] CHECK CONSTRAINT [FK_CommentVideoLikeUnlike_Member]
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
ALTER TABLE [dbo].[LiveStream]  WITH CHECK ADD  CONSTRAINT [FK_LiveStream_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[LiveStream] CHECK CONSTRAINT [FK_LiveStream_Member]
GO
ALTER TABLE [dbo].[LiveStream]  WITH CHECK ADD  CONSTRAINT [FK_LiveStream_Video] FOREIGN KEY([videoSeqNo])
REFERENCES [dbo].[Video] ([videoSeqNo])
GO
ALTER TABLE [dbo].[LiveStream] CHECK CONSTRAINT [FK_LiveStream_Video]
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
ALTER TABLE [dbo].[MemberQues]  WITH CHECK ADD  CONSTRAINT [FKi51d9j54a97bs6th5cvbjg17t] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[MemberQues] CHECK CONSTRAINT [FKi51d9j54a97bs6th5cvbjg17t]
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
ALTER TABLE [dbo].[ProCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductClass_ProductClass] FOREIGN KEY([ClassChildName])
REFERENCES [dbo].[ProCategory] ([ClassName])
GO
ALTER TABLE [dbo].[ProCategory] CHECK CONSTRAINT [FK_ProductClass_ProductClass]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([brandSeqNo])
REFERENCES [dbo].[Brand] ([brandSeqNo])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Member]
GO
ALTER TABLE [dbo].[ProductPicture]  WITH CHECK ADD  CONSTRAINT [FK_ProductPicture_Product] FOREIGN KEY([productSeqNo])
REFERENCES [dbo].[Product] ([productSeqNo])
GO
ALTER TABLE [dbo].[ProductPicture] CHECK CONSTRAINT [FK_ProductPicture_Product]
GO
ALTER TABLE [dbo].[ReplyCommentVideo]  WITH CHECK ADD  CONSTRAINT [FK_ReplyCommentVideo_CommentVideo] FOREIGN KEY([commentVideoSeqNo])
REFERENCES [dbo].[CommentVideo] ([commentVideoSeqNo])
GO
ALTER TABLE [dbo].[ReplyCommentVideo] CHECK CONSTRAINT [FK_ReplyCommentVideo_CommentVideo]
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
ALTER TABLE [dbo].[WatchLaterVideos]  WITH CHECK ADD  CONSTRAINT [FK_WatchLaterVideos_Member] FOREIGN KEY([account])
REFERENCES [dbo].[Member] ([account])
GO
ALTER TABLE [dbo].[WatchLaterVideos] CHECK CONSTRAINT [FK_WatchLaterVideos_Member]
GO
ALTER TABLE [dbo].[WatchLaterVideos]  WITH CHECK ADD  CONSTRAINT [FK_WatchLaterVideos_Video] FOREIGN KEY([videoSeqNo])
REFERENCES [dbo].[Video] ([videoSeqNo])
GO
ALTER TABLE [dbo].[WatchLaterVideos] CHECK CONSTRAINT [FK_WatchLaterVideos_Video]
GO
USE [master]
GO
ALTER DATABASE [EEITDB] SET  READ_WRITE 
GO
