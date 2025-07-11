
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
/****** Object:  Table [dbo].[tbl_cake]    Script Date: 15-01-2021 15:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cake](
	[cake_id] [int] IDENTITY(1,1) NOT NULL,
	[cake_name] [nvarchar](50) NOT NULL,
	[cake_description] [nvarchar](50) NOT NULL,
	[cake_quantity] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[tbl_cakegallery]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_caketype]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_complainttype]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_customer]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_deliveryboy]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_district]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_gallery]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_ingredient]    Script Date: 15-01-2021 15:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ingredient](
	[ingredient_id] [int] IDENTITY(1,1) NOT NULL,
	[ingredient_name] [nvarchar](50) NOT NULL,
	[ingredient_description] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[tbl_ingredientgallery]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_ingredientstock]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_place]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_product]    Script Date: 15-01-2021 15:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NOT NULL,
	[product_description] [nvarchar](50) NOT NULL,
	[product_quantity] [nvarchar](50) NULL,
	[producttype_id] [int] NOT NULL,
	[product_price] [nvarchar](50) NOT NULL,
	[product_image] [nvarchar](50) NOT NULL,
	[baker_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_producttype]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_shop]    Script Date: 15-01-2021 15:45:09 ******/
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
	[shop_licno] [nvarchar](50) NOT NULL,
	[shop_proof] [nvarchar](50) NOT NULL,
	[shop_ownername] [nvarchar](50) NOT NULL,
	[shop_ownercontact] [nvarchar](50) NOT NULL,
	[shop_owneraddr] [nvarchar](50) NOT NULL,
	[shop_ownerproof] [nvarchar](50) NOT NULL,
	[shop_username] [nvarchar](50) NOT NULL,
	[shop_password] [nvarchar](50) NOT NULL,
	[shop_status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_shop] PRIMARY KEY CLUSTERED 
(
	[shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_tool]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_toolgallery]    Script Date: 15-01-2021 15:45:09 ******/
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
/****** Object:  Table [dbo].[tbl_toolstock]    Script Date: 15-01-2021 15:45:09 ******/
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
SET IDENTITY_INSERT [dbo].[tbl_baker] ON 

INSERT [dbo].[tbl_baker] ([baker_id], [baker_name], [baker_gender], [baker_address], [baker_proof], [baker_photo], [baker_contact], [baker_email], [place_id], [baker_username], [baker_password], [baker_status]) VALUES (3, N'Shaji Kuttan', N'Male', N'fjhghkg', N'1927778454.2.jpg', N'26a681117976.5d798b41a6162.jpg', N'9887767677', N'kmshaji@gmail.com', 2, N'shajikm', N'shaji', N'1')
INSERT [dbo].[tbl_baker] ([baker_id], [baker_name], [baker_gender], [baker_address], [baker_proof], [baker_photo], [baker_contact], [baker_email], [place_id], [baker_username], [baker_password], [baker_status]) VALUES (4, N'Anu Anto', N'Female', N'kaiparambil house', N'download.jfif', N'e-ball-computer-design2.jpg', N'8988787878', N'anuanto@gmail.com', 12, N'anuantony', N'anu', N'1')
INSERT [dbo].[tbl_baker] ([baker_id], [baker_name], [baker_gender], [baker_address], [baker_proof], [baker_photo], [baker_contact], [baker_email], [place_id], [baker_username], [baker_password], [baker_status]) VALUES (5, N'anusha', N'Female', N'kaiparambil house', N'e-ball-computer-design2.jpg', N'6348283.jpg', N'9789263768', N'anuanto@gmail.com', 12, N'anusha', N'anusha', N'1')
INSERT [dbo].[tbl_baker] ([baker_id], [baker_name], [baker_gender], [baker_address], [baker_proof], [baker_photo], [baker_contact], [baker_email], [place_id], [baker_username], [baker_password], [baker_status]) VALUES (6, N'Soniya', N'Female', N'snehalayam villa', N'Slide1.jpg', N'download.jpeg', N'8793468734', N'soniyalj@gmail.com', 11, N'soniya', N'sony', N'1')
INSERT [dbo].[tbl_baker] ([baker_id], [baker_name], [baker_gender], [baker_address], [baker_proof], [baker_photo], [baker_contact], [baker_email], [place_id], [baker_username], [baker_password], [baker_status]) VALUES (7, N'Sophiya', N'Female', N'snehalayam villa', N'images.jpeg', N'images.jfif', N'9878978872', N'sophiya@gmail.com', 16, N'sophiya', N'sophy', N'1')
INSERT [dbo].[tbl_baker] ([baker_id], [baker_name], [baker_gender], [baker_address], [baker_proof], [baker_photo], [baker_contact], [baker_email], [place_id], [baker_username], [baker_password], [baker_status]) VALUES (8, N'Raina', N'Female', N'asad', N'e-ball-computer-design6.jpg', N'download.jfif', N'9789797867', N'raina@gmail.com', 11, N'raina', N'raina', N'0')
INSERT [dbo].[tbl_baker] ([baker_id], [baker_name], [baker_gender], [baker_address], [baker_proof], [baker_photo], [baker_contact], [baker_email], [place_id], [baker_username], [baker_password], [baker_status]) VALUES (9, N'sheeba', N'Female', N'sfgteyrt', N'e-ball-computer-design2.jpg', N'download.jfif', N'7687678889', N'sheeba@gmail.com', 18, N'sheeba', N'sheeba', N'0')
SET IDENTITY_INSERT [dbo].[tbl_baker] OFF
SET IDENTITY_INSERT [dbo].[tbl_cakegallery] ON 

