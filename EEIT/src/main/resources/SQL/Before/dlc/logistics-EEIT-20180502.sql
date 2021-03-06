USE [EEITDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ExpressShipping](
    [shippingOrder] [varchar] (500) NOT NULL,
	[surcharges] [varchar] (500) NOT NULL,
	[checkVolumetricWeight] [varchar] (500) NOT NULL,
	[packagingAdvice] [varchar] (500) NOT NULL,
	[trackingNumber] [int] NOT NULL,
	[orderSeqNo] [int] NOT NULL,
) 
GO


CREATE TABLE [dbo].[ExpressShipmentsTracking](
	[shipmentType] [varchar] (500) NOT NULL,
	[trackingNumber] [varchar] (500) NOT NULL,
	[orderSeqNo] [int] NOT NULL,
	[sendStatus] [varchar] (500) NOT NULL,
	[trackingFAQs] [varchar] (500) NOT NULL,
)
GO


INSERT [dbo].[ExpressShipmentsTracking] ([ShipmentType], [TrackingNumber], [OrderSeqNo], [sendStatus], [TrackingFAQs]) VALUES (N'Road', 9876543210, 0123456789, N'sent', N'0')
INSERT [dbo].[ExpressShipmentsTracking] ([ShipmentType], [TrackingNumber], [OrderSeqNo], [sendStatus], [TrackingFAQs]) VALUES (N'Road', 9876543210, 0123456789, N'sent', N'0')
INSERT [dbo].[ExpressShipmentsTracking] ([ShipmentType], [TrackingNumber], [OrderSeqNo], [sendStatus], [TrackingFAQs]) VALUES (N'Road', 9876543210, 0123456789, N'sent', N'0')
INSERT [dbo].[ExpressShipmentsTracking] ([ShipmentType], [TrackingNumber], [OrderSeqNo], [sendStatus], [TrackingFAQs]) VALUES (N'Road', 9876543210, 0123456789, N'sent', N'0')
INSERT [dbo].[ExpressShipmentsTracking] ([ShipmentType], [TrackingNumber], [OrderSeqNo], [sendStatus], [TrackingFAQs]) VALUES (N'Road', 9876543210, 0123456789, N'sent', N'0')


CREATE TABLE [dbo].[Surcharges](
    [oversizePiece] [varchar] (500) NOT NULL,
	[nonStackablePallet] [varchar] (500) NOT NULL,
	[biologicalSubstances] [varchar] (500) NOT NULL,
	[dangerousGoods] [varchar] (500) NOT NULL,
	[lithiumBatteries] [varchar] (500) NOT NULL,
) 
GO


DROP TABLE [dbo].[ExpressShipping]
GO


DROP TABLE [dbo].[ExpressShipmentsTracking]
GO


DROP TABLE [dbo].[Surcharges]
GO

