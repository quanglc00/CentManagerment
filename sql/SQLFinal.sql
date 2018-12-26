CREATE DATABASE [CentManagerment]
GO
USE [CentManagerment]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 12/25/2018 2:20:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](50) NULL,
	[ClassAmountStudent] [int] NULL,
	[ClassCourseId] [int] NULL,
 CONSTRAINT [PK__Class__CB1927C0D1D08F64] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 12/25/2018 2:20:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 0) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__Course__C92D71A771D27A6B] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Expenditure]    Script Date: 12/25/2018 2:20:40 PM ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 12/25/2018 2:20:40 PM ******/
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
	[NewsAvatar] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegisterManagerment]    Script Date: 12/25/2018 2:20:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterManagerment](
	[register_id] [int] IDENTITY(1,1) NOT NULL,
	[register_name] [nvarchar](69) NULL,
	[register_phone] [nvarchar](16) NULL,
	[register_email] [nvarchar](69) NULL,
	[register_course] [int] NULL,
	[register_status] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Revenue]    Script Date: 12/25/2018 2:20:40 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 25/12/2018 2:23:10 CH ******/
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
/****** Object:  Table [dbo].[RoleManager]    Script Date: 25/12/2018 2:23:10 CH ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 12/25/2018 2:20:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](50) NULL,
	[StudentMark] [int] NULL,
	[StudentClassID] [int] NULL,
	[StudentSchoolFee] [float] NULL,
	[StudentEmail] [varchar](100) NULL,
	[StudentPhone] [varchar](11) NULL,
	[StudentAdress] [ntext] NULL,
	[StudentSchoolFeeStatus] [bit] NULL,
	[StudentSchoolFeeDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 12/25/2018 2:20:40 PM ******/
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
/****** Object:  Table [dbo].[Transaction]    Script Date: 12/25/2018 2:20:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[PayDate] [datetime] NULL,
	[PayStatus] [bit] NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[PaidAmount] [decimal](18, 0) NULL,
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserManager]    Script Date: 25/12/2018 2:23:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserManager](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[UserType] [int] NULL,
	[FullName] [nvarchar](255) NULL,
	[UserPhoneNumber] [nvarchar](16) NULL,
 CONSTRAINT [PK__UserMana__1788CC4CF536915B] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (14, N'Lop 12a9', NULL, NULL)
INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (23, N'Lop 12a9', NULL, NULL)
INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (24, N'Lop 12a9', NULL, NULL)
INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (25, N'Lop 11a7', NULL, NULL)
INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (26, N'Lop 11a7a', NULL, NULL)
INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (27, N'asdasd', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Class] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseId], [CourseName], [Price], [StartDate], [EndDate], [IsActive]) VALUES (9, N'Tamago Nihongo 5', CAST(0 AS Decimal(18, 0)), CAST(0x213F0B00 AS Date), CAST(0xBA3F0B00 AS Date), 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [Price], [StartDate], [EndDate], [IsActive]) VALUES (14, N'TA3', CAST(0 AS Decimal(18, 0)), CAST(0x213F0B00 AS Date), CAST(0xBA3F0B00 AS Date), 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [Price], [StartDate], [EndDate], [IsActive]) VALUES (15, N'TA4', CAST(0 AS Decimal(18, 0)), CAST(0x213F0B00 AS Date), CAST(0xBA3F0B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([NewsId], [NewsContent], [NewsShortContent], [NewsPostDate], [NewsTitle], [NewsUserID], [NewsAvatar]) VALUES (1, N'1', N'1', CAST(0x42220B00 AS Date), N'1', 1, NULL)
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'StudentHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'CourseHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'NewsHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (4, N'TeacherHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (5, N'SignupHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (6, N'RevenueHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (7, N'EmployeeHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (8, N'CustomsHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (9, N'ClassHandle')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[RoleManager] ON 

INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (331, 1, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (332, 1, 2)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (333, 1, 3)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (334, 1, 4)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (335, 1, 5)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (336, 1, 6)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (337, 1, 7)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (338, 1, 8)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (339, 1, 9)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (340, 7, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (341, 7, 2)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (342, 7, 3)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (343, 7, 4)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (344, 7, 5)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (345, 7, 6)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (346, 7, 7)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (347, 7, 8)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (348, 7, 9)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (349, 10, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (350, 2, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (351, 3, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (352, 4, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (353, 13, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (354, 13, 2)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (355, 13, 3)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (356, 13, 4)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (357, 13, 5)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (358, 13, 6)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (359, 13, 7)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (360, 13, 8)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (361, 13, 9)
SET IDENTITY_INSERT [dbo].[RoleManager] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentMark], [StudentClassID], [StudentSchoolFee], [StudentEmail], [StudentPhone], [StudentAdress], [StudentSchoolFeeStatus], [StudentSchoolFeeDate]) VALUES (1, N'Dương Tiến Đạt 123', 50, NULL, 5, N'2', N'2', N'Phú Thọ 123', 1, CAST(0x0000A9C100C33A60 AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentMark], [StudentClassID], [StudentSchoolFee], [StudentEmail], [StudentPhone], [StudentAdress], [StudentSchoolFeeStatus], [StudentSchoolFeeDate]) VALUES (9, N'Phạm Dũng', 7, NULL, 5, N'dung@gmail.com', N'0145236985', N'Hà Nội', NULL, NULL)
INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentMark], [StudentClassID], [StudentSchoolFee], [StudentEmail], [StudentPhone], [StudentAdress], [StudentSchoolFeeStatus], [StudentSchoolFeeDate]) VALUES (10, N'123', 0, NULL, 4500000, N'mrvvip11@gmail.com', N'4976906328', N'16, HaNoi', 0, CAST(0x0000A9C100C370B4 AS DateTime))
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (1, N'Nguyễn Thành Nam', 22, N'0355486666', N'ntnvlogs@gmail.com', N'Hà Nội', 8, 60000, N'Đại học', 1)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (2, N'Dương Tiến Đạt', 22, N'0355486667', N'duongtiendatt@gmail.com', N'Phú Thọ', 5, 15000, N'12/12', 1)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (3, N'La Ngân Quang', 22, N'0355486668', N'vi1nguoi2k11@gmail.com', N'Lào Cai', 7, 25000, N'12/12', 1)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (4, N'Phạm Quốc Dũng', 21, N'0355486669', N'ntnvlogs@gmail.com', N'Hà Nội', 2, 15000, N'9/12', 0)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (5, N'Tống Thanh Thư', 22, N'0964555212', N'thuvlogs@gmail.com', N'Hải Phòng', 5, 10000, N'12/12', 1)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (6, N'Đồng Quang Tiến', 23, N'0964214152', N'tiendq@gmail.com', N'Hà Nội', 5, 10000, N'12/12', 1)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [Age], [PhoneNumber], [Email], [Address], [TimeToWork], [PricePerHour], [LevelEducation], [Status]) VALUES (7, N'Đỗ Đăng Thạch', 23, N'0352142151', N'thachdd@gmail.com', N'Hà Nội', 4, 12000, N'12/12', 1)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
SET IDENTITY_INSERT [dbo].[UserManager] ON 

INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (1, N'Quang', N'123', 1, N'La Ngân Quang', N'+8453400286')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (2, N'Dung', N'123', 2, N'Phạm Quốc Dũng', N'+84123456789')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (3, N'Dat', N'123', 2, N'Dương Tiến Đạt 9', N'+84123456789')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (4, N'Nam', N'123', 2, N'Nguyễn Thành Nam', N'+84123456789')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (7, N'admin1', N'123', 1, N'La Ngân Quang', N'+8456456465')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (10, N'test', N'123', 2, N'Quang đẹp trai', N'+8454654646')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (13, N'admin', N'admin', 1, N'Quang La Ngân', N'+84516561')
SET IDENTITY_INSERT [dbo].[UserManager] OFF
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'CourseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày trả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'PayDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái: 0 - Chưa thanh toán, 1 - Đã thanh toán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'PayStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số tiền phải trả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'TotalAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số tiền đã thanh toán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'PaidAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sinh viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'StudentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'CourseId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi chú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'Note'
GO
