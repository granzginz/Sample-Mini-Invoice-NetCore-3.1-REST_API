USE [MyApp]
GO
/****** Object:  Table [zyz].[Login]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[zyz].[Login]') AND type in (N'U'))
DROP TABLE [zyz].[Login]
GO
/****** Object:  Table [dbo].[Tbl_T_PO_Header]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_T_PO_Header]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_T_PO_Header]
GO
/****** Object:  Table [dbo].[Tbl_T_PO_Detail]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_T_PO_Detail]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_T_PO_Detail]
GO
/****** Object:  Table [dbo].[Tbl_M_UnitOfMeasurement]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_M_UnitOfMeasurement]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_M_UnitOfMeasurement]
GO
/****** Object:  Table [dbo].[Tbl_M_PO]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_M_PO]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_M_PO]
GO
/****** Object:  Table [dbo].[Tbl_M_PIC]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_M_PIC]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_M_PIC]
GO
/****** Object:  Table [dbo].[Tbl_M_Language]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_M_Language]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_M_Language]
GO
/****** Object:  Table [dbo].[Tbl_M_Customer]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_M_Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_M_Customer]
GO
/****** Object:  Table [dbo].[Tbl_M_Currency]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_M_Currency]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_M_Currency]
GO
/****** Object:  Table [dbo].[Tbl_M_Address]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_M_Address]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_M_Address]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 6/15/2021 3:30:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
DROP TABLE [dbo].[Department]
GO
/****** Object:  Schema [zyz]    Script Date: 6/15/2021 3:30:54 PM ******/
DROP SCHEMA [zyz]
GO
USE [master]
GO
/****** Object:  Database [MyApp]    Script Date: 6/15/2021 3:30:54 PM ******/
DROP DATABASE [MyApp]
GO
/****** Object:  Database [MyApp]    Script Date: 6/15/2021 3:30:54 PM ******/
CREATE DATABASE [MyApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\MyApp.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MyApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\MyApp_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MyApp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyApp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MyApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyApp] SET RECOVERY FULL 
GO
ALTER DATABASE [MyApp] SET  MULTI_USER 
GO
ALTER DATABASE [MyApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MyApp] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MyApp', N'ON'
GO
USE [MyApp]
GO
/****** Object:  Schema [zyz]    Script Date: 6/15/2021 3:30:54 PM ******/
CREATE SCHEMA [zyz]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](500) NULL,
	[Department] [varchar](500) NULL,
	[DateOfJoining] [date] NULL,
	[PhotoFileName] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_M_Address]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_Address](
	[Address_ID] [uniqueidentifier] NOT NULL,
	[Customer_ID] [uniqueidentifier] NULL,
	[Address_Name] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Address] PRIMARY KEY CLUSTERED 
(
	[Address_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_M_Currency]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_Currency](
	[Currency_ID] [uniqueidentifier] NOT NULL,
	[Initial] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Currency] PRIMARY KEY CLUSTERED 
(
	[Currency_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_M_Customer]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_Customer](
	[Customer_ID] [uniqueidentifier] NOT NULL,
	[Customer_Name] [varchar](50) NULL,
	[Customer_Company] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_M_Language]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_Language](
	[Language_ID] [uniqueidentifier] NOT NULL,
	[Initial] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_M_Language] PRIMARY KEY CLUSTERED 
