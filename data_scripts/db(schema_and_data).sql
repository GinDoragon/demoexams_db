SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[AgentTypeID] [int] NOT NULL,
	[Address] [nvarchar](300) NULL,
	[INN] [varchar](12) NOT NULL,
	[KPP] [varchar](9) NULL,
	[DirectorName] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Logo] [nvarchar](100) NULL,
	[Priority] [int] NOT NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentPriorityHistory]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentPriorityHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AgentID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[PriorityValue] [int] NOT NULL,
 CONSTRAINT [PK_AgentPriorityHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentType]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_AgentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[CountInPack] [int] NOT NULL,
	[Unit] [nvarchar](10) NOT NULL,
	[CountInStock] [float] NULL,
	[MinCount] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Cost] [decimal](10, 2) NOT NULL,
	[Image] [nvarchar](100) NULL,
	[MaterialTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialCountHistory]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialCountHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[CountValue] [float] NOT NULL,
 CONSTRAINT [PK_MaterialCountHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialSupplier]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialSupplier](
	[MaterialID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_MaterialSupplier] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC,
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DefectedPercent] [float] NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ProductTypeID] [int] NULL,
	[ArticleNumber] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](100) NULL,
	[ProductionPersonCount] [int] NULL,
	[ProductionWorkshopNumber] [int] NULL,
	[MinCostForAgent] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCostHistory]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCostHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[CostValue] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_ProductCostHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[ProductID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[Count] [float] NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AgentID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[SaleDate] [date] NOT NULL,
	[ProductCount] [int] NOT NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DefectedPercent] [float] NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Address] [nvarchar](300) NULL,
	[AgentID] [int] NOT NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 15.09.2021 10:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[INN] [varchar](12) NOT NULL,
	[StartDate] [date] NOT NULL,
	[QualityRating] [int] NULL,
	[SupplierType] [nvarchar](20) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agent] ON 

INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (101, N'МонтажОрионУрал', 9, N'027573, Тамбовская область, город Коломна, ул. Ленина, 20', N'1692286718', N'181380912', N'Давыдоваа Нина Евгеньевна', N'(35222)67-39-26', N'pzaitev@blokin.org', N'\agents\agent_96.png', 50)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (102, N'МетизСтрой', 9, N'254238, Нижегородская область, город Павловский Посад, проезд Балканская, 23', N'4024742936', N'295608432', N'Ева Борисовна Беспалова', N'8-800-172-62-56', N'kristina.pakomov@burova.ru', N'\agents\agent_94.png', 374)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (103, N'РадиоСевер', 10, N'491360, Московская область, город Одинцово, въезд Ленина, 19', N'5889206249', N'372789083', N'Карпов Иосиф Максимович', N'(495)368-86-51', N'maiy.belov@rogov.ru', N'\agents\agent_123.png', 431)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (104, N'Компания КазАлмаз', 11, N'848810, Кемеровская область, город Лотошино, пер. Ломоносова, 90', N'3084797352', N'123190924', N'Марк Фёдорович Муравьёва', N'8-800-533-24-75', N'irina.gusina@vlasova.ru', N'\agents\agent_80.png', 396)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (105, N'Компания СервисРадиоГор', 11, N'547196, Ульяновская область, город Серебряные Пруды, въезд Балканская, 81', N'8880473721', N'729975116', N'Попов Вадим Александрович', N'8-800-676-32-86', N'nika.nekrasova@kovalev.ru', N'\agents\agent_40.png', 169)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (106, N'ВодТверьХозМашина', 12, N'145030, Сахалинская область, город Шатура, въезд Гоголя, 79', N'4174253174', N'522227145', N'Александра Дмитриевна Ждановаа', N'+7(922)849-91-96', N'tkrylov@baranova.net', N'\agents\agent_56.png', 8)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (107, N'Тех', 10, N'731935, Калининградская область, город Павловский Посад, наб. Гагарина, 59', N'9282924869', N'587356429', N'Аким Романович Логинова', N'+7(922)427-13-31', N'vasilisa99@belyev.ru', N'\agents\agent_61.png', 278)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (108, N'ТверьМетизУралСнос', 11, N'880551, Ленинградская область, город Красногорск, ул. Гоголя, 61', N'1076095397', N'947828491', N'Зоя Андреевна Соболева', N'(35222)57-92-75', N'rlazareva@novikov.ru', N'\agents\agent_109.png', 165)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (109, N'МясРеч', 12, N'903648, Калужская область, город Воскресенск, пр. Будапештсткая, 91', N'9254261217', N'656363498', N'Белоусоваа Ирина Максимовна', N'8-800-453-63-45', N'bkozlov@volkov.ru', N'\agents\agent_58.png', 355)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (110, N'Флот', 12, N'505562, Тюменская область, город Наро-Фоминск, пр. Косиора, 11', N'1112170258', N'382584255', N'Василий Андреевич Ковалёв', N'8-800-144-25-38', N'gerasim.makarov@kornilov.ru', N'\agents\agent_87.png', 473)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (111, N'CибПивОмскСнаб', 12, N'816260, Ивановская область, город Москва, ул. Гагарина, 31', N'5676173945', N'256512286', N'Людмила Александровна Сафонова', N'+7(922)153-95-22', N'evorontova@potapova.ru', N'\agents\agent_46.png', 477)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (112, N'ЦементАсбоцемент', 12, N'619540, Курская область, город Раменское, пл. Балканская, 12', N'4345774724', N'352469905', N'Воронова Мария Александровна', N'(495)184-87-92', N'polykov.veronika@artemeva.ru', N'', 426)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (113, N'ТелеГлавВекторСбыт', 12, N'062489, Челябинская область, город Пушкино, въезд Бухарестская, 07', N'9504787157', N'419758597', N'Екатерина Фёдоровна Ковалёва', N'(35222)56-15-37', N'nsitnikov@kovaleva.ru', N'\agents\agent_31.png', 185)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (114, N'Инфо', 10, N'100469, Рязанская область, город Ногинск, шоссе Гагарина, 57', N'6549468639', N'718386757', N'Баранова Виктор Романович', N'8-800-793-59-97', N'arsenii.mikailova@prokorov.com', N'\agents\agent_89.png', 304)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (115, N'ЭлектроРемОрионЛизинг', 12, N'594365, Ярославская область, город Павловский Посад, бульвар Космонавтов, 64', N'1340072597', N'500478249', N'Тарасова Дан Львович', N'(495)519-97-41', N'anfisa.fedotova@tvetkov.ru', N'\agents\agent_68.png', 198)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (116, N'Компания ТелекомХмельГаражПром', 11, N'126668, Ростовская область, город Зарайск, наб. Гагарина, 69', N'1614623826', N'824882264', N'Костина Татьяна Борисовна', N'(812)983-91-73', N'qkolesnikova@kalinina.ru', N'\agents\agent_71.png', 457)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (117, N'Компания Алмаз', 11, N'016215, Воронежская область, город Зарайск, ул. Косиора, 48', N'6698862694', N'662876919', N'Фоминаа Лариса Романовна', N'+7(922)688-74-22', N'akalinina@zaitev.ru', N'\agents\agent_121.png', 259)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (118, N'МясТрансМоторЛизинг', 10, N'765320, Ивановская область, город Шатура, спуск Гоголя, 88', N'6148685143', N'196332656', N'Тамара Дмитриевна Семёноваа', N'+7(922)676-34-94', N'vlad.sokolov@andreev.org', N'\agents\agent_62.png', 268)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (119, N'Монтаж', 13, N'066594, Магаданская область, город Шаховская, спуск Сталина, 59', N'6142194281', N'154457435', N'Блохина Сергей Максимович', N'(495)867-76-15', N'zakar.sazonova@gavrilov.ru', N'', 300)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (120, N'ВостокГлав', 11, N'217022, Ростовская область, город Озёры, ул. Домодедовская, 19', N'3580946305', N'405017349', N'Инга Фёдоровна Дмитриева', N'(812)949-29-26', N'gordei95@kirillov.ru', N'\agents\agent_63.png', 107)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (121, N'Газ', 13, N'252821, Тамбовская область, город Пушкино, ул. Чехова, 40', N'8876413796', N'955381891', N'Терентьев Илларион Максимович', N'(35222)22-45-58', N'ulyna.antonov@noskov.ru', N'\agents\agent_76.png', 170)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (122, N'ЭлектроТранс', 10, N'434616, Калининградская область, город Павловский Посад, пл. Ладыгина, 83', N'6019144874', N'450629885', N'Сава Александрович Титова', N'(812)342-24-31', N'boleslav.zukova@nikiforova.com', N'\agents\agent_91.png', 129)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (123, N'Электро', 10, N'966815, Новгородская область, город Одинцово, пр. Космонавтов, 19', N'7896029866', N'786038848', N'Шарапова Елена Дмитриевна', N'8-800-714-36-41', N'likacev.makar@antonov.ru', N'\agents\agent_93.png', 366)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (124, N'Гор', 9, N'376483, Калужская область, город Сергиев Посад, ул. Славы, 09', N'7088187045', N'440309946', N'Нонна Львовна Одинцоваа', N'(495)973-48-55', N'maiy12@koklov.net', N'\agents\agent_52.png', 175)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (125, N'Компания Гараж', 11, N'395101, Белгородская область, город Балашиха, бульвар 1905 года, 00', N'6190244524', N'399106161', N'Владлена Фёдоровна Ларионоваа', N'+7(922)848-38-54', N'asiryeva@andreeva.com', N'\agents\agent_66.png', 413)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (126, N'ОрионГлав', 14, N'729639, Магаданская область, город Талдом, въезд Будапештсткая, 98', N'9032455179', N'763045792', N'Тимофеева Григорий Андреевич', N'+7(922)684-13-74', N'sermakova@sarova.net', N'\agents\agent_106.png', 482)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (127, N'ГлавITФлотПроф', 13, N'447811, Мурманская область, город Егорьевск, ул. Ленина, 24', N'2561361494', N'525678825', N'Зыкова Стефан Максимович', N'(812)146-66-46', N'savva.rybov@kolobov.ru', N'\agents\agent_64.png', 62)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (128, N'ТверьМонтажОмск', 14, N'761751, Амурская область, город Балашиха, шоссе Гоголя, 02', N'2421347164', N'157370604', N'Матвей Романович Большакова', N'8-800-363-43-86', N'dteterina@selezneva.ru', N'\agents\agent_128.png', 272)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (129, N'РемСантехОмскБанк', 10, N'289468, Омская область, город Видное, пер. Балканская, 33', N'6823050572', N'176488617', N'Фокина Искра Максимовна', N'(812)182-44-77', N'anisimov.mark@vorobev.ru', N'\agents\agent_57.png', 442)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (130, N'ЭлектроМоторТрансСнос', 10, N'913777, Самарская область, город Красногорск, ул. Бухарестская, 49', N'6608362851', N'799760512', N'Людмила Евгеньевна Новиковаа', N'(35222)43-62-19', N'inessa.voronov@sidorova.ru', N'', 151)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (131, N'ТверьХозМорСбыт', 9, N'252101, Ростовская область, город Дорохово, пер. Ленина, 85', N'6681338084', N'460530907', N'Аким Львович Субботина', N'(495)416-75-67', N'marina58@koroleva.com', N'\agents\agent_117.png', 207)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (132, N'Компания ТомскХоз', 11, N'861543, Томская область, город Истра, бульвар Славы, 42', N'8430391035', N'961540858', N'Лазарева Аркадий Сергеевич', N'+7(922)849-13-37', N'nelli11@gureva.ru', N'\agents\agent_115.png', 464)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (133, N'Компания МясДизайнДизайн', 11, N'557264, Брянская область, город Серпухов, въезд Гоголя, 34', N'8004989990', N'908629456', N'Клементина Сергеевна Стрелкова', N'(812)535-17-25', N'gleb.gulyev@belyeva.com', N'\agents\agent_53.png', 491)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (134, N'Компания ЖелДорТверьМонтаж', 11, N'152424, Рязанская область, город Сергиев Посад, ул. 1905 года, 27', N'3325722996', N'665766347', N'Нестор Максимович Гуляев', N'(495)521-61-75', N'burova.zlata@zueva.ru', N'\agents\agent_85.png', 2)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (135, N'МетизТехАвтоПроф', 11, N'713016, Брянская область, город Подольск, пл. Домодедовская, 93', N'2988890076', N'215491048', N'Егор Фёдорович Третьякова', N'(495)581-42-46', N'anastasiy.gromov@samsonova.com', N'\agents\agent_33.png', 321)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (136, N'Гараж', 13, N'585758, Самарская область, город Красногорск, бульвар Балканская, 13', N'2638464552', N'746822723', N'Панфилов Константин Максимович', N'(35222)54-72-59', N'antonin51@korolev.com', N'\agents\agent_90.png', 107)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (137, N'ГазДизайнЖелДор', 9, N'695230, Курская область, город Красногорск, пр. Гоголя, 64', N'2396029740', N'458924890', N'Лев Иванович Третьяков', N'(495)797-97-33', N'elizaveta.komarov@rybakov.net', N'\agents\agent_49.png', 236)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (138, N'РемГаражЛифт', 10, N'048715, Ивановская область, город Люберцы, проезд Космонавтов, 89', N'1656477206', N'988968838', N'Филатов Владимир Максимович', N'8-800-772-27-53', N'novikova.gleb@sestakov.ru', N'\agents\agent_65.png', 374)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (139, N'СантехБашкир', 13, N'180288, Тверская область, город Одинцово, ул. Бухарестская, 37', N'4159215346', N'639267493', N'Виктор Иванович Молчанов', N'+7(922)155-87-39', N'nikodim81@kiseleva.com', N'\agents\agent_99.png', 369)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (140, N'ЮпитерЛенГараж-М', 9, N'339507, Московская область, город Видное, ул. Космонавтов, 11', N'2038393690', N'259672761', N'Васильева Валерия Борисовна', N'(495)327-58-25', N'larkipova@gorbunov.ru', N'\agents\agent_48.png', 470)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (141, N'ОрионСофтВодСнос', 12, N'577227, Калужская область, город Павловский Посад, наб. Чехова, 35', N'1522348613', N'977738715', N'Мухина Ян Фёдорович', N'(35222)59-75-11', N'isukanov@sobolev.com', N'\agents\agent_97.png', 361)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (142, N'КазХоз', 10, N'384162, Астраханская область, город Одинцово, бульвар Гагарина, 57', N'6503377671', N'232279972', N'Степанова Роман Иванович', N'+7(922)728-85-62', N'istrelkova@fomin.ru', N'', 213)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (143, N'БухВжух', 14, N'481744, Амурская область, город Щёлково, пл. Сталина, 48', N'2320989197', N'359282667', N'Тарасов Болеслав Александрович', N'(495)367-21-41', N'valentina.bolsakova@aksenova.ru', N'', 327)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (144, N'ХозЮпитер', 10, N'038182, Курганская область, город Москва, спуск Космонавтов, 16', N'6667635058', N'380592865', N'Максимоваа Вера Фёдоровна', N'+7(922)332-48-96', N'jisakova@nazarova.com', N'\agents\agent_114.png', 375)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (145, N'ВостокКазРыб', 13, N'059565, Оренбургская область, город Истра, шоссе Домодедовская, 27', N'7411284960', N'176779733', N'Самсонов Родион Романович', N'(495)987-31-63', N'flukin@misin.org', N'\agents\agent_112.png', 361)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (146, N'ЦементКрепТех-М', 12, N'263764, Свердловская область, город Раменское, пер. Косиора, 28', N'5359981084', N'680416300', N'Сергеев Владлен Александрович', N'(812)838-79-58', N'yna.evdokimov@gordeeva.ru', N'\agents\agent_82.png', 189)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (147, N'Строй', 13, N'763019, Омская область, город Шатура, пл. Сталина, 56', N'6678884759', N'279288618', N'Кудрявцев Адриан Андреевич', N'(812)447-45-59', N'soloveva.adam@andreev.ru', N'', 12)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (148, N'БашкирЮпитерТомск', 12, N'035268, Сахалинская область, город Волоколамск, проезд Ладыгина, 51', N'1606315697', N'217799345', N'Фадеева Раиса Александровна', N'(812)189-59-57', N'dyckov.veniamin@kotova.ru', N'\agents\agent_59.png', 139)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (149, N'Компания КазМеталКазань', 11, N'532703, Пензенская область, город Чехов, наб. Чехова, 81', N'4598939812', N'303467543', N'Валерий Владимирович Хохлова', N'(495)685-34-29', N'mmoiseev@teterin.ru', N'\agents\agent_130.png', 252)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (150, N'Компания Газ', 11, N'310403, Кировская область, город Солнечногорск, пл. Балканская, 76', N'2262431140', N'247369527', N'Давид Андреевич Фадеев', N'(35222)75-96-85', N'alina56@zdanov.com', N'\agents\agent_120.png', 445)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (151, N'Компания Монтаж', 11, N'036381, Брянская область, город Кашира, бульвар Гагарина, 76', N'6206428565', N'118570048', N'Силин Даниил Иванович', N'(35222)92-45-98', N'afanasev.anastasiy@muravev.ru', N'\agents\agent_75.png', 124)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (152, N'СервисХмельМонтаж', 12, N'928260, Нижегородская область, город Балашиха, пл. Косиора, 44', N'3459886235', N'356196105', N'Анжелика Дмитриевна Горбунова', N'+7(922)344-73-38', N'galina31@melnikov.ru', N'\agents\agent_92.png', 124)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (153, N'ВодГараж', 10, N'988899, Саратовская область, город Раменское, пр. Славы, 40', N'5575072431', N'684290320', N'Лаврентий Фёдорович Логинова', N'+7(922)363-86-67', N'pmaslov@fomiceva.com', N'\agents\agent_67.png', 250)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (154, N'CибГаз', 9, N'365674, Архангельская область, город Серебряные Пруды, пр. Ленина, 29', N'6483417250', N'455013058', N'Вячеслав Романович Третьякова', N'(495)945-37-25', N'inna.sarova@panfilov.ru', N'\agents\agent_103.png', 488)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (155, N'БашкирФлотМотор-H', 9, N'008081, Тюменская область, город Ногинск, въезд Гагарина, 94', N'1657476072', N'934931159', N'Марат Алексеевич Фролов', N'(495)793-84-82', N'morozova.nika@kazakova.ru', N'\agents\agent_36.png', 416)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (156, N'МеталСервисМор', 14, N'293265, Иркутская область, город Клин, пр. Славы, 12', N'6922817841', N'580142825', N'Коновалова Кирилл Львович', N'(35222)91-28-62', N'xdanilov@titov.ru', N'', 475)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (157, N'Рем', 12, N'707812, Иркутская область, город Шаховская, ул. Гагарина, 17', N'3203830728', N'456254820', N'Шароваа Елизавета Львовна', N'(495)987-88-53', N'zanna25@nikiforova.com', N'\agents\agent_79.png', 329)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (158, N'СантехСеверЛенМашина', 11, N'606990, Новосибирская область, город Павловский Посад, въезд Домодедовская, 38', N'3506691089', N'830713603', N'Павел Максимович Рожков', N'(812)918-88-43', N'pgorbacev@vasilev.net', N'\agents\agent_74.png', 201)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (159, N'Цемент', 11, N'084315, Амурская область, город Шаховская, наб. Чехова, 62', N'9662118663', N'650216214', N'Анфиса Фёдоровна Буроваа', N'8-800-517-78-47', N'panova.klementina@bobrov.ru', N'\agents\agent_54.png', 340)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (160, N'Вод', 12, N'964386, Оренбургская область, город Чехов, пл. Косиора, 80', N'1296063939', N'447430051', N'Зоя Романовна Селезнёва', N'(495)142-19-84', N'savva86@zaiteva.ru', N'\agents\agent_129.png', 359)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (161, N'Орион', 14, N'951035, Ивановская область, город Ступино, шоссе Космонавтов, 73', N'2670166502', N'716874456', N'Мартынов Михаил Борисович', N'8-800-621-61-93', N'aleksei63@kiselev.ru', N'\agents\agent_77.png', 166)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (162, N'СтройГорНефть', 10, N'444539, Ульяновская область, город Лотошино, спуск Будапештсткая, 95', N'5916775587', N'398299418', N'Тарасова Макар Максимович', N'(812)385-21-37', N'lysy.kolesnikova@molcanova.com', N'\agents\agent_37.png', 161)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (163, N'Компания Хмель', 11, N'889757, Новосибирская область, город Раменское, бульвар 1905 года, 93', N'9004087602', N'297273898', N'Владимир Борисович Суворова', N'(812)421-77-82', N'ermakov.mark@isakova.ru', N'', 2)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (164, N'Компания ВодАлмазIT', 11, N'302100, Нижегородская область, город Мытищи, пер. 1905 года, 63', N'2345297765', N'908449277', N'Гуляев Егор Евгеньевич', N'(35222)52-76-16', N'zakar37@nikolaeva.ru', N'\agents\agent_111.png', 31)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (165, N'БашкирРечТомск', 14, N'136886, Амурская область, город Видное, въезд Космонавтов, 39', N'7027724917', N'823811460', N'Назарова Вера Андреевна', N'8-800-254-71-85', N'aleksandra77@karpov.com', N'\agents\agent_100.png', 84)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (166, N'СофтРосБух', 12, N'747695, Амурская область, город Сергиев Посад, въезд Бухарестская, 46', N'8321561226', N'807803984', N'Белова Полина Владимировна', N'+7(922)445-69-17', N'ivanova.antonin@rodionov.ru', N'\agents\agent_124.png', 69)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (167, N'ТелекомЮпитер', 9, N'959793, Курская область, город Егорьевск, бульвар Ленина, 72', N'9383182378', N'944520594', N'Калинина Татьяна Ивановна', N'(812)895-67-23', N'kulikov.adrian@zuravlev.org', N'\agents\agent_81.png', 302)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (168, N'УралСтройХмель', 12, N'462632, Костромская область, город Шаховская, шоссе Сталина, 92', N'8773558039', N'402502867', N'Август Борисович Красильникова', N'(35222)39-23-65', N'aleksandr95@kolobova.ru', N'\agents\agent_113.png', 372)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (169, N'АсбоцементТехАвто', 13, N'304975, Пензенская область, город Солнечногорск, шоссе Балканская, 76', N'7626076463', N'579234124', N'Сидорова Любовь Ивановна', N'+7(922)977-68-84', N'matveev.yliy@kiseleva.ru', N'\agents\agent_110.png', 247)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (170, N'Компания ФинансСервис', 11, N'841700, Брянская область, город Серпухов, спуск Домодедовская, 35', N'7491491391', N'673621812', N'Клавдия Сергеевна Виноградова', N'(812)878-42-71', N'robert.serbakov@safonova.ru', N'\agents\agent_38.png', 395)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (171, N'Софт', 10, N'453714, Смоленская область, город Одинцово, спуск Косиора, 84', N'3889910123', N'952047511', N'Петухова Прохор Фёдорович', N'(35222)12-82-65', N'jterentev@ersov.com', N'\agents\agent_122.png', 292)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (172, N'ТелекомГор', 10, N'210024, Белгородская область, город Сергиев Посад, наб. Ломоносова, 43', N'3748947224', N'766431901', N'Ксения Андреевна Михайлова', N'(35222)78-93-21', N'gorskov.larisa@kalinin.com', N'\agents\agent_98.png', 255)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (173, N'РемСтрем', 14, N'373761, Псковская область, город Наро-Фоминск, наб. Гагарина, 03', N'9006569852', N'152177100', N'Альбина Александровна Романова', N'(35222)55-28-24', N'rafail96@sukin.ru', N'\agents\agent_116.png', 88)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (174, N'Лифт', 11, N'479565, Курганская область, город Клин, пл. Ленина, 54', N'6169713039', N'848972934', N'Вера Евгеньевна Денисоваа', N'(812)484-92-38', N'zinaida01@bespalova.ru', N'\agents\agent_101.png', 92)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (175, N'Компания МоторТелекомЦемент-М', 11, N'021293, Амурская область, город Наро-Фоминск, шоссе Славы, 40', N'7326832482', N'440199498', N'Иван Евгеньевич Белоусова', N'(812)857-95-57', N'larisa44@silin.org', N'\agents\agent_118.png', 237)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (176, N'ЮпитерТяжОрионЭкспедиция', 10, N'960726, Томская область, город Орехово-Зуево, въезд 1905 года, 51', N'6843174002', N'935556458', N'Валерий Евгеньевич Виноградов', N'(35222)95-63-65', N'gblokin@orlov.net', N'\agents\agent_44.png', 446)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (177, N'Транс', 13, N'508299, Кемеровская область, город Кашира, пер. Гагарина, 42', N'9604275878', N'951258069', N'Евсеева Болеслав Сергеевич', N'8-800-954-23-89', N'artem.fadeev@polykov.com', N'\agents\agent_127.png', 38)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (178, N'РемВод', 10, N'449723, Смоленская область, город Наро-Фоминск, пер. Ломоносова, 94', N'3986603105', N'811373078', N'Медведеваа Ярослава Фёдоровна', N'+7(922)353-31-72', N'komarov.elizaveta@agafonova.ru', N'\agents\agent_126.png', 1)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (179, N'АсбоцементЛифтРеч-H', 14, N'599158, Ростовская область, город Озёры, ул. Космонавтов, 05', N'6567878928', N'560960507', N'Кондратьева Таисия Андреевна', N'(495)245-57-16', N'vladlena58@seliverstova.ru', N'\agents\agent_105.png', 407)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (180, N'РосАвтоМонтаж', 11, N'331914, Курская область, город Ногинск, спуск Ладыгина, 66', N'4735043946', N'263682488', N'Диана Алексеевна Исаковаа', N'(495)445-97-76', N'lapin.inessa@isaeva.com', N'\agents\agent_55.png', 10)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (181, N'Компания СервисТелеМотор', 11, N'625988, Вологодская область, город Озёры, пр. Гоголя, 18', N'3248454160', N'138472695', N'Фролова Эдуард Борисович', N'+7(922)461-25-29', N'veronika.egorov@bespalova.com', N'\agents\agent_102.png', 81)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (182, N'ФинансТелеТверь', 14, N'687171, Томская область, город Лотошино, пл. Славы, 59', N'2646091050', N'971874277', N'Зайцеваа Дарья Сергеевна', N'(812)115-56-93', N'medvedev.klim@afanasev.com', N'\agents\agent_45.png', 100)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (183, N'ВодГор', 10, N'265653, Калужская область, город Ступино, шоссе Гоголя, 89', N'4463113470', N'899603778', N'Фаина Фёдоровна Филиппова', N'(35222)73-72-16', N'tvetkova.robert@sorokin.com', N'\agents\agent_125.png', 72)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (184, N'ТяжРадиоУралПроф', 10, N'521087, Орловская область, город Егорьевск, шоссе Ладыгина, 14', N'5688533246', N'401535045', N'София Алексеевна Мухина', N'+7(922)885-66-15', N'liliy62@grisina.ru', N'\agents\agent_88.png', 278)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (185, N'ГаражЛофт', 10, N'294596, Мурманская область, город Шаховская, пр. Домодедовская, 88', N'2816939574', N'754741128', N'Клавдия Фёдоровна Кудряшова', N'(495)427-55-66', N'lydmila.belyeva@karpov.ru', N'\agents\agent_108.png', 335)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (186, N'ITСтройАлмаз', 10, N'361730, Костромская область, город Волоколамск, шоссе Славы, 36', N'7689065648', N'456612755', N'Алексеева Валериан Андреевич', N'8-800-185-78-91', N'fokin.eduard@samoilov.com', N'\agents\agent_83.png', 159)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (187, N'Асбоцемент', 11, N'030119, Курганская область, город Дмитров, пер. Славы, 47', N'1261407459', N'745921890', N'Никитинаа Антонина Андреевна', N'8-800-211-16-23', N'antonin19@panfilov.ru', N'\agents\agent_34.png', 273)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (188, N'ТекстильУралАвтоОпт', 12, N'028936, Магаданская область, город Видное, ул. Гагарина, 54', N'3930950057', N'678529397', N'Алина Сергеевна Дьячковаа', N'(35222)98-76-54', N'hkononova@pavlova.ru', N'', 176)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (189, N'Компания КрепЦемент', 11, N'423477, Мурманская область, город Кашира, бульвар Домодедовская, 61', N'3025099903', N'606083992', N'Екатерина Львовна Суворова', N'(812)963-77-87', N'rusakov.efim@nikiforov.ru', N'\agents\agent_50.png', 426)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (190, N'КазаньТекстиль', 10, N'231891, Челябинская область, город Шатура, бульвар Ладыгина, 40', N'4584384019', N'149680499', N'Александров Бронислав Максимович', N'(35222)86-74-21', N'osimonova@andreeva.com', N'\agents\agent_47.png', 156)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (191, N'КазЮпитерТомск', 10, N'393450, Тульская область, город Кашира, пр. 1905 года, 47', N'9201745524', N'510248846', N'Рафаил Андреевич Копылов', N'+7(922)772-33-58', N'tgavrilov@frolov.ru', N'\agents\agent_60.png', 244)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (192, N'Бух', 13, N'409600, Новгородская область, город Ногинск, пл. Гагарина, 68', N'1953785418', N'122905583', N'Татьяна Сергеевна Королёваа', N'+7(922)375-49-21', N'belova.vikentii@konstantinova.net', N'\agents\agent_78.png', 82)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (193, N'Радио', 14, N'798718, Ленинградская область, город Пушкино, бульвар Балканская, 37', N'9077613654', N'657690787', N'Эмма Андреевна Колесникова', N'8-800-897-32-78', N'rtretykova@kozlov.ru', N'\agents\agent_43.png', 221)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (194, N'Креп', 12, N'336489, Калининградская область, город Можайск, наб. Славы, 35', N'4880732317', N'258673591', N'Назар Алексеевич Григорьева', N'(495)217-46-29', N'savina.dominika@belousova.com', N'\agents\agent_39.png', 371)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (195, N'Мобайл', 10, N'606703, Амурская область, город Чехов, пл. Будапештсткая, 91', N'7803888520', N'885703265', N'Екатерина Сергеевна Бобылёва', N'8-800-618-73-37', N'dsiryev@dementeva.com', N'\agents\agent_107.png', 464)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (196, N'CибБашкирТекстиль', 9, N'429540, Мурманская область, город Воскресенск, пл. Славы, 36', N'7392007090', N'576103661', N'Григорий Владимирович Елисеева', N'(495)285-78-38', N'vzimina@zdanova.com', N'\agents\agent_69.png', 218)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (197, N'МеталТекстильЛифтТрест', 9, N'786287, Свердловская область, город Волоколамск, пер. Будапештсткая, 72', N'2971553297', N'821859486', N'Одинцов Назар Борисович', N'(812)753-96-76', N'muravev.trofim@sazonov.net', N'\agents\agent_86.png', 425)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (198, N'ОрионТомскТех', 14, N'738763, Курская область, город Егорьевск, спуск Чехова, 66', N'9351493429', N'583041591', N'Георгий Александрович Лукин', N'+7(922)542-89-15', N'faina.tikonova@veselov.com', N'\agents\agent_119.png', 73)
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (199, N'ЖелДорДизайнМетизТраст', 14, N'170549, Сахалинская область, город Видное, проезд Космонавтов, 89', N'7669116841', N'906390137', N'Игорь Львович Агафонова', N'(812)123-63-47', N'lnikitina@kulikova.com', N'', 290)
GO
INSERT [dbo].[Agent] ([ID], [Title], [AgentTypeID], [Address], [INN], [KPP], [DirectorName], [Phone], [Email], [Logo], [Priority]) VALUES (200, N'БухМясМоторПром', 10, N'677498, Костромская область, город Зарайск, спуск Славы, 59', N'7377410338', N'592041317', N'Нина Дмитриевна Черноваа', N'(35222)83-23-59', N'varvara49@savin.ru', N'\agents\agent_95.png', 158)
SET IDENTITY_INSERT [dbo].[Agent] OFF
GO
SET IDENTITY_INSERT [dbo].[AgentType] ON 

INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (9, N'МКК', NULL)
INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (10, N'ОАО', NULL)
INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (11, N'ООО', NULL)
INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (12, N'ЗАО', NULL)
INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (13, N'МФО', NULL)
INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (14, N'ПАО', NULL)
SET IDENTITY_INSERT [dbo].[AgentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (101, N'Попрыгунчик детский красный 1289', 1, N'82925345', N'', N'', 4, 10, CAST(1919.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (102, N'Попрыгунчик детский желтый 6678', 2, N'80007300', N'', N'', 2, 1, CAST(1768.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (103, N'Попрыгунчик детский 6888', 1, N'13875235', N'', N'', 4, 12, CAST(1972.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (104, N'Попрыгунчик для мальчиков 3929', 1, N'2158097', N'', N'', 1, 9, CAST(255.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (105, N'Попрыгунчик детский 2071', 1, N'3157982', N'', N'', 3, 6, CAST(275.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (106, N'Попрыгунчик для собачек 5096', 3, N'67975083', N'', N'', 4, 9, CAST(1465.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (107, N'Попрыгунчик для мальчиков 5389', 3, N'70873532', N'', N'', 3, 2, CAST(1739.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (108, N'Попрыгунчик детский розовый 5376', 1, N'74291677', N'', N'', 4, 6, CAST(1889.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (109, N'Попрыгунчик для мальчиков 3307', 4, N'30269726', N'', N'', 4, 10, CAST(1533.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (110, N'Попрыгунчик для кошечек 2604', 1, N'11890154', N'', N'', 2, 7, CAST(842.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (111, N'Шар 6366', 3, N'25514523', N'', N'', 4, 4, CAST(1932.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (112, N'Попрыгунчик детский желтый 6051', 4, N'88211092', N'', N'', 4, 12, CAST(727.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (113, N'Попрыгунчик для девочек 2311', 3, N'25262035', N'', N'', 4, 1, CAST(1308.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (114, N'Попрыгунчик для собачек 4387', 5, N'89607276', N'', N'', 3, 8, CAST(912.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (115, N'Попрыгун 3016', 4, N'74919447', N'', N'', 1, 12, CAST(615.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (116, N'Попрыгунчик детский красный 3240', 2, N'88098604', N'', N'', 3, 8, CAST(882.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (117, N'Попрыгунчик детский розовый 1657', 1, N'86558177', N'', N'', 4, 3, CAST(662.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (118, N'Попрыгунчик детский красный 6591', 3, N'79704172', N'', N'', 5, 7, CAST(592.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (119, N'Попрыгунчик для девочек 1895', 4, N'54983244', N'', N'', 4, 4, CAST(1586.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (120, N'Попрыгунчик для кошечек 3741', 3, N'43987093', N'', N'', 5, 4, CAST(1668.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (121, N'Попрыгунчик детский красный 3839', 2, N'26655484', N'', N'', 5, 2, CAST(1921.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (122, N'Попрыгунчик детский красный 4969', 1, N'10614909', N'', N'', 5, 12, CAST(913.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (123, N'Попрыгунчик для собачек 5754', 4, N'79018408', N'', N'', 2, 8, CAST(633.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (124, N'Попрыгунчик для собачек 4485', 3, N'33440129', N'', N'', 2, 12, CAST(1995.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (125, N'Попрыгунчик для девочек 1656', 4, N'22217580', N'', N'', 5, 6, CAST(1494.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (126, N'Попрыгунчик для мальчиков 4791', 2, N'45540528', N'', N'', 3, 11, CAST(1260.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (127, N'Попрыгунчик для девочек 6849', 3, N'10084400', N'', N'', 1, 11, CAST(933.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (128, N'Попрыгунчик детский желтый 1371', 4, N'85514178', N'', N'', 3, 7, CAST(252.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (129, N'Попрыгунчик для девочек 3389', 3, N'26434211', N'', N'', 3, 10, CAST(597.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (130, N'Попрыгунчик детский розовый 5197', 4, N'89612317', N'', N'', 1, 3, CAST(1948.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (131, N'Попрыгунчик для собачек 3500', 2, N'79994924', N'', N'', 2, 9, CAST(1142.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (132, N'Попрыгун 6882', 5, N'12732041', N'', N'', 1, 6, CAST(809.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (133, N'Попрыгунчик для кошечек 4740', 5, N'80698285', N'', N'', 1, 6, CAST(1973.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (134, N'Шар 2243', 3, N'42536654', N'', N'', 3, 12, CAST(1247.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (135, N'Попрыгунчик детский красный 1740', 3, N'43330133', N'', N'', 5, 3, CAST(1749.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (136, N'Попрыгунчик детский красный 5400', 3, N'68237918', N'', N'', 4, 5, CAST(1570.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (137, N'Попрыгунчик для девочек 1560', 1, N'47378395', N'', N'', 5, 6, CAST(235.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (138, N'Шар 4124', 4, N'39025230', N'', N'', 5, 8, CAST(1160.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (139, N'Попрыгунчик детский желтый 2582', 3, N'32125209', N'', N'', 3, 11, CAST(1730.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (140, N'Попрыгунчик детский 6029', 2, N'69184347', N'', N'', 3, 7, CAST(419.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (141, N'Попрыгун 2299', 3, N'34750945', N'', N'', 2, 2, CAST(1688.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (142, N'Попрыгунчик детский красный 1972', 2, N'59509797', N'', N'', 1, 7, CAST(794.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (143, N'Попрыгунчик детский 5117', 2, N'80875656', N'', N'', 3, 12, CAST(338.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (144, N'Попрыгунчик детский розовый 5501', 3, N'25409940', N'', N'', 2, 7, CAST(652.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (145, N'Попрыгунчик детский розовый 6346', 4, N'30282346', N'', N'', 1, 10, CAST(1024.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (146, N'Попрыгун 6412', 2, N'28152672', N'', N'', 2, 9, CAST(523.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (147, N'Попрыгунчик детский 1916', 3, N'73345857', N'', N'', 5, 8, CAST(832.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (148, N'Попрыгунчик для собачек 4529', 2, N'81713527', N'', N'', 3, 6, CAST(1923.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (149, N'Попрыгунчик для собачек 4381', 4, N'27301447', N'', N'', 2, 5, CAST(1234.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (150, N'Попрыгунчик детский розовый 2694', 2, N'13340356', N'', N'', 4, 6, CAST(1691.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSale] ON 

INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (1, 190, 110, CAST(N'2010-06-21' AS Date), 7)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (2, 170, 123, CAST(N'2016-02-17' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (3, 138, 124, CAST(N'2012-11-07' AS Date), 9)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (4, 193, 146, CAST(N'2019-06-01' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (5, 161, 121, CAST(N'2014-06-11' AS Date), 11)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (6, 129, 101, CAST(N'2012-08-12' AS Date), 12)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (7, 121, 135, CAST(N'2012-09-26' AS Date), 16)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (8, 138, 117, CAST(N'2018-02-28' AS Date), 3)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (9, 196, 102, CAST(N'2018-09-15' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (10, 133, 112, CAST(N'2011-08-27' AS Date), 10)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (11, 125, 142, CAST(N'2011-08-19' AS Date), 2)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (12, 138, 145, CAST(N'2015-02-02' AS Date), 20)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (13, 194, 148, CAST(N'2011-07-01' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (14, 140, 147, CAST(N'2013-12-23' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (15, 107, 110, CAST(N'2017-11-11' AS Date), 10)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (16, 135, 124, CAST(N'2014-04-15' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (17, 137, 124, CAST(N'2018-06-22' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (18, 157, 139, CAST(N'2013-07-11' AS Date), 12)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (19, 118, 117, CAST(N'2016-08-13' AS Date), 7)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (20, 121, 147, CAST(N'2014-07-28' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (21, 162, 114, CAST(N'2010-04-15' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (22, 142, 114, CAST(N'2017-10-12' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (23, 188, 138, CAST(N'2012-09-02' AS Date), 13)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (24, 191, 117, CAST(N'2015-08-08' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (25, 105, 149, CAST(N'2012-05-25' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (26, 130, 136, CAST(N'2014-03-06' AS Date), 12)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (27, 129, 116, CAST(N'2016-05-18' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (28, 189, 150, CAST(N'2014-07-11' AS Date), 10)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (29, 163, 145, CAST(N'2016-08-18' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (30, 105, 104, CAST(N'2019-07-25' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (31, 153, 140, CAST(N'2019-03-17' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (32, 147, 120, CAST(N'2014-08-06' AS Date), 9)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (33, 105, 127, CAST(N'2011-09-12' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (34, 119, 114, CAST(N'2011-08-28' AS Date), 11)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (35, 163, 141, CAST(N'2015-12-25' AS Date), 4)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (36, 118, 101, CAST(N'2016-02-25' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (37, 111, 108, CAST(N'2017-06-07' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (38, 196, 138, CAST(N'2016-11-27' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (39, 107, 118, CAST(N'2012-03-12' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (40, 159, 107, CAST(N'2018-06-13' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (41, 130, 131, CAST(N'2017-11-05' AS Date), 2)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (42, 116, 138, CAST(N'2016-02-26' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (43, 190, 129, CAST(N'2010-06-20' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (44, 107, 128, CAST(N'2015-06-23' AS Date), 12)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (45, 133, 114, CAST(N'2013-01-24' AS Date), 3)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (46, 109, 113, CAST(N'2015-02-28' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (47, 118, 142, CAST(N'2019-07-05' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (48, 192, 140, CAST(N'2014-03-06' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (49, 194, 131, CAST(N'2017-05-01' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (50, 151, 126, CAST(N'2015-01-17' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (51, 182, 115, CAST(N'2018-04-14' AS Date), 7)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (52, 194, 118, CAST(N'2014-12-12' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (53, 140, 117, CAST(N'2015-03-28' AS Date), 16)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (54, 113, 141, CAST(N'2017-11-24' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (55, 111, 146, CAST(N'2019-06-27' AS Date), 10)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (56, 187, 129, CAST(N'2014-06-04' AS Date), 2)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (57, 157, 143, CAST(N'2019-03-18' AS Date), 11)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (58, 113, 142, CAST(N'2015-09-12' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (59, 159, 147, CAST(N'2012-01-02' AS Date), 13)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (60, 109, 124, CAST(N'2011-02-01' AS Date), 12)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (61, 124, 133, CAST(N'2016-10-07' AS Date), 17)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (62, 191, 104, CAST(N'2017-06-07' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (63, 147, 105, CAST(N'2016-02-26' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (64, 147, 102, CAST(N'2013-11-09' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (65, 109, 140, CAST(N'2015-07-01' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (66, 158, 132, CAST(N'2015-08-27' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (67, 159, 123, CAST(N'2013-08-27' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (68, 161, 119, CAST(N'2013-05-10' AS Date), 2)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (69, 153, 124, CAST(N'2013-12-01' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (70, 170, 115, CAST(N'2011-06-11' AS Date), 16)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (71, 125, 102, CAST(N'2019-05-24' AS Date), 16)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (72, 147, 146, CAST(N'2017-04-02' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (73, 129, 103, CAST(N'2013-04-08' AS Date), 10)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (74, 151, 150, CAST(N'2019-08-16' AS Date), 20)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (75, 180, 146, CAST(N'2011-12-26' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (76, 125, 121, CAST(N'2016-07-19' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (77, 119, 144, CAST(N'2014-03-17' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (78, 112, 116, CAST(N'2011-06-14' AS Date), 13)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (79, 176, 129, CAST(N'2017-05-20' AS Date), 13)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (80, 153, 101, CAST(N'2010-04-13' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (81, 112, 101, CAST(N'2019-10-15' AS Date), 9)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (82, 148, 143, CAST(N'2019-10-08' AS Date), 20)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (83, 133, 121, CAST(N'2018-04-08' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (84, 130, 134, CAST(N'2012-06-14' AS Date), 2)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (85, 162, 128, CAST(N'2012-04-23' AS Date), 3)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (86, 161, 127, CAST(N'2015-08-17' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (87, 151, 129, CAST(N'2016-09-14' AS Date), 7)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (88, 106, 104, CAST(N'2012-03-23' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (89, 155, 138, CAST(N'2010-11-17' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (90, 137, 140, CAST(N'2016-11-17' AS Date), 13)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (91, 124, 144, CAST(N'2010-05-03' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (92, 115, 112, CAST(N'2019-03-06' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (93, 116, 124, CAST(N'2017-10-14' AS Date), 20)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (94, 180, 150, CAST(N'2017-02-08' AS Date), 3)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (95, 125, 113, CAST(N'2017-08-02' AS Date), 3)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (96, 182, 108, CAST(N'2017-03-09' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (97, 133, 139, CAST(N'2017-11-13' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (98, 130, 139, CAST(N'2015-12-02' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (99, 127, 109, CAST(N'2011-06-14' AS Date), 19)
GO
INSERT [dbo].[ProductSale] ([ID], [AgentID], [ProductID], [SaleDate], [ProductCount]) VALUES (100, 163, 101, CAST(N'2014-08-14' AS Date), 16)
SET IDENTITY_INSERT [dbo].[ProductSale] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (1, N' Для маленьких деток', NULL)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (2, N' Для больших деток', NULL)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (3, N' Взрослый', NULL)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (4, N' Цифровой', NULL)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (5, N' Упругий', NULL)
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_AgentType] FOREIGN KEY([AgentTypeID])
REFERENCES [dbo].[AgentType] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_AgentType]
GO
ALTER TABLE [dbo].[AgentPriorityHistory]  WITH CHECK ADD  CONSTRAINT [FK_AgentPriorityHistory_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[AgentPriorityHistory] CHECK CONSTRAINT [FK_AgentPriorityHistory_Agent]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([MaterialTypeID])
REFERENCES [dbo].[MaterialType] ([ID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
ALTER TABLE [dbo].[MaterialCountHistory]  WITH CHECK ADD  CONSTRAINT [FK_MaterialCountHistory_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[MaterialCountHistory] CHECK CONSTRAINT [FK_MaterialCountHistory_Material]
GO
ALTER TABLE [dbo].[MaterialSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSupplier_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[MaterialSupplier] CHECK CONSTRAINT [FK_MaterialSupplier_Material]
GO
ALTER TABLE [dbo].[MaterialSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSupplier_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[MaterialSupplier] CHECK CONSTRAINT [FK_MaterialSupplier_Supplier]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[ProductCostHistory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCostHistory_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductCostHistory] CHECK CONSTRAINT [FK_ProductCostHistory_Product]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Material]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Agent]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Agent]
GO
USE [master]
GO
ALTER DATABASE [agents] SET  READ_WRITE 
GO
