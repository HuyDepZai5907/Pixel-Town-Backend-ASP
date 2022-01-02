USE [PixelTown]
GO
/****** Object:  Table [dbo].[Access]    Script Date: 02/01/2022 8:47:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Access](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](200) NULL,
	[Time] [datetime] NULL,
 CONSTRAINT [PK_Access] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 02/01/2022 8:47:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [varchar](200) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](max) NULL,
	[Birthday] [date] NULL,
	[Address] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[Avatar] [nvarchar](max) NULL,
	[SignalrID] [varchar](200) NULL,
 CONSTRAINT [PK_Account_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Character]    Script Date: 02/01/2022 8:47:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Character](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CharacterName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Character] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileMessage]    Script Date: 02/01/2022 8:47:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileMessage](
	[ID] [varchar](200) NULL,
	[UserID] [varchar](200) NULL,
	[RoomID] [varchar](200) NULL,
	[UrlFile] [nvarchar](max) NULL,
	[Time] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoogleAuth]    Script Date: 02/01/2022 8:47:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoogleAuth](
	[ID] [int] NOT NULL,
	[UserID] [varchar](200) NOT NULL,
	[Token] [varchar](50) NULL,
 CONSTRAINT [PK_GoogleAuth] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Map]    Script Date: 02/01/2022 8:47:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Map](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MapName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Map] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 02/01/2022 8:47:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](200) NULL,
	[RoomID] [varchar](200) NULL,
	[Message] [nvarchar](max) NULL,
	[Time] [datetime] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 02/01/2022 8:47:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[ID] [varchar](200) NOT NULL,
	[UserID] [varchar](200) NOT NULL,
	[MapID] [int] NULL,
	[RoomName] [nvarchar](1000) NULL,
	[RoomPass] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccessRoom]    Script Date: 02/01/2022 8:47:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccessRoom](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](200) NULL,
	[RoomID] [varchar](200) NULL,
	[Time] [datetime] NULL,
 CONSTRAINT [PK_UserAccessRoom] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserJoinRoom]    Script Date: 02/01/2022 8:47:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserJoinRoom](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Time] [datetime] NULL,
	[RoomID] [varchar](200) NULL,
	[UserID] [varchar](200) NULL,
	[CharacterID] [int] NULL,
	[State] [varchar](40) NULL,
 CONSTRAINT [PK_UserJoinRoom] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([ID], [Name], [Email], [Password], [Birthday], [Address], [Type], [Active], [Avatar], [SignalrID]) VALUES (N'9ccf171755b84addb7835408e6da0768', N'Văn', N'test3@gmail.com', N'$2a$11$BvbWWIA2qgMaP9NCY30CTeaVQ7aCY8VFmFeo27uCR1NbRDXbkMefS', CAST(N'1990-12-19' AS Date), N'Quận 8', N'User', 1, N'/public/users/u16.jfif', NULL)
INSERT [dbo].[Account] ([ID], [Name], [Email], [Password], [Birthday], [Address], [Type], [Active], [Avatar], [SignalrID]) VALUES (N'9d1bf3ef1bbe4972af2d8ecf70b8438b', N'Nguyễn Văn Dũng', N'test@gmail.com', N'$2a$11$drHeyUhv082e2QM8.ecf6u3v1msU.8fyxDcgMYm/gp8CyHviJpNQG', CAST(N'1990-12-19' AS Date), N'Quận 7', N'User', 1, N'/public/users/u3.png', NULL)
INSERT [dbo].[Account] ([ID], [Name], [Email], [Password], [Birthday], [Address], [Type], [Active], [Avatar], [SignalrID]) VALUES (N'b31f1295545948b486d4bda4bf295711', N'Hải Đăng', N'test2@gmail.com', N'$2a$11$8CC48cLbIKHQPVKHWjo0xOINf2prHQlbhUXea0Pylosdm03uhfvum', CAST(N'2000-04-22' AS Date), N'Quận 7', N'User', 1, N'/public/users/u35.jfif', NULL)
GO
SET IDENTITY_INSERT [dbo].[Character] ON 

INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (1, N'misa')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (2, N'john')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (3, N'lili')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (4, N'lisa')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (5, N'nat')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (6, N'violet')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (7, N'aither')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (8, N'captain')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (9, N'captainAmerica')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (10, N'chenny')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (11, N'daniel')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (12, N'davis')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (13, N'kirin')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (14, N'linlin')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (15, N'logan')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (16, N'lora')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (17, N'phoenix')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (18, N'silver')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (19, N'storm')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (20, N'timmy')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (21, N'vision')
INSERT [dbo].[Character] ([ID], [CharacterName]) VALUES (22, N'wendy')
SET IDENTITY_INSERT [dbo].[Character] OFF
GO
SET IDENTITY_INSERT [dbo].[Map] ON 

INSERT [dbo].[Map] ([ID], [MapName]) VALUES (1, N'Map 1')
INSERT [dbo].[Map] ([ID], [MapName]) VALUES (2, N'Map 2')
INSERT [dbo].[Map] ([ID], [MapName]) VALUES (3, N'Map 3')
INSERT [dbo].[Map] ([ID], [MapName]) VALUES (4, N'Map 4')
SET IDENTITY_INSERT [dbo].[Map] OFF
GO
INSERT [dbo].[Room] ([ID], [UserID], [MapID], [RoomName], [RoomPass], [Quantity], [Description]) VALUES (N'36ad8b10343f4d3c96be8c764fe99f26', N'9d1bf3ef1bbe4972af2d8ecf70b8438b', 1, N'Room test', N'123456', 100, N'quá đẹp')
INSERT [dbo].[Room] ([ID], [UserID], [MapID], [RoomName], [RoomPass], [Quantity], [Description]) VALUES (N'794c5005f1c54855b520a3939b74b31b', N'9d1bf3ef1bbe4972af2d8ecf70b8438b', 1, N'Room của Đăng', N'123', 10, N'Học tập')
GO
SET IDENTITY_INSERT [dbo].[UserJoinRoom] ON 

INSERT [dbo].[UserJoinRoom] ([ID], [Time], [RoomID], [UserID], [CharacterID], [State]) VALUES (16, CAST(N'2021-12-29T01:58:44.057' AS DateTime), N'36ad8b10343f4d3c96be8c764fe99f26', N'9d1bf3ef1bbe4972af2d8ecf70b8438b', 19, N'Online')
INSERT [dbo].[UserJoinRoom] ([ID], [Time], [RoomID], [UserID], [CharacterID], [State]) VALUES (17, CAST(N'2022-01-02T05:38:25.237' AS DateTime), N'36ad8b10343f4d3c96be8c764fe99f26', N'9ccf171755b84addb7835408e6da0768', 16, N'Offline')
SET IDENTITY_INSERT [dbo].[UserJoinRoom] OFF
GO
ALTER TABLE [dbo].[Access]  WITH CHECK ADD  CONSTRAINT [FK_Access_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Access] CHECK CONSTRAINT [FK_Access_Account]
GO
ALTER TABLE [dbo].[FileMessage]  WITH CHECK ADD  CONSTRAINT [FK_FileMessage_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[FileMessage] CHECK CONSTRAINT [FK_FileMessage_Account]
GO
ALTER TABLE [dbo].[FileMessage]  WITH CHECK ADD  CONSTRAINT [FK_FileMessage_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([ID])
GO
ALTER TABLE [dbo].[FileMessage] CHECK CONSTRAINT [FK_FileMessage_Room]
GO
ALTER TABLE [dbo].[GoogleAuth]  WITH CHECK ADD  CONSTRAINT [FK_GoogleAuth_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GoogleAuth] CHECK CONSTRAINT [FK_GoogleAuth_Account]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Account]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Room]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Account1] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Account1]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Map] FOREIGN KEY([MapID])
REFERENCES [dbo].[Map] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Map]
GO
ALTER TABLE [dbo].[UserAccessRoom]  WITH CHECK ADD  CONSTRAINT [FK_UserAccessRoom_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAccessRoom] CHECK CONSTRAINT [FK_UserAccessRoom_Account]
GO
ALTER TABLE [dbo].[UserAccessRoom]  WITH CHECK ADD  CONSTRAINT [FK_UserAccessRoom_Room1] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAccessRoom] CHECK CONSTRAINT [FK_UserAccessRoom_Room1]
GO
ALTER TABLE [dbo].[UserJoinRoom]  WITH CHECK ADD  CONSTRAINT [FK_UserJoinRoom_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserJoinRoom] CHECK CONSTRAINT [FK_UserJoinRoom_Account]
GO
ALTER TABLE [dbo].[UserJoinRoom]  WITH CHECK ADD  CONSTRAINT [FK_UserJoinRoom_Character1] FOREIGN KEY([CharacterID])
REFERENCES [dbo].[Character] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserJoinRoom] CHECK CONSTRAINT [FK_UserJoinRoom_Character1]
GO
ALTER TABLE [dbo].[UserJoinRoom]  WITH CHECK ADD  CONSTRAINT [FK_UserJoinRoom_Room1] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserJoinRoom] CHECK CONSTRAINT [FK_UserJoinRoom_Room1]
GO
