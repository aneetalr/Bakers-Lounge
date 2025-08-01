USE [master]
GO
/****** Object:  Database [db_bakers]    Script Date: 10-04-2021 15:08:11 ******/
CREATE DATABASE [db_bakers]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_bakers', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_bakers.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_bakers_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_bakers_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_bakers] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_bakers].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_bakers] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_bakers] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_bakers] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_bakers] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_bakers] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_bakers] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_bakers] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_bakers] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_bakers] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_bakers] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_bakers] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_bakers] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_bakers] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_bakers] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_bakers] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_bakers] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_bakers] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_bakers] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_bakers] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_bakers] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_bakers] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_bakers] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_bakers] SET RECOVERY FULL 
GO
ALTER DATABASE [db_bakers] SET  MULTI_USER 
GO
ALTER DATABASE [db_bakers] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_bakers] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_bakers] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_bakers] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [db_bakers] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_bakers', N'ON'
GO
USE [db_bakers]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [nvarchar](50) NOT NULL,
	[admin_password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_assignborder]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_assignborder](
	[assignborder_id] [int] IDENTITY(1,1) NOT NULL,
	[assignborder_date] [nvarchar](50) NOT NULL,
	[assignborder_status] [nvarchar](50) NOT NULL,
	[ccake_id] [int] NULL,
	[productbook_id] [int] NULL,
	[cakebook_id] [int] NULL,
	[deliveryboy_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_assignborder] PRIMARY KEY CLUSTERED 
(
	[assignborder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_assignsorder]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_assignsorder](
	[assignsorder_id] [int] IDENTITY(1,1) NOT NULL,
	[assignsorder_date] [nvarchar](50) NOT NULL,
	[assignsorder_status] [nvarchar](50) NOT NULL,
	[toolbook_id] [int] NULL,
	[inbook_id] [int] NULL,
	[deliveryboy_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_assignsorder] PRIMARY KEY CLUSTERED 
(
	[assignsorder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_baker]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_baker](
	[baker_id] [int] IDENTITY(1,1) NOT NULL,
	[baker_name] [nvarchar](50) NOT NULL,
	[baker_gender] [nvarchar](50) NOT NULL,
	[baker_address] [nvarchar](50) NOT NULL,
	[baker_proof] [nvarchar](50) NOT NULL,
	[baker_photo] [nvarchar](50) NOT NULL,
	[baker_contact] [nvarchar](50) NOT NULL,
	[baker_email] [nvarchar](50) NOT NULL,
	[place_id] [int] NOT NULL,
	[baker_username] [nvarchar](50) NOT NULL,
	[baker_password] [nvarchar](50) NOT NULL,
	[baker_status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_baker] PRIMARY KEY CLUSTERED 
(
	[baker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_cake]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cake](
	[cake_id] [int] IDENTITY(1,1) NOT NULL,
	[cake_name] [nvarchar](50) NOT NULL,
	[cake_description] [nvarchar](50) NULL,
	[cake_weight] [nvarchar](50) NOT NULL,
	[cake_price] [nvarchar](50) NOT NULL,
	[cake_image] [nvarchar](50) NOT NULL,
	[caketype_id] [int] NOT NULL,
	[baker_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_cake] PRIMARY KEY CLUSTERED 
(
	[cake_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_cakebook]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cakebook](
	[cakebook_id] [int] IDENTITY(1,1) NOT NULL,
	[cakebook_quantity] [nvarchar](50) NOT NULL,
	[cakebook_totalamount] [nvarchar](50) NOT NULL,
	[cakebook_date] [nvarchar](50) NOT NULL,
	[cakebook_deliveryaddr] [nvarchar](50) NOT NULL,
	[cakebook_deliverydate] [nvarchar](50) NOT NULL,
	[cakebook_pickupaddr] [nvarchar](50) NULL,
	[cakebook_caption] [nvarchar](50) NULL,
	[cakebook_cstatus] [nvarchar](50) NOT NULL,
	[cakebook_pstatus] [nvarchar](50) NOT NULL,
	[cakebook_dstatus] [nvarchar](50) NOT NULL,
	[cake_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_cakebook] PRIMARY KEY CLUSTERED 
(
	[cakebook_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_cakegallery]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cakegallery](
	[cakegallery_id] [int] IDENTITY(1,1) NOT NULL,
	[cakegallery_image] [nvarchar](50) NOT NULL,
	[cake_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_cakegallery] PRIMARY KEY CLUSTERED 
(
	[cakegallery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_caketype]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_caketype](
	[caketype_id] [int] IDENTITY(1,1) NOT NULL,
	[caketype_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_caketype] PRIMARY KEY CLUSTERED 
(
	[caketype_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ccakereview]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ccakereview](
	[ccakereview_id] [int] IDENTITY(1,1) NOT NULL,
	[ccakereview_review] [nvarchar](50) NOT NULL,
	[ccakereview_date] [nvarchar](50) NOT NULL,
	[ccake_id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_ccakereview] PRIMARY KEY CLUSTERED 
(
	[ccakereview_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_complaint]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_complaint](
	[complaint_id] [int] IDENTITY(1,1) NOT NULL,
	[complainttype_id] [int] NOT NULL,
	[complaint_title] [nvarchar](50) NOT NULL,
	[complaint_data] [nvarchar](50) NOT NULL,
	[complaint_date] [nvarchar](50) NOT NULL,
	[complaint_reply] [nvarchar](50) NULL,
	[complaint_replydate] [nvarchar](50) NULL,
	[complaint_status] [nvarchar](50) NOT NULL,
	[baker_id] [int] NULL CONSTRAINT [DF_tbl_complaint_baker_id]  DEFAULT ((0)),
	[user_id] [int] NULL CONSTRAINT [DF_tbl_complaint_user_id]  DEFAULT ((0)),
	[shop_id] [int] NULL CONSTRAINT [DF_tbl_complaint_shop_id]  DEFAULT ((0)),
 CONSTRAINT [PK_tbl_complaint] PRIMARY KEY CLUSTERED 
(
	[complaint_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_complainttype]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_complainttype](
	[complainttype_id] [int] IDENTITY(1,1) NOT NULL,
	[complainttype_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_complainttype] PRIMARY KEY CLUSTERED 
(
	[complainttype_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_customer]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_customer](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[user_address] [nvarchar](50) NOT NULL,
	[user_contact] [nvarchar](50) NOT NULL,
	[user_email] [nvarchar](50) NOT NULL,
	[place_id] [int] NOT NULL,
	[user_username] [nvarchar](50) NOT NULL,
	[user_password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_customer] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_customizecake]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_customizecake](
	[ccake_id] [int] IDENTITY(1,1) NOT NULL,
	[ccake_shape] [nvarchar](50) NOT NULL,
	[flavour_id] [int] NOT NULL,
	[ccake_caption] [nvarchar](50) NULL,
	[ccake_weight] [nvarchar](50) NOT NULL,
	[ccake_detail] [nvarchar](50) NULL,
	[ccake_date] [nvarchar](50) NOT NULL,
	[ccake_deliveryaddr] [nvarchar](50) NOT NULL,
	[ccake_deliverydate] [nvarchar](50) NOT NULL,
	[ccake_pickupaddr] [nvarchar](50) NULL,
	[ccake_totalamount] [nvarchar](50) NULL,
	[ccake_status] [nvarchar](50) NOT NULL,
	[ccake_pstatus] [nvarchar](50) NOT NULL,
	[ccake_dstatus] [nvarchar](50) NOT NULL,
	[user_id] [int] NOT NULL,
	[baker_id] [int] NULL,
 CONSTRAINT [PK_tbl_customizecake] PRIMARY KEY CLUSTERED 
(
	[ccake_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_deliveryboy]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_deliveryboy](
	[deliveryboy_id] [int] IDENTITY(1,1) NOT NULL,
	[deliveryboy_name] [nvarchar](50) NOT NULL,
	[deliveryboy_address] [nvarchar](50) NOT NULL,
	[deliveryboy_contact] [nvarchar](50) NOT NULL,
	[deliveryboy_gender] [nvarchar](50) NOT NULL,
	[deliveryboy_email] [nvarchar](50) NOT NULL,
	[deliveryboy_proof1] [nvarchar](50) NOT NULL,
	[deliveryboy_proof2] [nvarchar](50) NOT NULL,
	[deliveryboy_photo] [nvarchar](50) NOT NULL,
	[place_id] [int] NOT NULL,
	[deliveryboy_username] [nvarchar](50) NOT NULL,
	[deliveryboy_password] [nvarchar](50) NOT NULL,
	[deliveryboy_status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_deliveryboy] PRIMARY KEY CLUSTERED 
(
	[deliveryboy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_district]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_district](
	[district_id] [int] IDENTITY(1,1) NOT NULL,
	[district_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_district] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_feedback]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[feedback_data] [nvarchar](50) NOT NULL,
	[feedback_date] [nvarchar](50) NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_feedback] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_flavour]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_flavour](
	[flavour_id] [int] IDENTITY(1,1) NOT NULL,
	[flavour_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_flavour] PRIMARY KEY CLUSTERED 
(
	[flavour_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_gallery]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_gallery](
	[gallery_id] [int] IDENTITY(1,1) NOT NULL,
	[gallery_image] [nvarchar](50) NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_gallery] PRIMARY KEY CLUSTERED 
(
	[gallery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ingredient]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ingredient](
	[ingredient_id] [int] IDENTITY(1,1) NOT NULL,
	[ingredient_name] [nvarchar](50) NOT NULL,
	[ingredient_description] [nvarchar](50) NULL,
	[ingredient_weight] [nvarchar](50) NOT NULL,
	[ingredient_price] [nvarchar](50) NOT NULL,
	[ingredient_expiry] [nvarchar](50) NOT NULL,
	[ingredient_image] [nvarchar](50) NOT NULL,
	[shop_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ingredient] PRIMARY KEY CLUSTERED 
(
	[ingredient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ingredientbook]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ingredientbook](
	[inbook_id] [int] IDENTITY(1,1) NOT NULL,
	[inbook_quantity] [nvarchar](50) NOT NULL,
	[inbook_totalamount] [nvarchar](50) NOT NULL,
	[inbook_date] [nvarchar](50) NOT NULL,
	[inbook_deliveryaddr] [nvarchar](50) NOT NULL,
	[inbook_deliverydate] [nvarchar](50) NOT NULL,
	[inbook_cstatus] [nvarchar](50) NOT NULL,
	[inbook_pstatus] [nvarchar](50) NOT NULL,
	[inbook_dstatus] [nvarchar](50) NOT NULL,
	[ingredient_id] [int] NOT NULL,
	[baker_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ingredientbook] PRIMARY KEY CLUSTERED 
(
	[inbook_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ingredientgallery]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ingredientgallery](
	[ingallery_id] [int] IDENTITY(1,1) NOT NULL,
	[ingallery_image] [nvarchar](50) NOT NULL,
	[ingredient_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ingredientgallery] PRIMARY KEY CLUSTERED 
(
	[ingallery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ingredientstock]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ingredientstock](
	[instock_id] [int] IDENTITY(1,1) NOT NULL,
	[instock_quantity] [nvarchar](50) NOT NULL,
	[ingredient_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ingredientstock] PRIMARY KEY CLUSTERED 
(
	[instock_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_place]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_place](
	[place_id] [int] IDENTITY(1,1) NOT NULL,
	[place_name] [nvarchar](50) NOT NULL,
	[district_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_place] PRIMARY KEY CLUSTERED 
(
	[place_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_product]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NOT NULL,
	[product_description] [nvarchar](50) NULL,
	[product_weight] [nvarchar](50) NULL,
	[product_price] [nvarchar](50) NOT NULL,
	[product_image] [nvarchar](50) NOT NULL,
	[producttype_id] [int] NOT NULL,
	[baker_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_productbook]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_productbook](
	[productbook_id] [int] IDENTITY(1,1) NOT NULL,
	[productbook_quantity] [nvarchar](50) NOT NULL,
	[productbook_totalamount] [nvarchar](50) NOT NULL,
	[productbook_date] [nvarchar](50) NOT NULL,
	[productbook_deliverydate] [nvarchar](50) NOT NULL,
	[productbook_deliveryaddr] [nvarchar](50) NOT NULL,
	[productbook_pickupaddr] [nvarchar](50) NOT NULL,
	[productbook_cstatus] [nvarchar](50) NOT NULL,
	[productbook_dstatus] [nvarchar](50) NOT NULL,
	[productbook_pstatus] [nvarchar](50) NOT NULL,
	[product_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_productbook] PRIMARY KEY CLUSTERED 
(
	[productbook_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_producttype]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_producttype](
	[producttype_id] [int] IDENTITY(1,1) NOT NULL,
	[producttype_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_producttype] PRIMARY KEY CLUSTERED 
(
	[producttype_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_shop]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_shop](
	[shop_id] [int] IDENTITY(1,1) NOT NULL,
	[shop_name] [nvarchar](50) NOT NULL,
	[shop_contact] [nvarchar](50) NOT NULL,
	[shop_email] [nvarchar](50) NOT NULL,
	[shop_address] [nvarchar](50) NOT NULL,
	[place_id] [int] NOT NULL,
	[shop_logo] [nvarchar](50) NOT NULL,
	[shop_proof] [nvarchar](50) NOT NULL,
	[shop_licno] [nvarchar](50) NOT NULL,
	[shop_ownername] [nvarchar](50) NOT NULL,
	[shop_ownercontact] [nvarchar](50) NOT NULL,
	[shop_owneraddr] [nvarchar](50) NOT NULL,
	[shop_ownerproof] [nvarchar](50) NOT NULL,
	[shop_username] [nvarchar](50) NOT NULL,
	[shop_password] [nvarchar](50) NOT NULL,
	[shop_status] [nvarchar](50) NOT NULL,
	[shop_pstatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_shop] PRIMARY KEY CLUSTERED 
(
	[shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_tool]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_tool](
	[tool_id] [int] IDENTITY(1,1) NOT NULL,
	[tool_name] [nvarchar](50) NOT NULL,
	[tool_description] [nvarchar](50) NULL,
	[tool_price] [nvarchar](50) NOT NULL,
	[tool_image] [nvarchar](50) NOT NULL,
	[shop_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_tool] PRIMARY KEY CLUSTERED 
(
	[tool_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_toolbook]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_toolbook](
	[toolbook_id] [int] IDENTITY(1,1) NOT NULL,
	[toolbook_quantity] [nvarchar](50) NOT NULL,
	[toolbook_totalamount] [nvarchar](50) NOT NULL,
	[toolbook_date] [nvarchar](50) NOT NULL,
	[toolbook_deliveryaddr] [nvarchar](50) NOT NULL,
	[toolbook_deliverydate] [nvarchar](50) NOT NULL,
	[toolbook_cstatus] [nvarchar](50) NOT NULL,
	[toolbook_pstatus] [nvarchar](50) NOT NULL,
	[toolbook_dstatus] [nvarchar](50) NOT NULL,
	[tool_id] [int] NOT NULL,
	[baker_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_toolbook] PRIMARY KEY CLUSTERED 
(
	[toolbook_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_toolgallery]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_toolgallery](
	[toolgallery_id] [int] IDENTITY(1,1) NOT NULL,
	[toolgallery_image] [nvarchar](50) NOT NULL,
	[tool_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_toolgallery] PRIMARY KEY CLUSTERED 
(
	[toolgallery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_toolstock]    Script Date: 10-04-2021 15:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_toolstock](
	[toolstock_id] [int] IDENTITY(1,1) NOT NULL,
	[toolstock_quantity] [nvarchar](50) NOT NULL,
	[tool_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_toolstock] PRIMARY KEY CLUSTERED 
(
	[toolstock_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_admin] ON 

INSERT [dbo].[tbl_admin] ([admin_id], [admin_name], [admin_password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[tbl_admin] OFF
SET IDENTITY_INSERT [dbo].[tbl_assignsorder] ON 

INSERT [dbo].[tbl_assignsorder] ([assignsorder_id], [assignsorder_date], [assignsorder_status], [toolbook_id], [inbook_id], [deliveryboy_id]) VALUES (1, N'03-04-2021', N'0', 17, NULL, 13)
SET IDENTITY_INSERT [dbo].[tbl_assignsorder] OFF
SET IDENTITY_INSERT [dbo].[tbl_baker] ON 

INSERT [dbo].[tbl_baker] ([baker_id], [baker_name], [baker_gender], [baker_address], [baker_proof], [baker_photo], [baker_contact], [baker_email], [place_id], [baker_username], [baker_password], [baker_status]) VALUES (22, N'Anusha Antony', N'Female', N'Kaitharaparambil House, Goodwill Lane, Kadavanthra', N'id1.jpg', N'w4.jpeg', N'9878967676', N'anushaanto2004@gmail.com', 25, N'anuantony', N'Anuantony_04', N'1')
INSERT [dbo].[tbl_baker] ([baker_id], [baker_name], [baker_gender], [baker_address], [baker_proof], [baker_photo], [baker_contact], [baker_email], [place_id], [baker_username], [baker_password], [baker_status]) VALUES (27, N'Mercy Shiyana', N'Female', N'Kalathiparambil House, APJ Road, Kadavanthra', N'id2.jpg', N'w2.jpeg', N'8908909895', N'mercyshiya@gmail.com', 25, N'mercyshiya', N'mercyshiya', N'1')
INSERT [dbo].[tbl_baker] ([baker_id], [baker_name], [baker_gender], [baker_address], [baker_proof], [baker_photo], [baker_contact], [baker_email], [place_id], [baker_username], [baker_password], [baker_status]) VALUES (30, N'Lissie Shally', N'Female', N'Lenthaparambil house,kuttath,labour corner,eroor', N'id.jpeg', N'w1.jpg', N'7898798767', N'lissyshaly@gmail.com', 5, N'lissyshaly', N'lissyshaly', N'1')
SET IDENTITY_INSERT [dbo].[tbl_baker] OFF
SET IDENTITY_INSERT [dbo].[tbl_cake] ON 

INSERT [dbo].[tbl_cake] ([cake_id], [cake_name], [cake_description], [cake_weight], [cake_price], [cake_image], [caketype_id], [baker_id]) VALUES (10, N'Chocolate ganache butter cake', N'Italian butter cake with chocolate covering', N'1', N'300', N'cake1.jpg', 3, 27)
SET IDENTITY_INSERT [dbo].[tbl_cake] OFF
SET IDENTITY_INSERT [dbo].[tbl_cakebook] ON 

INSERT [dbo].[tbl_cakebook] ([cakebook_id], [cakebook_quantity], [cakebook_totalamount], [cakebook_date], [cakebook_deliveryaddr], [cakebook_deliverydate], [cakebook_pickupaddr], [cakebook_caption], [cakebook_cstatus], [cakebook_pstatus], [cakebook_dstatus], [cake_id], [user_id]) VALUES (18, N'1', N'300', N'02-04-2021', N'near bishop house, hill palace, tripunithura', N'2021-04-13', N'0', N'ghdcfuhi', N'2', N'1', N'0', 10, 5)
SET IDENTITY_INSERT [dbo].[tbl_cakebook] OFF
SET IDENTITY_INSERT [dbo].[tbl_cakegallery] ON 

INSERT [dbo].[tbl_cakegallery] ([cakegallery_id], [cakegallery_image], [cake_id]) VALUES (24, N'cake1.jpg', 10)
INSERT [dbo].[tbl_cakegallery] ([cakegallery_id], [cakegallery_image], [cake_id]) VALUES (25, N'chococake2.jpeg', 10)
INSERT [dbo].[tbl_cakegallery] ([cakegallery_id], [cakegallery_image], [cake_id]) VALUES (26, N'chococake3.jpeg', 10)
SET IDENTITY_INSERT [dbo].[tbl_cakegallery] OFF
SET IDENTITY_INSERT [dbo].[tbl_caketype] ON 

INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (3, N'Butter cake')
INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (4, N'Carrot cake')
INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (6, N'Sponge cake')
INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (7, N'Cheese cake')
INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (8, N'Tea cake')
INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (9, N'Marble Cake')
INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (10, N'Coffee cake')
INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (11, N'Sugar free cakes')
INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (12, N'Pistachio cake')
INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (13, N'Plum Cake')
SET IDENTITY_INSERT [dbo].[tbl_caketype] OFF
SET IDENTITY_INSERT [dbo].[tbl_complaint] ON 

INSERT [dbo].[tbl_complaint] ([complaint_id], [complainttype_id], [complaint_title], [complaint_data], [complaint_date], [complaint_reply], [complaint_replydate], [complaint_status], [baker_id], [user_id], [shop_id]) VALUES (13, 9, N'Color', N'Soo Bright', N'03-04-2021', N'Thank you.We will look for a solution soon', N'03-04-2021', N'1', 27, 0, 0)
SET IDENTITY_INSERT [dbo].[tbl_complaint] OFF
SET IDENTITY_INSERT [dbo].[tbl_complainttype] ON 

INSERT [dbo].[tbl_complainttype] ([complainttype_id], [complainttype_name]) VALUES (7, N'Order')
INSERT [dbo].[tbl_complainttype] ([complainttype_id], [complainttype_name]) VALUES (8, N'Server')
INSERT [dbo].[tbl_complainttype] ([complainttype_id], [complainttype_name]) VALUES (9, N'Design')
SET IDENTITY_INSERT [dbo].[tbl_complainttype] OFF
SET IDENTITY_INSERT [dbo].[tbl_customer] ON 

INSERT [dbo].[tbl_customer] ([user_id], [user_name], [user_address], [user_contact], [user_email], [place_id], [user_username], [user_password]) VALUES (5, N'Noel Varghese', N'kaiparambil house,goodwill lane', N'9812147112', N'noel2000@gmail.com', 25, N'noelvk', N'noelvk')
INSERT [dbo].[tbl_customer] ([user_id], [user_name], [user_address], [user_contact], [user_email], [place_id], [user_username], [user_password]) VALUES (6, N'Nikitha Joesph', N'Snehanilayam,MKRA 122', N'7898791212', N'nikijoseph@gmail.com', 12, N'nikithaniki', N'nikithaniki')
INSERT [dbo].[tbl_customer] ([user_id], [user_name], [user_address], [user_contact], [user_email], [place_id], [user_username], [user_password]) VALUES (7, N'Christya Joesph', N'Shenoys jn', N'9898791212', N'nikijoseph@gmail.com', 2, N'christya', N'christya')
INSERT [dbo].[tbl_customer] ([user_id], [user_name], [user_address], [user_contact], [user_email], [place_id], [user_username], [user_password]) VALUES (8, N'Jose maliyakkal', N'Perekunnu', N'8745123659', N'josejose@gmail.com', 11, N'josejose', N'josejose')
SET IDENTITY_INSERT [dbo].[tbl_customer] OFF
SET IDENTITY_INSERT [dbo].[tbl_customizecake] ON 

INSERT [dbo].[tbl_customizecake] ([ccake_id], [ccake_shape], [flavour_id], [ccake_caption], [ccake_weight], [ccake_detail], [ccake_date], [ccake_deliveryaddr], [ccake_deliverydate], [ccake_pickupaddr], [ccake_totalamount], [ccake_status], [ccake_pstatus], [ccake_dstatus], [user_id], [baker_id]) VALUES (3, N'Round', 4, N'happy birthday Shanu', N'1', N'No eggs', N'03-04-2021', N'Near queens walkway', N'2021-04-22', NULL, NULL, N'1', N'0', N'0', 5, NULL)
SET IDENTITY_INSERT [dbo].[tbl_customizecake] OFF
SET IDENTITY_INSERT [dbo].[tbl_deliveryboy] ON 

INSERT [dbo].[tbl_deliveryboy] ([deliveryboy_id], [deliveryboy_name], [deliveryboy_address], [deliveryboy_contact], [deliveryboy_gender], [deliveryboy_email], [deliveryboy_proof1], [deliveryboy_proof2], [deliveryboy_photo], [place_id], [deliveryboy_username], [deliveryboy_password], [deliveryboy_status]) VALUES (13, N'Jeemon Martin', N'Chakkattuparambil House, Panambilly nagar', N'9878967676', N'Male', N'jeemonm@gmail.com', N'id.jpeg', N'id3.jpeg', N'm2.png', 25, N'gmonjeemon', N'gmonjeemon', N'1')
INSERT [dbo].[tbl_deliveryboy] ([deliveryboy_id], [deliveryboy_name], [deliveryboy_address], [deliveryboy_contact], [deliveryboy_gender], [deliveryboy_email], [deliveryboy_proof1], [deliveryboy_proof2], [deliveryboy_photo], [place_id], [deliveryboy_username], [deliveryboy_password], [deliveryboy_status]) VALUES (14, N'asdfg', N'asd56789', N'9878967676', N'Male', N'dfghjk@gmail.com', N'id2.jpg', N'id1.jpg', N'm2.png', 5, N'123', N'123', N'2')
SET IDENTITY_INSERT [dbo].[tbl_deliveryboy] OFF
SET IDENTITY_INSERT [dbo].[tbl_district] ON 

INSERT [dbo].[tbl_district] ([district_id], [district_name]) VALUES (1, N'Ernakulam')
INSERT [dbo].[tbl_district] ([district_id], [district_name]) VALUES (2, N'Idukki')
INSERT [dbo].[tbl_district] ([district_id], [district_name]) VALUES (3, N'Kottayam')
INSERT [dbo].[tbl_district] ([district_id], [district_name]) VALUES (9, N'Alappuzha')
INSERT [dbo].[tbl_district] ([district_id], [district_name]) VALUES (11, N'Palakkad')
INSERT [dbo].[tbl_district] ([district_id], [district_name]) VALUES (13, N'Kozhikode')
SET IDENTITY_INSERT [dbo].[tbl_district] OFF
SET IDENTITY_INSERT [dbo].[tbl_flavour] ON 

INSERT [dbo].[tbl_flavour] ([flavour_id], [flavour_name]) VALUES (1, N'Mango')
INSERT [dbo].[tbl_flavour] ([flavour_id], [flavour_name]) VALUES (2, N'Strawberry')
INSERT [dbo].[tbl_flavour] ([flavour_id], [flavour_name]) VALUES (3, N'Chocolate')
INSERT [dbo].[tbl_flavour] ([flavour_id], [flavour_name]) VALUES (4, N'Butterscotch')
INSERT [dbo].[tbl_flavour] ([flavour_id], [flavour_name]) VALUES (5, N'Vanilla')
SET IDENTITY_INSERT [dbo].[tbl_flavour] OFF
SET IDENTITY_INSERT [dbo].[tbl_gallery] ON 

INSERT [dbo].[tbl_gallery] ([gallery_id], [gallery_image], [product_id]) VALUES (24, N'cookie2.jpeg', 9)
INSERT [dbo].[tbl_gallery] ([gallery_id], [gallery_image], [product_id]) VALUES (25, N'cookie3.jpeg', 9)
INSERT [dbo].[tbl_gallery] ([gallery_id], [gallery_image], [product_id]) VALUES (26, N'flour2.jpeg', 10)
INSERT [dbo].[tbl_gallery] ([gallery_id], [gallery_image], [product_id]) VALUES (27, N'id2.jpg', 10)
SET IDENTITY_INSERT [dbo].[tbl_gallery] OFF
SET IDENTITY_INSERT [dbo].[tbl_ingredient] ON 

INSERT [dbo].[tbl_ingredient] ([ingredient_id], [ingredient_name], [ingredient_description], [ingredient_weight], [ingredient_price], [ingredient_expiry], [ingredient_image], [shop_id]) VALUES (4, N'Plain flour', N'No chemicals added', N'1', N'100', N'2021-05-27', N'flour2.jpeg', 23)
SET IDENTITY_INSERT [dbo].[tbl_ingredient] OFF
SET IDENTITY_INSERT [dbo].[tbl_ingredientgallery] ON 

INSERT [dbo].[tbl_ingredientgallery] ([ingallery_id], [ingallery_image], [ingredient_id]) VALUES (10, N'flour3.jpg', 4)
INSERT [dbo].[tbl_ingredientgallery] ([ingallery_id], [ingallery_image], [ingredient_id]) VALUES (11, N'flour1.jpeg', 4)
INSERT [dbo].[tbl_ingredientgallery] ([ingallery_id], [ingallery_image], [ingredient_id]) VALUES (12, N'flour4.jpeg', 4)
INSERT [dbo].[tbl_ingredientgallery] ([ingallery_id], [ingallery_image], [ingredient_id]) VALUES (13, N'flour2.jpeg', 4)
SET IDENTITY_INSERT [dbo].[tbl_ingredientgallery] OFF
SET IDENTITY_INSERT [dbo].[tbl_ingredientstock] ON 

INSERT [dbo].[tbl_ingredientstock] ([instock_id], [instock_quantity], [ingredient_id]) VALUES (6, N'20', 4)
SET IDENTITY_INSERT [dbo].[tbl_ingredientstock] OFF
SET IDENTITY_INSERT [dbo].[tbl_place] ON 

INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (1, N'Fortkochi', 1)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (2, N'Thoppumpady', 1)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (5, N'Thripunithura', 1)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (7, N'Permunbavoor', 1)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (8, N'Muvattupuzha', 1)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (10, N'Vyttila', 1)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (11, N'Mundakayam', 3)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (12, N'Kumily', 2)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (13, N'Kattappana', 2)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (14, N'Mararyur', 2)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (15, N'Munnar', 2)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (16, N'Vaikom', 3)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (18, N'Kanjirappally', 3)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (20, N'Ettumanoor', 3)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (21, N'Iritty', 4)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (22, N'Payyanur', 4)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (24, N'Thalassery', 4)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (25, N'Kadavanthra', 1)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (27, N'Vennala', 1)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (28, N'Kakkanad', 1)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (29, N'Edapally', 1)
INSERT [dbo].[tbl_place] ([place_id], [place_name], [district_id]) VALUES (30, N'Manjummal', 1)
SET IDENTITY_INSERT [dbo].[tbl_place] OFF
SET IDENTITY_INSERT [dbo].[tbl_product] ON 

INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_description], [product_weight], [product_price], [product_image], [producttype_id], [baker_id]) VALUES (9, N'Chocolate chips cookies', N'cookie with chocolate chip', N'6', N'210', N'cccookie1.jpeg', 9, 27)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_description], [product_weight], [product_price], [product_image], [producttype_id], [baker_id]) VALUES (10, N'Wheat bread', N'Bread bmade using wheat', N'1', N'30', N'flour1.jpeg', 4, 27)
SET IDENTITY_INSERT [dbo].[tbl_product] OFF
SET IDENTITY_INSERT [dbo].[tbl_productbook] ON 

INSERT [dbo].[tbl_productbook] ([productbook_id], [productbook_quantity], [productbook_totalamount], [productbook_date], [productbook_deliverydate], [productbook_deliveryaddr], [productbook_pickupaddr], [productbook_cstatus], [productbook_dstatus], [productbook_pstatus], [product_id], [user_id]) VALUES (18, N'2', N'420', N'02-04-2021', N'2021-05-27', N'goodwill lane,kadavanthra', N'0', N'2', N'0', N'1', 9, 5)
INSERT [dbo].[tbl_productbook] ([productbook_id], [productbook_quantity], [productbook_totalamount], [productbook_date], [productbook_deliverydate], [productbook_deliveryaddr], [productbook_pickupaddr], [productbook_cstatus], [productbook_dstatus], [productbook_pstatus], [product_id], [user_id]) VALUES (20, N'1', N'210', N'02-04-2021', N'2021-05-06', N'asdf', N'0', N'3', N'0', N'0', 9, 5)
INSERT [dbo].[tbl_productbook] ([productbook_id], [productbook_quantity], [productbook_totalamount], [productbook_date], [productbook_deliverydate], [productbook_deliveryaddr], [productbook_pickupaddr], [productbook_cstatus], [productbook_dstatus], [productbook_pstatus], [product_id], [user_id]) VALUES (21, N'1', N'210', N'05-04-2021', N'2021-04-25', N'dfghjkl', N'0', N'2', N'0', N'1', 9, 5)
SET IDENTITY_INSERT [dbo].[tbl_productbook] OFF
SET IDENTITY_INSERT [dbo].[tbl_producttype] ON 

INSERT [dbo].[tbl_producttype] ([producttype_id], [producttype_name]) VALUES (4, N'Bread')
INSERT [dbo].[tbl_producttype] ([producttype_id], [producttype_name]) VALUES (5, N'Bun')
INSERT [dbo].[tbl_producttype] ([producttype_id], [producttype_name]) VALUES (7, N'Doughnuts')
INSERT [dbo].[tbl_producttype] ([producttype_id], [producttype_name]) VALUES (9, N'Cookies')
INSERT [dbo].[tbl_producttype] ([producttype_id], [producttype_name]) VALUES (10, N'Biscuits')
INSERT [dbo].[tbl_producttype] ([producttype_id], [producttype_name]) VALUES (11, N'Muffins')
INSERT [dbo].[tbl_producttype] ([producttype_id], [producttype_name]) VALUES (12, N'Cracker')
INSERT [dbo].[tbl_producttype] ([producttype_id], [producttype_name]) VALUES (13, N'Sweets')
SET IDENTITY_INSERT [dbo].[tbl_producttype] OFF
SET IDENTITY_INSERT [dbo].[tbl_shop] ON 

INSERT [dbo].[tbl_shop] ([shop_id], [shop_name], [shop_contact], [shop_email], [shop_address], [place_id], [shop_logo], [shop_proof], [shop_licno], [shop_ownername], [shop_ownercontact], [shop_owneraddr], [shop_ownerproof], [shop_username], [shop_password], [shop_status], [shop_pstatus]) VALUES (1, N'Bakers trades', N'9887767677', N'bakerstrade12@gmail.com', N'gcfvhj', 10, N'images.jfif', N'id2.jpg', N'gfv46546', N'Animol Saju', N'9894587786', N'fghjkl', N'id2.jpg', N'bakerstrade12', N'bakerstrade12', N'1', N'0')
SET IDENTITY_INSERT [dbo].[tbl_shop] OFF
SET IDENTITY_INSERT [dbo].[tbl_tool] ON 

INSERT [dbo].[tbl_tool] ([tool_id], [tool_name], [tool_description], [tool_price], [tool_image], [shop_id]) VALUES (7, N'Measuring Spoon', N'Plastic', N'110', N'spoon2.jpg', 23)
SET IDENTITY_INSERT [dbo].[tbl_tool] OFF
SET IDENTITY_INSERT [dbo].[tbl_toolbook] ON 

INSERT [dbo].[tbl_toolbook] ([toolbook_id], [toolbook_quantity], [toolbook_totalamount], [toolbook_date], [toolbook_deliveryaddr], [toolbook_deliverydate], [toolbook_cstatus], [toolbook_pstatus], [toolbook_dstatus], [tool_id], [baker_id]) VALUES (17, N'1', N'110', N'03-04-2021', N'goodwill lane,kadavanthra', N'0', N'2', N'1', N'1', 7, 27)
SET IDENTITY_INSERT [dbo].[tbl_toolbook] OFF
SET IDENTITY_INSERT [dbo].[tbl_toolgallery] ON 

INSERT [dbo].[tbl_toolgallery] ([toolgallery_id], [toolgallery_image], [tool_id]) VALUES (10, N'spoon1.jpeg', 7)
INSERT [dbo].[tbl_toolgallery] ([toolgallery_id], [toolgallery_image], [tool_id]) VALUES (11, N'spoon.jpeg', 7)
INSERT [dbo].[tbl_toolgallery] ([toolgallery_id], [toolgallery_image], [tool_id]) VALUES (12, N'spoon2.jpg', 7)
SET IDENTITY_INSERT [dbo].[tbl_toolgallery] OFF
SET IDENTITY_INSERT [dbo].[tbl_toolstock] ON 

INSERT [dbo].[tbl_toolstock] ([toolstock_id], [toolstock_quantity], [tool_id]) VALUES (5, N'12', 7)
SET IDENTITY_INSERT [dbo].[tbl_toolstock] OFF
ALTER TABLE [dbo].[tbl_assignborder] ADD  CONSTRAINT [DF_tbl_assignborder_ccake_id]  DEFAULT ((0)) FOR [ccake_id]
GO
ALTER TABLE [dbo].[tbl_assignborder] ADD  CONSTRAINT [DF_tbl_assignborder_productbook_id]  DEFAULT ((0)) FOR [productbook_id]
GO
ALTER TABLE [dbo].[tbl_assignborder] ADD  CONSTRAINT [DF_tbl_assignborder_cakebook_id]  DEFAULT ((0)) FOR [cakebook_id]
GO
USE [master]
GO
ALTER DATABASE [db_bakers] SET  READ_WRITE 
GO
