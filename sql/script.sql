USE [CentManagerment]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 03/12/2018 9:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](50) NULL,
	[ClassAmountStudent] [int] NULL,
	[ClassCourseId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 03/12/2018 9:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NULL,
	[CourseTime] [nvarchar](100) NULL,
	[CousePrice] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Expenditure]    Script Date: 03/12/2018 9:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expenditure](
	[ExpenditureId] [int] IDENTITY(1,1) NOT NULL,
	[ExpenditureName] [ntext] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Expenditure] PRIMARY KEY CLUSTERED 
(
	[ExpenditureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 03/12/2018 9:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[NewsContent] [ntext] NULL,
	[NewsShortContent] [ntext] NULL,
	[NewsPostDate] [date] NULL,
	[NewsTitle] [nvarchar](100) NULL,
	[NewsUserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Revenue]    Script Date: 03/12/2018 9:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revenue](
	[RevenueId] [int] IDENTITY(1,1) NOT NULL,
	[RevenueStartPaymentDay] [date] NULL,
	[RevenuePrice] [int] NULL,
	[RevenueStudentId] [int] NULL,
	[ExpenditureId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RevenueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 03/12/2018 9:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleManager]    Script Date: 03/12/2018 9:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleManager](
	[RoleManagerId] [int] IDENTITY(1,1) NOT NULL,
	[RoleManagerUserId] [int] NULL,
	[RoleManagerRoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 03/12/2018 9:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](50) NULL,
	[StudentMark] [int] NULL,
	[StudentClassID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 03/12/2018 9:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherName] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[PhoneNumber] [nvarchar](18) NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](180) NULL,
	[TimeToWork] [int] NULL,
	[PricePerHour] [int] NULL,
	[LevelEducation] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserManager]    Script Date: 03/12/2018 9:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserManager](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[UserType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (1, N'Nguyễn Thành Nam', 22, N'0355486666', N'ntnvlogs@gmail.com', N'Hà Nội', 8, 60000, N'Đại học', 1)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (2, N'Dương Tiến Đạt', 22, N'0355486667', N'duongtiendatt@gmail.com', N'Phú Thọ', 5, 15000, N'12/12', 1)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (3, N'La Ngân Quang', 22, N'0355486668', N'vi1nguoi2k11@gmail.com', N'Lào Cai', 7, 25000, N'12/12', 1)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (4, N'Phạm Quốc Dũng', 21, N'0355486669', N'ntnvlogs@gmail.com', N'Hà Nội', 2, 15000, N'9/12', 0)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (5, N'Tống Thanh Thư', 22, N'0964555212', N'thuvlogs@gmail.com', N'Hải Phòng', 5, 10000, N'12/12', 1)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (6, N'Đồng Quang Tiến', 23, N'0964214152', N'tiendq@gmail.com', N'Hà Nội', 5, 10000, N'12/12', 1)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (7, N'Đỗ Đăng Thạch', 23, N'0352142151', N'thachdd@gmail.com', N'Hà Nội', 4, 12000, N'12/12', 1)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Courses] FOREIGN KEY([ClassCourseId])
REFERENCES [dbo].[Course] ([CourseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Classes_Courses]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Users] FOREIGN KEY([NewsUserID])
REFERENCES [dbo].[UserManager] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Users]
GO
ALTER TABLE [dbo].[Revenue]  WITH CHECK ADD  CONSTRAINT [FK_Revenue_Expenditure] FOREIGN KEY([ExpenditureId])
REFERENCES [dbo].[Expenditure] ([ExpenditureId])
GO
ALTER TABLE [dbo].[Revenue] CHECK CONSTRAINT [FK_Revenue_Expenditure]
GO
ALTER TABLE [dbo].[Revenue]  WITH CHECK ADD  CONSTRAINT [FK_Revenues_Students] FOREIGN KEY([RevenueStudentId])
REFERENCES [dbo].[Student] ([StudentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Revenue] CHECK CONSTRAINT [FK_Revenues_Students]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Students_Classes] FOREIGN KEY([StudentClassID])
REFERENCES [dbo].[Class] ([ClassId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Students_Classes]
GO
