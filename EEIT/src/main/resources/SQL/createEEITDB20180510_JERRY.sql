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
/****** Object:  Table [dbo].[LiveStreamHistory]    Script Date: 2018/5/10 下午 09:30:40 ******/
DROP TABLE [dbo].[LiveStreamHistory]
GO
/****** Object:  Table [dbo].[LiveStream]    Script Date: 2018/5/10 下午 09:30:40 ******/
DROP TABLE [dbo].[LiveStream]
GO
/****** Object:  Table [dbo].[Bid]    Script Date: 2018/5/10 下午 09:30:40 ******/
DROP TABLE [dbo].[Bid]
GO
/****** Object:  Table [dbo].[Auction]    Script Date: 2018/5/10 下午 09:30:40 ******/
DROP TABLE [dbo].[Auction]
GO
/****** Object:  Table [dbo].[Auction]    Script Date: 2018/5/10 下午 09:30:40 ******/
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
/****** Object:  Table [dbo].[Bid]    Script Date: 2018/5/10 下午 09:30:40 ******/
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
/****** Object:  Table [dbo].[LiveStream]    Script Date: 2018/5/10 下午 09:30:40 ******/
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
/****** Object:  Table [dbo].[LiveStreamHistory]    Script Date: 2018/5/10 下午 09:30:40 ******/
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