INSERT [dbo].[tbl_cakegallery] ([cakegallery_id], [cakegallery_image], [cake_id]) VALUES (1, N'4.png', 1)
SET IDENTITY_INSERT [dbo].[tbl_cakegallery] OFF
SET IDENTITY_INSERT [dbo].[tbl_caketype] ON 

INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (1, N'Red velvet')
INSERT [dbo].[tbl_caketype] ([caketype_id], [caketype_name]) VALUES (2, N'Marble')
SET IDENTITY_INSERT [dbo].[tbl_caketype] OFF
SET IDENTITY_INSERT [dbo].[tbl_customer] ON 

INSERT [dbo].[tbl_customer] ([user_id], [user_name], [user_address], [user_contact], [user_email], [place_id], [user_username], [user_password]) VALUES (2, N'kunjan', N'hjfjgvjf', N'7867667766', N'kunjan@gmail.com', 2, N'kunjan', N'kunjan12')
INSERT [dbo].[tbl_customer] ([user_id], [user_name], [user_address], [user_contact], [user_email], [place_id], [user_username], [user_password]) VALUES (3, N'athul', N'mhfhg', N'8786576678', N'athul@gmail.com', 11, N'athul', N'athul')
INSERT [dbo].[tbl_customer] ([user_id], [user_name], [user_address], [user_contact], [user_email], [place_id], [user_username], [user_password]) VALUES (4, N'shiya', N'jhfghjhb', N'7878767887', N'shiya@gmail.com', 13, N'shiya', N'shiya')
SET IDENTITY_INSERT [dbo].[tbl_customer] OFF
SET IDENTITY_INSERT [dbo].[tbl_deliveryboy] ON 

