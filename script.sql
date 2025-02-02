USE [master]
GO
/****** Object:  Database [турбаза]    Script Date: 24.12.2024 11:39:02 ******/
CREATE DATABASE [турбаза]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'турбаза', FILENAME = N'B:\SQL2019\MSSQL15.SQLEXPRESS\MSSQL\DATA\турбаза.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'турбаза_log', FILENAME = N'B:\SQL2019\MSSQL15.SQLEXPRESS\MSSQL\DATA\турбаза_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [турбаза] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [турбаза].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [турбаза] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [турбаза] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [турбаза] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [турбаза] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [турбаза] SET ARITHABORT OFF 
GO
ALTER DATABASE [турбаза] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [турбаза] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [турбаза] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [турбаза] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [турбаза] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [турбаза] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [турбаза] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [турбаза] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [турбаза] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [турбаза] SET  DISABLE_BROKER 
GO
ALTER DATABASE [турбаза] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [турбаза] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [турбаза] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [турбаза] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [турбаза] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [турбаза] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [турбаза] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [турбаза] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [турбаза] SET  MULTI_USER 
GO
ALTER DATABASE [турбаза] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [турбаза] SET DB_CHAINING OFF 
GO
ALTER DATABASE [турбаза] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [турбаза] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [турбаза] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [турбаза] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [турбаза] SET QUERY_STORE = OFF
GO
USE [турбаза]
GO
/****** Object:  Table [dbo].[персонал]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[персонал](
	[ID_сотрудника] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [nvarchar](100) NULL,
	[Должность] [nvarchar](50) NULL,
	[Номер_телефона] [nvarchar](20) NULL,
	[E_mail] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[услуги]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[услуги](
	[ID_услуги] [int] IDENTITY(1,1) NOT NULL,
	[Тип_услуги] [nvarchar](100) NULL,
	[Цена] [int] NULL,
	[ID_сотрудника] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT        dbo.услуги.ID_услуги, dbo.услуги.Тип_услуги AS Expr1, dbo.услуги.Цена, dbo.персонал.ФИО AS Expr2, dbo.персонал.Должность, dbo.услуги.ID_сотрудника
FROM            dbo.персонал INNER JOIN
                         dbo.услуги ON dbo.персонал.ID_сотрудника = dbo.услуги.ID_сотрудника
GO
/****** Object:  Table [dbo].[адреса]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[адреса](
	[ID_адреса] [int] IDENTITY(1,1) NOT NULL,
	[Адрес] [nvarchar](100) NULL,
	[График] [nvarchar](100) NULL,
	[Карта] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_адреса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[бронь_номера]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[бронь_номера](
	[ID_брони] [int] IDENTITY(1,1) NOT NULL,
	[Дата_начала_брони] [nchar](10) NOT NULL,
	[Дата_окончания_брони] [nchar](10) NOT NULL,
	[ID_клиента] [int] NULL,
	[ID_номера] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_брони] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[галерея]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[галерея](
	[ID_картинки] [int] IDENTITY(1,1) NOT NULL,
	[Ссылка] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_картинки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[клиенты]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[клиенты](
	[ID_клиента] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [nvarchar](30) NULL,
	[Номер_телефона] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_клиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[корзина]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[корзина](
	[ID_корзины] [int] IDENTITY(1,1) NOT NULL,
	[ID_услуги] [int] NULL,
	[Пользователь] [nvarchar](255) NULL,
	[Дата_добавления_в_корзину_услуги] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_корзины] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[новости]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[новости](
	[ID_новости] [int] IDENTITY(1,1) NOT NULL,
	[Заголовок] [nvarchar](255) NULL,
	[Текст] [nvarchar](max) NULL,
	[Ссылка] [nvarchar](255) NULL,
	[ID_адреса] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_новости] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[номера]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[номера](
	[ID_номера] [int] IDENTITY(1,1) NOT NULL,
	[Тип_номера] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_номера] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[покупка]    Script Date: 24.12.2024 11:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[покупка](
	[ID_Записи] [int] NOT NULL,
	[ID_Корзина] [int] NOT NULL,
	[ID_Клиента] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Записи] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[бронь_номера]  WITH CHECK ADD  CONSTRAINT [FK_бронь_номера_клиенты] FOREIGN KEY([ID_клиента])
REFERENCES [dbo].[клиенты] ([ID_клиента])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[бронь_номера] CHECK CONSTRAINT [FK_бронь_номера_клиенты]
GO
ALTER TABLE [dbo].[бронь_номера]  WITH CHECK ADD  CONSTRAINT [FK_бронь_номера_номера] FOREIGN KEY([ID_номера])
REFERENCES [dbo].[номера] ([ID_номера])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[бронь_номера] CHECK CONSTRAINT [FK_бронь_номера_номера]
GO
ALTER TABLE [dbo].[новости]  WITH CHECK ADD  CONSTRAINT [FK_новости_адреса] FOREIGN KEY([ID_адреса])
REFERENCES [dbo].[адреса] ([ID_адреса])
GO
ALTER TABLE [dbo].[новости] CHECK CONSTRAINT [FK_новости_адреса]
GO
ALTER TABLE [dbo].[услуги]  WITH CHECK ADD  CONSTRAINT [fk_id_сотрудника] FOREIGN KEY([ID_сотрудника])
REFERENCES [dbo].[персонал] ([ID_сотрудника])
GO
ALTER TABLE [dbo].[услуги] CHECK CONSTRAINT [fk_id_сотрудника]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "персонал"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "услуги"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 136
               Right = 435
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
USE [master]
GO
ALTER DATABASE [турбаза] SET  READ_WRITE 
GO
