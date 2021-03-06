USE [EEITDB]
GO
ALTER TABLE [dbo].[Bid] DROP CONSTRAINT [FK_Bid_Auction]
GO
ALTER TABLE [dbo].[Auction] DROP CONSTRAINT [FK_Auction_Product]
GO
ALTER TABLE [dbo].[Auction] DROP CONSTRAINT [FK_Auction_Member]
GO
ALTER TABLE [dbo].[Auction] DROP CONSTRAINT [FK_Auction_LiveStream]
GO
/****** Object:  Table [dbo].[LiveStreamHistory]    Script Date: 2018/5/9 下午 04:57:56 ******/
DROP TABLE [dbo].[LiveStreamHistory]
GO
/****** Object:  Table [dbo].[LiveStream]    Script Date: 2018/5/9 下午 04:57:56 ******/
DROP TABLE [dbo].[LiveStream]
GO
/****** Object:  Table [dbo].[Bid]    Script Date: 2018/5/9 下午 04:57:56 ******/
DROP TABLE [dbo].[Bid]
GO
/****** Object:  Table [dbo].[Auction]    Script Date: 2018/5/9 下午 04:57:56 ******/
DROP TABLE [dbo].[Auction]
GO
/****** Object:  Table [dbo].[Auction]    Script Date: 2018/5/9 下午 04:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auction](
	[account] [varchar](50) NOT NULL,
	[auctionSeqNo] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Bid]    Script Date: 2018/5/9 下午 04:57:56 ******/
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
/****** Object:  Table [dbo].[LiveStream]    Script Date: 2018/5/9 下午 04:57:56 ******/
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
/****** Object:  Table [dbo].[LiveStreamHistory]    Script Date: 2018/5/9 下午 04:57:56 ******/
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
SET IDENTITY_INSERT [dbo].[LiveStream] ON 

INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 2, CAST(N'1994-06-30T00:00:00.000' AS DateTime), NULL, 1, N'tttest', N'1', N'C:\resources\images\members\bob\LiveCoverPath\bob.jpg', N'01.jpg', N'42jwUc7LNR0', 32)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 6, CAST(N'1966-06-23T00:00:00.000' AS DateTime), NULL, 1, N'ttttetttte', N'0', N'12', N'12', N'42jwUc7LNR0', 1)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'bob', 1028, CAST(N'2018-05-09T14:22:47.427' AS DateTime), NULL, 1, N'asdasdasdas', N'1', N'C:/resources/images/LiveCoverPath/bob/1028/1028.jpg', N'01.jpg', N'06DNNI2R8xE', 1)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1032, CAST(N'2018-05-09T15:53:37.957' AS DateTime), NULL, 1, N'asdasdasTTT', N'1', N'C:/resources/images/LiveCoverPath/micky/1032/1032.jpg', N'pokimane-4.jpg', N'UPXSB2gMsfI', 8)
INSERT [dbo].[LiveStream] ([account], [liveStreamSeqNo], [liveStart], [liveEnd], [videoSeqNo], [streamName], [liveStatus], [liveCoverPath], [liveCoverName], [liveStreamPath], [liveStreamView]) VALUES (N'micky', 1033, CAST(N'2018-05-09T15:55:55.913' AS DateTime), NULL, 1, N'OAO', N'1', N'C:/resources/images/LiveCoverPath/micky/1033/1033.jpg', N'pokimane-4.jpg', N'UPXSB2gMsfI', 11)
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
SET IDENTITY_INSERT [dbo].[LiveStreamHistory] OFF
ALTER TABLE [dbo].[Auction]  WITH CHECK ADD  CONSTRAINT [FK_Auction_LiveStream] FOREIGN KEY([LiveStreamSeqNo])
REFERENCES [dbo].[LiveStream] ([liveStreamSeqNo])
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