INSERT [dbo].[tbl_deliveryboy] ([deliveryboy_id], [deliveryboy_name], [deliveryboy_address], [deliveryboy_contact], [deliveryboy_gender], [deliveryboy_email], [deliveryboy_proof1], [deliveryboy_proof2], [deliveryboy_photo], [place_id], [deliveryboy_username], [deliveryboy_password], [deliveryboy_status]) VALUES (4, N'Saji M', N'addsaa', N'8908909895', N'Male', N'saji@gmail.com', N'1927778454.2.jpg', N'download.jfif', N'6348283.jpg', 1, N'saji', N'sajim', N'1')
INSERT [dbo].[tbl_deliveryboy] ([deliveryboy_id], [deliveryboy_name], [deliveryboy_address], [deliveryboy_contact], [deliveryboy_gender], [deliveryboy_email], [deliveryboy_proof1], [deliveryboy_proof2], [deliveryboy_photo], [place_id], [deliveryboy_username], [deliveryboy_password], [deliveryboy_status]) VALUES (5, N'ashik', N'gfjfvhjg', N'8767867786', N'Male', N'ashik@gamil.com', N'e-ball-computer-design1.jpg', N'e-ball-computer-design6.jpg', N'6348283.jpg', 20, N'ashik', N'ashik', N'1')
INSERT [dbo].[tbl_deliveryboy] ([deliveryboy_id], [deliveryboy_name], [deliveryboy_address], [deliveryboy_contact], [deliveryboy_gender], [deliveryboy_email], [deliveryboy_proof1], [deliveryboy_proof2], [deliveryboy_photo], [place_id], [deliveryboy_username], [deliveryboy_password], [deliveryboy_status]) VALUES (6, N'william', N'jgkhjlh', N'9878765654', N'Male', N'william14@gmail.com', N'6348283.jpg', N'download.jfif', N'e-ball-computer-design6.jpg', 18, N'william14', N'william14', N'1')
INSERT [dbo].[tbl_deliveryboy] ([deliveryboy_id], [deliveryboy_name], [deliveryboy_address], [deliveryboy_contact], [deliveryboy_gender], [deliveryboy_email], [deliveryboy_proof1], [deliveryboy_proof2], [deliveryboy_photo], [place_id], [deliveryboy_username], [deliveryboy_password], [deliveryboy_status]) VALUES (7, N'joby', N'gujhku', N'9878765453', N'Male', N'william14@gmail.com', N'e-ball-computer-design1.jpg', N'e-ball-computer-design6.jpg', N'1927778454.2.jpg', 5, N'joby', N'joby', N'0')
INSERT [dbo].[tbl_deliveryboy] ([deliveryboy_id], [deliveryboy_name], [deliveryboy_address], [deliveryboy_contact], [deliveryboy_gender], [deliveryboy_email], [deliveryboy_proof1], [deliveryboy_proof2], [deliveryboy_photo], [place_id], [deliveryboy_username], [deliveryboy_password], [deliveryboy_status]) VALUES (8, N'jfgjhg', N'adfaf', N'9887767677', N'Female', N'ads@gmail.com', N'e-ball-computer-design2.jpg', N'e-ball-computer-design2.jpg', N'download.jfif', 2, N'sdfds', N'sdfds', N'2')
SET IDENTITY_INSERT [dbo].[tbl_deliveryboy] OFF
SET IDENTITY_INSERT [dbo].[tbl_district] ON 

INSERT [dbo].[tbl_district] ([district_id], [district_name]) VALUES (1, N'Ernakulam')
INSERT [dbo].[tbl_district] ([district_id], [district_name]) VALUES (2, N'Idukki')
INSERT [dbo].[tbl_district] ([district_id], [district_name]) VALUES (3, N'Kottayam')
INSERT [dbo].[tbl_district] ([district_id], [district_name]) VALUES (4, N'Kannur')
SET IDENTITY_INSERT [dbo].[tbl_district] OFF
SET IDENTITY_INSERT [dbo].[tbl_gallery] ON 

INSERT [dbo].[tbl_gallery] ([gallery_id], [gallery_image], [product_id]) VALUES (2, N'e-ball-computer-design1.jpg', 1)
INSERT [dbo].[tbl_gallery] ([gallery_id], [gallery_image], [product_id]) VALUES (3, N'1927778454.2.jpg', 3)
INSERT [dbo].[tbl_gallery] ([gallery_id], [gallery_image], [product_id]) VALUES (5, N'e-ball-computer-design1.jpg', 3)
SET IDENTITY_INSERT [dbo].[tbl_gallery] OFF
SET IDENTITY_INSERT [dbo].[tbl_ingredient] ON 

INSERT [dbo].[tbl_ingredient] ([ingredient_id], [ingredient_name], [ingredient_description], [ingredient_price], [ingredient_expiry], [ingredient_image], [shop_id]) VALUES (2, N'Maida', N'packet of 1kg', N'32', N'2021-01-31', N'e-ball-computer-design2.jpg', 6)
SET IDENTITY_INSERT [dbo].[tbl_ingredient] OFF
SET IDENTITY_INSERT [dbo].[tbl_ingredientgallery] ON 

