USE [ShopDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28-Nov-18 6:13:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Good]    Script Date: 28-Nov-18 6:13:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Good](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Price] [float] NOT NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DescriptionFull] [nvarchar](max) NULL,
 CONSTRAINT [PK_Good] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 28-Nov-18 6:13:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 28-Nov-18 6:13:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Login] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Toys')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Socks')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Pins')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Keychains')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Good] ON 

INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (2, 1, N'Heart of Gold', 24, N'https://cdn.shopify.com/s/files/1/0392/9333/products/HEARTOFGOLD-IHEARTGUTS_1024x1024.jpg?v=1516824747', N'Metallic Plush', N'Don''t skip this beat! Say it like you mean it with this spectacular Heart of Gold metallic vinyl plush, sized 10" x 8" x 4", the same as our regular plush heart. Only for the most super-special peges 3+. Designed in the USA, handmade in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (3, 1, N'Tooth Plushhh', 200, N'https://cdn.shopify.com/s/files/1/0392/9333/products/TOOTH-IHEARTGUTS-B_lrg_1024x1024.jpeg?v=1535673310', N'Flossin'' Ain''t Just For Gangstas', N'We also have a tooth lapel pin. Don''t forget to brush, floss and gargle! Designed in the US, made in China. Safe for all ages.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (4, 1, N'Pancreas Plush', 200, N'https://cdn.shopify.com/s/files/1/0392/9333/products/PANCREAS-SHADOW-IHEARTGUTS-C_1024x1024.jpg?v=1481146367', N'Sweet on You!', N'Our plush pancreas is bigger, softer and more huggable than ever. Giant super-soft high-quality 11" x 8" x 2.5" plush comes with a marvelous mini-book educational hangtag filled with art, trivia, silliness and actual information about this sugar-regulating digestive buddy. sugar from the bloodstream. Isn''t that sweet? Safe for all ages. Designed in California, made in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (5, 2, N'Heart of Gold', 7, N'https://cdn.shopify.com/s/files/1/0392/9333/products/Heart-Of-Gold_1024x1024.jpg?v=1437625002', N'Metallic Socks', N'Step into these super cute Heart of Gold metallic cotton socks, brought to you by Neon Eaters x I Heart Guts.  Available Small - kids'' size 9-13 (2-6 years old), Medium - youth 1-5 (7-11 year olds), Large - women''s 6-10/ men''s 5-9, and XL - women''s 10-13/men''s 9-12. Machine wash cold, dry low. Made in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (6, 2, N'Go With Your Guts', 7, N'https://cdn.shopify.com/s/files/1/0392/9333/products/GO_WITH_YOUR_GUTS3_1024x1024.jpg?v=1438799860', N'Light Blue Multicolor - Lung Liver Kidney Heart', N'Ridiculously cute organs on organic cotton socks, brought to you by Neon Eaters x I Heart Guts.  Available Small - kids'' size 9-13 (2-6 years old), Medium - youth 1-5 (7-11 year olds), Large - women''s 6-10/ men''s 5-9, and XL - women''s 10-13/men''s 9-12. Machine wash cold, dry low. Made in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (7, 2, N'I Heart You', 7, N'https://cdn.shopify.com/s/files/1/0392/9333/products/EATERS-HEART-SOCKS_1024x1024.jpg?v=1410188127', N'Heart Socks - Red and Blue', N'These soft and comfy organic crew socks are splattered with happy squirting hearts. By Neon Eaters x I Heart Guts. Available Small - kids'' size 9-13 (2-6 years old), Medium - youth 1-5 (7-11 year olds), Large - women''s 6-10/ men''s 5-9, and XL - women''s 10-13/men''s 9-12. Machine wash cold, dry low. Made in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (9, 3, N'Heart Lapel Pin', 4, N'https://cdn.shopify.com/s/files/1/0392/9333/products/pin-heart-copy_1024x1024.jpg?v=1530126234', N'Feel the Beat!', N'Get pumped with this cute little heart lapel pin! Have a little heart on your jacket or lab coat. This cute gutsy 1.25" pin is made from durable printed aluminum, comes packed on a card and was made in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (10, 3, N'Kidney Lapel Pin', 4, N'https://cdn.shopify.com/s/files/1/0392/9333/products/pin-kidney-copy_1024x1024.jpg?v=1530126352', N'Urine My Heart!', N'filter your blood and make pee! And now it''s a pin, too -- yay! If you feel like being anatomically correct, pair it with an adrenal gland, or get two kidneys. Perfect for your favorite nephrologist''s white coat. This cute little 1.25" pin is made from durable printed aluminum, comes packed on a card and was made in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (11, 3, N'Brain Lapel Pin', 5, N'https://cdn.shopify.com/s/files/1/0392/9333/products/pin-brain-copy_1024x1024.jpg?v=1530119145', N'All You Need Is Lobe', N'Celebrate your cortex with this smart brain lapel pin. Wearing one won''t make you smarter, but it won''t make you any dumber, either. Perfect for that marvelous neurologist or neuroscientist in your life. This cute little 1.25" printed aluminum pin comes packed on a card and was made in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (16, 3, N'Lungs Lapel Pin', 4, N'https://cdn.shopify.com/s/files/1/0392/9333/products/PIN-LUNG_1024x1024.jpg?v=1530121678', N'I Lung You', N'Lung is in the air when you wear this awesome pulmonary pal. Perfect for any doc''s white lab coat. This cute 1.25" pin is made from durable printed aluminum, comes packed on a card and was made in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (23, 4, N'Eyeball Keychain', 7, N'https://cdn.shopify.com/s/files/1/0392/9333/products/KEYCHAIN-EYEBALL_1024x1024.jpg?v=1479157586', N'Party Pupil in the House', N'You’ll be lookin’ good with our eyeball keychain in charge of your keys. Soft enamel keychain measures 2.15” x 1.8”, engraved with "Party Pupil in the House" on the back. Cardboard backing describes the wonder of the human eyeball. Designed in the U.S., made in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (24, 4, N'Gold Tooth Keychain', 7, N'https://cdn.shopify.com/s/files/1/0392/9333/products/KEYCHAIN-GOLDTOOTH_lrg_1024x1024.jpeg?v=1404399902', N'Can You Handle the Tooth?', N'Let this super cute blinged-out tooth dress up your keys. The engraved back of the keychain and cardboard display both say: "Gold Tooth: Can You Handle the Tooth?" Zinc alloy faux gold 2" keychain, polybagged. Designed in the US, made in China.')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (25, 1, N'Colon Plush', 20, N'https://cdn.shopify.com/s/files/1/0392/9333/products/COLON-NO-TAG_1024x1024.jpg?v=1543274768', N'You Move Me', N'Soft and cuddly 11" x 8" x 2.5" colon plush wants to do more than just make excretory magic -- it wants to be your friend! The colon makes up most of the large intestine and is the magical tube that transforms digested food into feces. Your colon is colonized by a dynamic microbial ecosystem — bacteria account for 60% of the mass of your fecal solids. Wow! ')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (26, 2, N'Item', 30, N'/Images/no_image.png', N'Some description', N'Full description')
INSERT [dbo].[Good] ([Id], [CategoryId], [Name], [Price], [ImagePath], [Description], [DescriptionFull]) VALUES (28, 4, N'Name', 60, N'/Images/no_image.png', N'Info', N'Description blablabla')
SET IDENTITY_INSERT [dbo].[Good] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'Administrator')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [RoleId], [Login], [Password]) VALUES (1, 1, N'admin', N'123')
INSERT [dbo].[Users] ([Id], [RoleId], [Login], [Password]) VALUES (2, 2, N'user', N'111')
INSERT [dbo].[Users] ([Id], [RoleId], [Login], [Password]) VALUES (3, 2, N'buyer', N'qwerty')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Good]  WITH CHECK ADD  CONSTRAINT [FK_Good_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Good] CHECK CONSTRAINT [FK_Good_Category]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