(
	[Language_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_M_PIC]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_PIC](
	[PIC_ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_PIC] PRIMARY KEY CLUSTERED 
(
	[PIC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_M_PO]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_PO](
	[PO_ID] [varchar](50) NOT NULL,
	[PIC_ID] [uniqueidentifier] NULL,
	[PO_Number] [varchar](50) NULL,
	[Amount] [numeric](17, 2) NULL,
 CONSTRAINT [PK_Tbl_PO] PRIMARY KEY CLUSTERED 
(
	[PO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_M_UnitOfMeasurement]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_UnitOfMeasurement](
	[UOM_ID] [uniqueidentifier] NOT NULL,
	[Unit_Name] [varchar](50) NULL,
	[Decription] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_M_UnitOfMeasurement] PRIMARY KEY CLUSTERED 
(
	[UOM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_T_PO_Detail]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_T_PO_Detail](
	[PO_H_ID] [uniqueidentifier] NOT NULL,
	[PO_D_ID] [uniqueidentifier] NOT NULL,
	[Name_Customer] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[Rate] [numeric](18, 0) NULL,
	[Amount] [numeric](18, 0) NULL,
	[SubTotal] [numeric](18, 0) NULL,
	[Discount] [numeric](18, 0) NULL,
	[Total] [numeric](18, 0) NULL,
	[UOM_ID] [uniqueidentifier] NULL,
	[PO_Number] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_PO_Detail] PRIMARY KEY CLUSTERED 
(
	[PO_H_ID] ASC,
	[PO_D_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_T_PO_Header]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_T_PO_Header](
	[PO_H_ID] [uniqueidentifier] NOT NULL,
	[Currency_ID] [uniqueidentifier] NULL,
	[Addr_From] [varchar](250) NULL,
	[Addr_To] [varchar](250) NULL,
	[Date] [varchar](10) NULL,
	[InvoiceDue] [varchar](10) NULL,
	[PO_Number] [varchar](50) NULL,
	[Inv_Number] [varchar](50) NULL,
	[Logo] [text] NULL,
	[Language_ID] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_PO_Header] PRIMARY KEY CLUSTERED 
(
	[PO_H_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [zyz].[Login]    Script Date: 6/15/2021 3:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [zyz].[Login](
	[id] [uniqueidentifier] NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Session] [varchar](max) NULL,
	[LastLogin] [datetime] NULL,
	[LastLogout] [datetime] NULL,
	[Groupid] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateBy] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (1, N'IT')
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (2, N'Support')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (1, N'Anjar', N'IT', CAST(N'2021-07-03' AS Date), N'anonymous.png')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[Tbl_M_Address] ([Address_ID], [Customer_ID], [Address_Name]) VALUES (N'a9a76aab-4b93-47a4-aa53-662744e8e3aa', N'5f2dea57-3ffa-49fc-9c68-34116f5e195f', N'Example, City, Country')
INSERT [dbo].[Tbl_M_Address] ([Address_ID], [Customer_ID], [Address_Name]) VALUES (N'e8366b34-25a4-44bb-b509-81445f597506', N'f791f402-76d3-4752-96ff-a49f5ee64aea', N'Example, City, Country')
INSERT [dbo].[Tbl_M_Address] ([Address_ID], [Customer_ID], [Address_Name]) VALUES (N'8f06b028-d39b-4dca-be12-896568f1a369', N'8d7ae140-3fa5-4856-babe-e38abc611050', N'Kunciran, Tangerang, Indonesia')
INSERT [dbo].[Tbl_M_Address] ([Address_ID], [Customer_ID], [Address_Name]) VALUES (N'bd73ad11-807e-4636-a02e-f3a0665fff0c', N'1e2bdc92-e643-42aa-98bb-5c3e4f501d41', N'Example, Inc. 80 Mortimer Street London W1W 7FE United Kingdom')
GO
INSERT [dbo].[Tbl_M_Currency] ([Currency_ID], [Initial], [Description]) VALUES (N'2f0fba18-3230-406f-b644-356ffa47ffb0', N'USD', N'United State Dollar - USD')
INSERT [dbo].[Tbl_M_Currency] ([Currency_ID], [Initial], [Description]) VALUES (N'd8fc6107-3e4b-40c7-92fa-b3f9d435643d', N'IDR', N'Indonesian Rupiah')
GO
INSERT [dbo].[Tbl_M_Customer] ([Customer_ID], [Customer_Name], [Customer_Company]) VALUES (N'5f2dea57-3ffa-49fc-9c68-34116f5e195f', N'Umam', N'Permata')
INSERT [dbo].[Tbl_M_Customer] ([Customer_ID], [Customer_Name], [Customer_Company]) VALUES (N'dd7b0f0d-19e4-4737-ad18-8a420d0b36a8', N'Josh Freelancer', N'Freelancer')
INSERT [dbo].[Tbl_M_Customer] ([Customer_ID], [Customer_Name], [Customer_Company]) VALUES (N'f791f402-76d3-4752-96ff-a49f5ee64aea', N'Fadhil', N'Freelancer')
INSERT [dbo].[Tbl_M_Customer] ([Customer_ID], [Customer_Name], [Customer_Company]) VALUES (N'8d7ae140-3fa5-4856-babe-e38abc611050', N'Ginanjar', N'Kalbe')
GO
INSERT [dbo].[Tbl_M_Language] ([Language_ID], [Initial], [Description]) VALUES (N'2e64f334-4437-43fc-8e58-150367b1e99b', N'JPY', N'Japan')
INSERT [dbo].[Tbl_M_Language] ([Language_ID], [Initial], [Description]) VALUES (N'b56c452d-c963-4273-9a55-159fb13e1694', N'US', N'English')
INSERT [dbo].[Tbl_M_Language] ([Language_ID], [Initial], [Description]) VALUES (N'35cafb60-10d5-44f3-aeae-55c1ceb28d5d', N'UK', N'English')
INSERT [dbo].[Tbl_M_Language] ([Language_ID], [Initial], [Description]) VALUES (N'319e243f-ecdf-40cd-94f7-6cabecccfd51', N'KR', N'Korea')
INSERT [dbo].[Tbl_M_Language] ([Language_ID], [Initial], [Description]) VALUES (N'27a6bff3-44df-4cd5-b2fc-a9af9851bdf0', N'ID', N'Indonesia')
GO
INSERT [dbo].[Tbl_M_PIC] ([PIC_ID], [Name]) VALUES (N'f925206f-4a12-432d-8f9f-4cf37c41c051', N'Amir')
INSERT [dbo].[Tbl_M_PIC] ([PIC_ID], [Name]) VALUES (N'5c7b0753-fc65-45d1-9572-c7063e8dc2b4', N'Faizal')
GO
INSERT [dbo].[Tbl_M_PO] ([PO_ID], [PIC_ID], [PO_Number], [Amount]) VALUES (N'8F5B1A5B-9A73-42B5-BFB4-F2997A517481', N'f925206f-4a12-432d-8f9f-4cf37c41c051', N'FL-123', CAST(10000.00 AS Numeric(17, 2)))
INSERT [dbo].[Tbl_M_PO] ([PO_ID], [PIC_ID], [PO_Number], [Amount]) VALUES (N'B4CE34C9-0CCF-4A00-8A5B-ACE64482CFF6', N'5c7b0753-fc65-45d1-9572-c7063e8dc2b4', N'FL-456', CAST(12000.00 AS Numeric(17, 2)))
GO
INSERT [dbo].[Tbl_M_UnitOfMeasurement] ([UOM_ID], [Unit_Name], [Decription]) VALUES (N'f5bab7dc-faff-4f46-8f91-00659b78ac23', N'hr', N'hour')
INSERT [dbo].[Tbl_M_UnitOfMeasurement] ([UOM_ID], [Unit_Name], [Decription]) VALUES (N'c64c4871-5601-4b47-b801-0bac814555b7', N'sc', N'second')
INSERT [dbo].[Tbl_M_UnitOfMeasurement] ([UOM_ID], [Unit_Name], [Decription]) VALUES (N'a9b12c5a-714c-4379-9c8b-21bb7be71f87', N'ml', N'mililiter')
INSERT [dbo].[Tbl_M_UnitOfMeasurement] ([UOM_ID], [Unit_Name], [Decription]) VALUES (N'efc9fa54-8cf7-4434-9f65-21c644e46399', N'l', N'liter')
INSERT [dbo].[Tbl_M_UnitOfMeasurement] ([UOM_ID], [Unit_Name], [Decription]) VALUES (N'e1fb1079-4bf7-4b08-ad21-3f77f35f32c3', N'm', N'meter')
INSERT [dbo].[Tbl_M_UnitOfMeasurement] ([UOM_ID], [Unit_Name], [Decription]) VALUES (N'cd40ad19-3c5a-44d9-9db7-94467bf0e71c', N'kg', N'kilogram')
INSERT [dbo].[Tbl_M_UnitOfMeasurement] ([UOM_ID], [Unit_Name], [Decription]) VALUES (N'b1ade04a-468f-4bcd-85f4-ae46cb0c0f47', N'km', N'kilo meter')
INSERT [dbo].[Tbl_M_UnitOfMeasurement] ([UOM_ID], [Unit_Name], [Decription]) VALUES (N'9578dc2f-429f-46f0-9e3d-af08889440ed', N'mn', N'minute')
INSERT [dbo].[Tbl_M_UnitOfMeasurement] ([UOM_ID], [Unit_Name], [Decription]) VALUES (N'e63ecbe2-9713-43f6-bfb2-bf62d27e4933', N'g', N'gram')
GO
INSERT [dbo].[Tbl_T_PO_Detail] ([PO_H_ID], [PO_D_ID], [Name_Customer], [Quantity], [Rate], [Amount], [SubTotal], [Discount], [Total], [UOM_ID], [PO_Number]) VALUES (N'2480f0a1-2a12-4d57-8073-5030a824de0d', N'082bf931-335c-472b-9c91-f0e2481925db', N'Josh freelancer', N'02:30', CAST(60 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(135 AS Numeric(18, 0)), N'f5bab7dc-faff-4f46-8f91-00659b78ac23', N'FL-123')
GO
INSERT [dbo].[Tbl_T_PO_Header] ([PO_H_ID], [Currency_ID], [Addr_From], [Addr_To], [Date], [InvoiceDue], [PO_Number], [Inv_Number], [Logo], [Language_ID]) VALUES (N'2480f0a1-2a12-4d57-8073-5030a824de0d', N'2f0fba18-3230-406f-b644-356ffa47ffb0', N'Example, Inc. 80 Mortimer Street London W1W 7FE United Kingdom', N'Kunciran, Tangerang, Indonesia', N'2021-06-15', N'2021-06-15', N'FL-123', N'Inv-694', N'bukalapakLogo.png', N'319E243F-ECDF-40CD-94F7-6CABECCCFD51')
GO
USE [master]
GO
ALTER DATABASE [MyApp] SET  READ_WRITE 
GO