INSERT [dbo].[tbl_ingredientgallery] ([ingallery_id], [ingallery_image], [ingredient_id]) VALUES (3, N'e-ball-computer-design2.jpg', 2)
SET IDENTITY_INSERT [dbo].[tbl_ingredientgallery] OFF
SET IDENTITY_INSERT [dbo].[tbl_ingredientstock] ON 

INSERT [dbo].[tbl_ingredientstock] ([instock_id], [instock_quantity], [ingredient_id]) VALUES (1, N'30', 2)
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
SET IDENTITY_INSERT [dbo].[tbl_place] OFF
SET IDENTITY_INSERT [dbo].[tbl_product] ON 

INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_description], [product_quantity], [producttype_id], [product_price], [product_image], [baker_id]) VALUES (1, N'Cream bun', N'sweet', N'', 1, N'20', N'e-ball-computer-design2.jpg', 4)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_description], [product_quantity], [producttype_id], [product_price], [product_image], [baker_id]) VALUES (2, N'Garlic bread', N'for sandwich', N'', 3, N'10', N'1927778454.2.jpg', 4)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_description], [product_quantity], [producttype_id], [product_price], [product_image], [baker_id]) VALUES (4, N'wheat bread', N'jgfg', N'', 3, N'32', N'e-ball-computer-design6.jpg', 5)
SET IDENTITY_INSERT [dbo].[tbl_product] OFF
SET IDENTITY_INSERT [dbo].[tbl_producttype] ON 

INSERT [dbo].[tbl_producttype] ([producttype_id], [producttype_name]) VALUES (1, N'Bun')
INSERT [dbo].[tbl_producttype] ([producttype_id], [producttype_name]) VALUES (3, N'Bread')
SET IDENTITY_INSERT [dbo].[tbl_producttype] OFF
SET IDENTITY_INSERT [dbo].[tbl_shop] ON 

