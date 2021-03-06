USE [master]
GO
/****** Object:  Database [DemoDatabase]    Script Date: 22-03-2021 13:10:21 ******/
CREATE DATABASE [DemoDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DemoDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemoDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DemoDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DemoDatabase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DemoDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemoDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [DemoDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [DemoDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DemoDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DemoDatabase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DemoDatabase', N'ON'
GO
ALTER DATABASE [DemoDatabase] SET QUERY_STORE = OFF
GO
USE [DemoDatabase]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22-03-2021 13:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weather]    Script Date: 22-03-2021 13:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weather](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TemperatureC] [float] NULL,
	[Summary] [nvarchar](max) NULL,
	[Day] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Address], [Phone]) VALUES (1, N'skill', N'alley', N'9854030105')
INSERT [dbo].[User] ([Id], [Name], [Address], [Phone]) VALUES (2, N'amit', N'india', N'9854630105')
INSERT [dbo].[User] ([Id], [Name], [Address], [Phone]) VALUES (3, N'demo', N'db', N'8540301040')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Weather] ON 

INSERT [dbo].[Weather] ([Id], [TemperatureC], [Summary], [Day]) VALUES (1, 25.1, N'Day1', CAST(N'2021-03-20T01:17:15.357' AS DateTime))
INSERT [dbo].[Weather] ([Id], [TemperatureC], [Summary], [Day]) VALUES (2, 25.2, N'Day2', CAST(N'2021-03-21T01:17:15.357' AS DateTime))
INSERT [dbo].[Weather] ([Id], [TemperatureC], [Summary], [Day]) VALUES (3, 25.3, N'Day3', CAST(N'2021-03-22T01:17:15.357' AS DateTime))
INSERT [dbo].[Weather] ([Id], [TemperatureC], [Summary], [Day]) VALUES (4, 25.1, N'Day4', CAST(N'2021-03-22T01:17:15.357' AS DateTime))
SET IDENTITY_INSERT [dbo].[Weather] OFF
GO
USE [master]
GO
ALTER DATABASE [DemoDatabase] SET  READ_WRITE 
GO
