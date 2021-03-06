USE [master]
GO
/****** Object:  Database [TranMinhKhoaDB]    Script Date: 2021-06-19 01:45:17 PM ******/
CREATE DATABASE [TranMinhKhoaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TranMinhKhoaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TranMinhKhoaDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TranMinhKhoaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TranMinhKhoaDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TranMinhKhoaDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TranMinhKhoaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TranMinhKhoaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TranMinhKhoaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TranMinhKhoaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TranMinhKhoaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TranMinhKhoaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TranMinhKhoaDB] SET  MULTI_USER 
GO
ALTER DATABASE [TranMinhKhoaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TranMinhKhoaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TranMinhKhoaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TranMinhKhoaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TranMinhKhoaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TranMinhKhoaDB] SET QUERY_STORE = OFF
GO
USE [TranMinhKhoaDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2021-06-19 01:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [varchar](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2021-06-19 01:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[UnitCost] [decimal](15, 0) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Image] [varchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [varchar](50) NULL,
	[CategoryID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 2021-06-19 01:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'1', N'Adidas', N'Show')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'2', N'Nike', N'Show')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'3', N'Converse', N'Show')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'4', N'Vans', N'Show')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'5', N'Puma', N'Show')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'6', N'Balenciaga', N'Show')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'7', N'Mizuno', N'Show')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'8', N'Reebok', N'Show')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (1, N'Adidas Ultra Boost', CAST(500000 AS Decimal(15, 0)), 11, N'/ckfinder/userfiles/images/h1.png', N'Ultraboost DNA mang mã gen của một trong những đôi giày chạy bộ hiệu năng được ưa chuộng nhất, nhưng dành cho đường phố', N'Available', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (2, N'Adidas Yeezy', CAST(500000 AS Decimal(15, 0)), 14, N'/ckfinder/userfiles/images/h2.png', N'Mua Giày Adidas Yeezy Foam Runner Mineral Blue GV7903 chính hãng 100% có sẵn tại Authentic Shoes', N'Available', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (3, N'Nike Jordan', CAST(700000 AS Decimal(15, 0)), 20, N'/ckfinder/userfiles/images/h3.png', N'Jordan mang đến sự mới mẻ, không sợ hãi với các tính năng bạn muốn', N'Available', N'2')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (5, N'Converse Chuck Taylor', CAST(800000 AS Decimal(15, 0)), 40, N'/ckfinder/userfiles/images/h4.png', N'Thiết kế truyền thống, cổ điển với phần đế Platform siêu dày dặn chắc chắn', N'Available', N'3')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (6, N'Converse Jack Purcell', CAST(800000 AS Decimal(15, 0)), 60, N'/ckfinder/userfiles/images/h5.png', N'Giày thể thao đế thấp màu đen. Mũi giày cao su tròn màu trắng. Đóng ren lên theo màu sắc.', N'Available', N'3')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (7, N'NVans Classics Authentic', CAST(900000 AS Decimal(15, 0)), 60, N'/ckfinder/userfiles/images/h6.png', N'Giày thể thao đích thực cotton u màu đen của Vans có mũi giày tròn, các tấm khâu', N'Available', N'4')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (8, N'Vans Classics Era', CAST(900000 AS Decimal(15, 0)), 70, N'/ckfinder/userfiles/images/h7.png', N'Era với phần đệm da gót chân sẽ bảo vệ gót chân bạn khỏi đau xước khi mới đi giày lần đầu.', N'Available', N'4')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (9, N'Puma Era A1', CAST(800000 AS Decimal(15, 0)), 80, N'/ckfinder/userfiles/images/h11.png', N'Thiết kế phá cách đặc trưng đưa mọi thứ lên một tầm cao mới với những mảng màu vui tươi', N'Available', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (10, N'Balenciaga CC1', CAST(850000 AS Decimal(15, 0)), 70, N'/ckfinder/userfiles/images/h9.png', N'Giày Balenciaga kiểu sneaker với thiết kế hầm hồ nhanh chóng thu hút được sự hiếu kỳ của giới fashionista', N'Available', N'6')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (11, N'Mizuno FF33', CAST(550000 AS Decimal(15, 0)), 55, N'/ckfinder/userfiles/images/h10.png', N'Giày Mizuno phù hợp cho luyện tập và thi đấu các bộ môn cầu lông, bóng chuyền, bóng bàn,...', N'Available', N'7')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (12, N'Reebok Kerra', CAST(750000 AS Decimal(15, 0)), 85, N'/ckfinder/userfiles/images/h11.png', N'Giày Reebok Thích hợp cho mọi hoạt động', N'Available', N'8')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (30, N'Nike Air', CAST(700000 AS Decimal(15, 0)), 30, N'/ckfinder/userfiles/images/h12.png', N'Nike Air tái hiện lại biểu tượng của quả bóng b-ball cho phong cách thời trang ngoài sân bóng lớn', N'Available', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (31, N'Nike Air NANA11', CAST(600000 AS Decimal(15, 0)), 30, N'/ckfinder/userfiles/images/h8.jpg', N'Nike Air tái hiện lại biểu tượng của quả bóng b-ball cho phong cách thời trang ngoài sân bóng lớn', N'Available', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (32, N'Nike Air IIA2', CAST(500000 AS Decimal(15, 0)), 30, N'/ckfinder/userfiles/images/h9.jpg', N'Nike Air tái hiện lại biểu tượng của quả bóng b-ball cho phong cách thời trang ngoài sân bóng lớn', N'Available', N'1')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (1, N'Admin', N'21232f297a57a5a743894a0e4a801fc3', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (2, N'Khoa', N'25d55ad283aa400af464c76d713c07ad', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (3, N'Minh', N'25d55ad283aa400af464c76d713c07ad', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (4, N'Long', N'25d55ad283aa400af464c76d713c07ad', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (5, N'An', N'25d55ad283aa400af464c76d713c07ad', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (6, N'Duy', N'25d55ad283aa400af464c76d713c07ad', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (7, N'Chi', N'25d55ad283aa400af464c76d713c07ad', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (8, N'Nga', N'25d55ad283aa400af464c76d713c07ad', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (9, N'user1', N'25d55ad283aa400af464c76d713c07ad', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (10, N'user2', N'25d55ad283aa400af464c76d713c07ad', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (11, N'user3', N'25d55ad283aa400af464c76d713c07ad', N'blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (12, N'user4', N'25d55ad283aa400af464c76d713c07ad', N'blocked')
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_Product_Type] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_Product_Type]
GO
USE [master]
GO
ALTER DATABASE [TranMinhKhoaDB] SET  READ_WRITE 
GO