INSERT [dbo].[tbl_shop] ([shop_id], [shop_name], [shop_contact], [shop_email], [shop_address], [place_id], [shop_logo], [shop_licno], [shop_proof], [shop_ownername], [shop_ownercontact], [shop_owneraddr], [shop_ownerproof], [shop_username], [shop_password], [shop_status]) VALUES (5, N'K & K ', N'9098998009', N'kk1993@gmail.com', N'sjgfjh ', 2, N'e-ball-technology-13-638.jpg', N'bcd476657', N'eball-technology-elements.jpg', N'Manu', N'9894587443', N'jhgfkh', N'1927778454.2.jpg', N'kk1993', N'kk1993', N'1')
INSERT [dbo].[tbl_shop] ([shop_id], [shop_name], [shop_contact], [shop_email], [shop_address], [place_id], [shop_logo], [shop_licno], [shop_proof], [shop_ownername], [shop_ownercontact], [shop_owneraddr], [shop_ownerproof], [shop_username], [shop_password], [shop_status]) VALUES (6, N'Mahmod crockeries', N'8768668787', N'mahmod@gmail.com', N'saudi', 1, N'download.jfif', N'gfv46546', N'e-ball-computer-design2.jpg', N'Arjun', N'9766876877', N'kacheripady, palluruthy', N'e-ball-computer-design1.jpg', N'mhcrockery', N'mhcrockery', N'1')
INSERT [dbo].[tbl_shop] ([shop_id], [shop_name], [shop_contact], [shop_email], [shop_address], [place_id], [shop_logo], [shop_licno], [shop_proof], [shop_ownername], [shop_ownercontact], [shop_owneraddr], [shop_ownerproof], [shop_username], [shop_password], [shop_status]) VALUES (7, N'mh crockery', N'8768668787', N'mhcrockery@gmail.com', N'saudi', 1, N'e-ball-computer-design1.jpg', N'gfv46546', N'6348283.jpg', N'Arjun', N'9766876877', N'kacheripady, palluruthy', N'e-ball-computer-design6.jpg', N'mhcrockery', N'mhcrockery', N'2')
INSERT [dbo].[tbl_shop] ([shop_id], [shop_name], [shop_contact], [shop_email], [shop_address], [place_id], [shop_logo], [shop_licno], [shop_proof], [shop_ownername], [shop_ownercontact], [shop_owneraddr], [shop_ownerproof], [shop_username], [shop_password], [shop_status]) VALUES (8, N'bakers', N'9879778769', N'bakers@gmail.com', N'building no. 121', 5, N'e-ball-computer-design6.jpg', N'hju867876', N'e-ball-computer-design2.jpg', N'Aldrin', N'789998878', N'hjgkkjghkj', N'e-ball-computer-design6.jpg', N'bakers', N'bakers', N'2')
INSERT [dbo].[tbl_shop] ([shop_id], [shop_name], [shop_contact], [shop_email], [shop_address], [place_id], [shop_logo], [shop_licno], [shop_proof], [shop_ownername], [shop_ownercontact], [shop_owneraddr], [shop_ownerproof], [shop_username], [shop_password], [shop_status]) VALUES (9, N'batter and bake', N'9878967676', N'bandb@gmail.com', N'hgkhghg', 5, N'6348283.jpg', N'kl867676', N'e-ball-computer-design2.jpg', N'albin', N'98945874436', N'gjfujgfvk', N'download.jfif', N'batterandbake', N'batterandbake', N'2')
INSERT [dbo].[tbl_shop] ([shop_id], [shop_name], [shop_contact], [shop_email], [shop_address], [place_id], [shop_logo], [shop_licno], [shop_proof], [shop_ownername], [shop_ownercontact], [shop_owneraddr], [shop_ownerproof], [shop_username], [shop_password], [shop_status]) VALUES (10, N'rgggd', N'9887767677', N'sdf@gmail.com', N'dsfdf', 2, N'download.jfif', N'kl867423', N'6348283.jpg', N'aby', N'8698667687', N'kjhkj', N'e-ball-computer-design1.jpg', N'rgd', N'rgd', N'0')
SET IDENTITY_INSERT [dbo].[tbl_shop] OFF
SET IDENTITY_INSERT [dbo].[tbl_tool] ON 

INSERT [dbo].[tbl_tool] ([tool_id], [tool_name], [tool_description], [tool_price], [tool_image], [shop_id]) VALUES (3, N'icing pipe', N'jhbhk', N'20', N'e-ball-computer-design6.jpg', 6)
INSERT [dbo].[tbl_tool] ([tool_id], [tool_name], [tool_description], [tool_price], [tool_image], [shop_id]) VALUES (4, N'star icing pipe', N'jhbhk', N'25', N'e-ball-computer-design6.jpg', 6)
SET IDENTITY_INSERT [dbo].[tbl_tool] OFF
SET IDENTITY_INSERT [dbo].[tbl_toolgallery] ON 

INSERT [dbo].[tbl_toolgallery] ([toolgallery_id], [toolgallery_image], [tool_id]) VALUES (1, N'e-ball-computer-design2.jpg', 3)
INSERT [dbo].[tbl_toolgallery] ([toolgallery_id], [toolgallery_image], [tool_id]) VALUES (2, N'1927778454.2.jpg', 3)
INSERT [dbo].[tbl_toolgallery] ([toolgallery_id], [toolgallery_image], [tool_id]) VALUES (4, N'e-ball-computer-design2.jpg', 4)
SET IDENTITY_INSERT [dbo].[tbl_toolgallery] OFF
SET IDENTITY_INSERT [dbo].[tbl_toolstock] ON 

INSERT [dbo].[tbl_toolstock] ([toolstock_id], [toolstock_quantity], [tool_id]) VALUES (1, N'25', 3)
INSERT [dbo].[tbl_toolstock] ([toolstock_id], [toolstock_quantity], [tool_id]) VALUES (2, N'15', 4)
SET IDENTITY_INSERT [dbo].[tbl_toolstock] OFF
USE [master]
GO
ALTER DATABASE [db_bakers] SET  READ_WRITE 
GO
