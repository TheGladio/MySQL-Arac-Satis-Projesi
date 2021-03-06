USE [master]
GO
/****** Object:  Database [E-Ticaret]    Script Date: 4.01.2022 21:03:00 ******/
CREATE DATABASE [E-Ticaret]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'E-Ticaret', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\E-Ticaret.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'E-Ticaret_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\E-Ticaret_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [E-Ticaret] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [E-Ticaret].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [E-Ticaret] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [E-Ticaret] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [E-Ticaret] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [E-Ticaret] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [E-Ticaret] SET ARITHABORT OFF 
GO
ALTER DATABASE [E-Ticaret] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [E-Ticaret] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [E-Ticaret] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [E-Ticaret] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [E-Ticaret] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [E-Ticaret] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [E-Ticaret] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [E-Ticaret] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [E-Ticaret] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [E-Ticaret] SET  DISABLE_BROKER 
GO
ALTER DATABASE [E-Ticaret] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [E-Ticaret] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [E-Ticaret] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [E-Ticaret] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [E-Ticaret] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [E-Ticaret] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [E-Ticaret] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [E-Ticaret] SET RECOVERY FULL 
GO
ALTER DATABASE [E-Ticaret] SET  MULTI_USER 
GO
ALTER DATABASE [E-Ticaret] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [E-Ticaret] SET DB_CHAINING OFF 
GO
ALTER DATABASE [E-Ticaret] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [E-Ticaret] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [E-Ticaret] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [E-Ticaret] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'E-Ticaret', N'ON'
GO
ALTER DATABASE [E-Ticaret] SET QUERY_STORE = OFF
GO
USE [E-Ticaret]
GO
/****** Object:  Table [dbo].[Araç]    Script Date: 4.01.2022 21:03:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Araç](
	[Marka] [varchar](50) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[VASITA ID] [int] NOT NULL,
	[Araç ID] [int] NOT NULL,
	[SATICI ID] [int] NOT NULL,
	[Fiyat] [money] NOT NULL,
 CONSTRAINT [PK_Araç] PRIMARY KEY CLUSTERED 
(
	[Araç ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Müşteriler]    Script Date: 4.01.2022 21:03:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Müşteriler](
	[Telefon] [bigint] NOT NULL,
	[id] [int] NOT NULL,
	[Adres] [varchar](50) NOT NULL,
	[Ad] [varchar](50) NOT NULL,
	[Soyad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Müşteri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SATICI]    Script Date: 4.01.2022 21:03:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SATICI](
	[Satıcı ID] [int] NOT NULL,
	[Ad] [varchar](50) NOT NULL,
	[Soyad] [varchar](50) NOT NULL,
	[Adres] [varchar](50) NOT NULL,
	[Telefon] [bigint] NOT NULL,
 CONSTRAINT [PK_SATICI] PRIMARY KEY CLUSTERED 
(
	[Satıcı ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEPET]    Script Date: 4.01.2022 21:03:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEPET](
	[SEPET ID] [int] NOT NULL,
	[Araç ID] [int] NOT NULL,
 CONSTRAINT [PK_SEPET] PRIMARY KEY CLUSTERED 
(
	[SEPET ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sipariş]    Script Date: 4.01.2022 21:03:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sipariş](
	[Müşteri ID] [int] NOT NULL,
	[SEPET NO] [int] NOT NULL,
	[Teslim Tarihi] [date] NOT NULL,
	[Ödeme] [nchar](10) NULL,
 CONSTRAINT [PK_Sipariş] PRIMARY KEY CLUSTERED 
(
	[SEPET NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VasıtaTUR]    Script Date: 4.01.2022 21:03:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VasıtaTUR](
	[Vasıta ID] [int] NOT NULL,
	[Vasıta Türü] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VasıtaTUR] PRIMARY KEY CLUSTERED 
(
	[Vasıta ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Araç] ([Marka], [Model], [VASITA ID], [Araç ID], [SATICI ID], [Fiyat]) VALUES (N'BMW', N'İ3', 3, 1, 1, 1400000.0000)
INSERT [dbo].[Araç] ([Marka], [Model], [VASITA ID], [Araç ID], [SATICI ID], [Fiyat]) VALUES (N'BMW', N'İ4', 3, 2, 1, 1800000.0000)
INSERT [dbo].[Araç] ([Marka], [Model], [VASITA ID], [Araç ID], [SATICI ID], [Fiyat]) VALUES (N'BMW', N'İ4 M50', 3, 3, 1, 2000000.0000)
INSERT [dbo].[Araç] ([Marka], [Model], [VASITA ID], [Araç ID], [SATICI ID], [Fiyat]) VALUES (N'MERCEDES', N'15 SHD', 5, 4, 2, 5000000.0000)
INSERT [dbo].[Araç] ([Marka], [Model], [VASITA ID], [Araç ID], [SATICI ID], [Fiyat]) VALUES (N'MERCEDES', N'15 SHD', 5, 5, 2, 5000000.0000)
INSERT [dbo].[Araç] ([Marka], [Model], [VASITA ID], [Araç ID], [SATICI ID], [Fiyat]) VALUES (N'AUDI', N'A3 SEDAN', 3, 6, 3, 250000.0000)
INSERT [dbo].[Araç] ([Marka], [Model], [VASITA ID], [Araç ID], [SATICI ID], [Fiyat]) VALUES (N'TUNCA', N'BAFFY', 4, 7, 4, 150.0000)
INSERT [dbo].[Araç] ([Marka], [Model], [VASITA ID], [Araç ID], [SATICI ID], [Fiyat]) VALUES (N'FORD', N'IVECO', 2, 8, 5, 25000.0000)
INSERT [dbo].[Araç] ([Marka], [Model], [VASITA ID], [Araç ID], [SATICI ID], [Fiyat]) VALUES (N'KUBA', N'TK 03 ', 1, 9, 5, 7000.0000)
GO
INSERT [dbo].[Müşteriler] ([Telefon], [id], [Adres], [Ad], [Soyad]) VALUES (5313065501, 1, N'Güngüren', N'Emir', N'Aydın')
INSERT [dbo].[Müşteriler] ([Telefon], [id], [Adres], [Ad], [Soyad]) VALUES (5455120211, 2, N'Bağcılar', N'Çağrı', N'Öztürk')
INSERT [dbo].[Müşteriler] ([Telefon], [id], [Adres], [Ad], [Soyad]) VALUES (5145250214, 3, N'Beşiktaş', N'Recep', N'Taş')
INSERT [dbo].[Müşteriler] ([Telefon], [id], [Adres], [Ad], [Soyad]) VALUES (5144542024, 4, N'Beyoğlu', N'Hüseyin', N'Kartal')
INSERT [dbo].[Müşteriler] ([Telefon], [id], [Adres], [Ad], [Soyad]) VALUES (5125854204, 5, N'Kızılay', N'Ece', N'Sevin')
GO
INSERT [dbo].[SATICI] ([Satıcı ID], [Ad], [Soyad], [Adres], [Telefon]) VALUES (1, N'Umut', N'Taş', N'Güneştepe', 5314024758)
INSERT [dbo].[SATICI] ([Satıcı ID], [Ad], [Soyad], [Adres], [Telefon]) VALUES (2, N'Muhammet', N'Güven', N'Bağcılar', 5471452478)
INSERT [dbo].[SATICI] ([Satıcı ID], [Ad], [Soyad], [Adres], [Telefon]) VALUES (3, N'Yasin', N'Dinler', N'Kızılay', 5141585247)
INSERT [dbo].[SATICI] ([Satıcı ID], [Ad], [Soyad], [Adres], [Telefon]) VALUES (4, N'Diren', N'Kaya', N'Avcılar', 5147515434)
INSERT [dbo].[SATICI] ([Satıcı ID], [Ad], [Soyad], [Adres], [Telefon]) VALUES (5, N'Emir', N'İlhan', N'Bakırköy', 5145874565)
GO
INSERT [dbo].[SEPET] ([SEPET ID], [Araç ID]) VALUES (1, 3)
INSERT [dbo].[SEPET] ([SEPET ID], [Araç ID]) VALUES (2, 5)
INSERT [dbo].[SEPET] ([SEPET ID], [Araç ID]) VALUES (4, 4)
INSERT [dbo].[SEPET] ([SEPET ID], [Araç ID]) VALUES (5, 2)
INSERT [dbo].[SEPET] ([SEPET ID], [Araç ID]) VALUES (6, 8)
INSERT [dbo].[SEPET] ([SEPET ID], [Araç ID]) VALUES (7, 9)
GO
INSERT [dbo].[Sipariş] ([Müşteri ID], [SEPET NO], [Teslim Tarihi], [Ödeme]) VALUES (2, 1, CAST(N'2022-05-02' AS Date), N'Kredi Kart')
INSERT [dbo].[Sipariş] ([Müşteri ID], [SEPET NO], [Teslim Tarihi], [Ödeme]) VALUES (2, 2, CAST(N'2023-05-01' AS Date), N'Nakit     ')
INSERT [dbo].[Sipariş] ([Müşteri ID], [SEPET NO], [Teslim Tarihi], [Ödeme]) VALUES (3, 4, CAST(N'2022-02-01' AS Date), N'Kredi Kart')
INSERT [dbo].[Sipariş] ([Müşteri ID], [SEPET NO], [Teslim Tarihi], [Ödeme]) VALUES (5, 5, CAST(N'2023-04-20' AS Date), N'Kredi Kart')
INSERT [dbo].[Sipariş] ([Müşteri ID], [SEPET NO], [Teslim Tarihi], [Ödeme]) VALUES (4, 6, CAST(N'2025-04-12' AS Date), NULL)
INSERT [dbo].[Sipariş] ([Müşteri ID], [SEPET NO], [Teslim Tarihi], [Ödeme]) VALUES (3, 7, CAST(N'2024-01-12' AS Date), N'Kredi Kart')
GO
INSERT [dbo].[VasıtaTUR] ([Vasıta ID], [Vasıta Türü]) VALUES (1, N'Motosiklet')
INSERT [dbo].[VasıtaTUR] ([Vasıta ID], [Vasıta Türü]) VALUES (2, N'Kamyon')
INSERT [dbo].[VasıtaTUR] ([Vasıta ID], [Vasıta Türü]) VALUES (3, N'Otomobil')
INSERT [dbo].[VasıtaTUR] ([Vasıta ID], [Vasıta Türü]) VALUES (4, N'Bisiklet')
INSERT [dbo].[VasıtaTUR] ([Vasıta ID], [Vasıta Türü]) VALUES (5, N'Otobüs')
GO
ALTER TABLE [dbo].[Araç]  WITH CHECK ADD  CONSTRAINT [FK_Araç_SATICI] FOREIGN KEY([SATICI ID])
REFERENCES [dbo].[SATICI] ([Satıcı ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Araç] CHECK CONSTRAINT [FK_Araç_SATICI]
GO
ALTER TABLE [dbo].[Araç]  WITH CHECK ADD  CONSTRAINT [FK_Araç_VasıtaTUR] FOREIGN KEY([VASITA ID])
REFERENCES [dbo].[VasıtaTUR] ([Vasıta ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Araç] CHECK CONSTRAINT [FK_Araç_VasıtaTUR]
GO
ALTER TABLE [dbo].[SEPET]  WITH CHECK ADD  CONSTRAINT [FK_SEPET_Araç] FOREIGN KEY([Araç ID])
REFERENCES [dbo].[Araç] ([Araç ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SEPET] CHECK CONSTRAINT [FK_SEPET_Araç]
GO
ALTER TABLE [dbo].[SEPET]  WITH CHECK ADD  CONSTRAINT [FK_SEPET_Sipariş] FOREIGN KEY([SEPET ID])
REFERENCES [dbo].[Sipariş] ([SEPET NO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SEPET] CHECK CONSTRAINT [FK_SEPET_Sipariş]
GO
ALTER TABLE [dbo].[Sipariş]  WITH CHECK ADD  CONSTRAINT [FK_Sipariş_Müşteriler1] FOREIGN KEY([Müşteri ID])
REFERENCES [dbo].[Müşteriler] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sipariş] CHECK CONSTRAINT [FK_Sipariş_Müşteriler1]
GO
USE [master]
GO
ALTER DATABASE [E-Ticaret] SET  READ_WRITE 
GO
