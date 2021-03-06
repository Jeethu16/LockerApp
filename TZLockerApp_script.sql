USE [master]
GO
/****** Object:  Database [TZLockerBank]    Script Date: 02/18/2019 22:29:01 ******/
CREATE DATABASE [TZLockerBank] ON  PRIMARY 
( NAME = N'TZLockerBank', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLEXPRESS\MSSQL\DATA\TZLockerBank.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TZLockerBank_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLEXPRESS\MSSQL\DATA\TZLockerBank_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TZLockerBank] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TZLockerBank].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TZLockerBank] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TZLockerBank] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TZLockerBank] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TZLockerBank] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TZLockerBank] SET ARITHABORT OFF
GO
ALTER DATABASE [TZLockerBank] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TZLockerBank] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TZLockerBank] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TZLockerBank] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TZLockerBank] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TZLockerBank] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TZLockerBank] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TZLockerBank] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TZLockerBank] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TZLockerBank] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TZLockerBank] SET  DISABLE_BROKER
GO
ALTER DATABASE [TZLockerBank] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TZLockerBank] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TZLockerBank] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TZLockerBank] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TZLockerBank] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TZLockerBank] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TZLockerBank] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TZLockerBank] SET  READ_WRITE
GO
ALTER DATABASE [TZLockerBank] SET RECOVERY SIMPLE
GO
ALTER DATABASE [TZLockerBank] SET  MULTI_USER
GO
ALTER DATABASE [TZLockerBank] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TZLockerBank] SET DB_CHAINING OFF
GO
USE [TZLockerBank]
GO
/****** Object:  Table [dbo].[tbl_Location]    Script Date: 02/18/2019 22:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Location](
	[Location_id] [int] IDENTITY(1,1) NOT NULL,
	[Location_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Location] PRIMARY KEY CLUSTERED 
(
	[Location_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Location] ON
INSERT [dbo].[tbl_Location] ([Location_id], [Location_Name]) VALUES (1, N'Sydney')
INSERT [dbo].[tbl_Location] ([Location_id], [Location_Name]) VALUES (2, N'Melbourne')
INSERT [dbo].[tbl_Location] ([Location_id], [Location_Name]) VALUES (3, N'Brisbane')
SET IDENTITY_INSERT [dbo].[tbl_Location] OFF
/****** Object:  Table [dbo].[tbl_LockerBank]    Script Date: 02/18/2019 22:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LockerBank](
	[LockerBank_id] [int] NOT NULL,
	[Location_id] [int] NULL,
	[LockerBank_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_LockerBank] PRIMARY KEY CLUSTERED 
(
	[LockerBank_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (1, 1, N'cbd_lockerbank_1')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (2, 1, N'manly_lockerbank_2')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (3, 1, N'bondi_lockerbank_3')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (4, 1, N'mosman_lockerbank_4')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (5, 2, N'fitzroy_lockerbank_1')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (6, 2, N'southbank_lockerbank_1')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (7, 2, N'parkville_lockerbank_3')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (8, 2, N'carlton_lockerbank_4')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (9, 3, N'paddington_lockerbank_1')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (10, 3, N'redhill_lockerbank_2')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (11, 3, N'bowen_lockerbank_3')
INSERT [dbo].[tbl_LockerBank] ([LockerBank_id], [Location_id], [LockerBank_Name]) VALUES (12, 3, N'windsor_lockerbank_4')
/****** Object:  Table [dbo].[tbl_Locker]    Script Date: 02/18/2019 22:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Locker](
	[Locker_id] [int] NOT NULL,
	[LockerBank_id] [int] NULL,
	[LockerName] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Locker] PRIMARY KEY CLUSTERED 
(
	[Locker_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (1, 1, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (2, 1, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (3, 1, N'L3')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (4, 2, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (5, 2, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (6, 2, N'L3')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (7, 3, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (8, 3, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (9, 3, N'L3')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (10, 4, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (11, 4, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (12, 4, N'L3')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (13, 5, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (14, 5, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (15, 5, N'L3')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (16, 6, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (17, 6, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (18, 6, N'L3')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (19, 7, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (20, 7, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (21, 8, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (22, 8, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (23, 9, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (24, 9, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (25, 9, N'L3')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (26, 10, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (27, 10, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (28, 11, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (29, 11, N'L2')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (30, 11, N'L3')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (31, 12, N'L1')
INSERT [dbo].[tbl_Locker] ([Locker_id], [LockerBank_id], [LockerName]) VALUES (32, 12, N'L2')

