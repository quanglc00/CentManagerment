USE [master]
GO
/****** Object:  Database [CentManagerment]    Script Date: 25/12/2018 2:23:09 CH ******/
CREATE DATABASE [CentManagerment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CentManagerment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CentManagerment.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CentManagerment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CentManagerment_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CentManagerment] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CentManagerment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CentManagerment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CentManagerment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CentManagerment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CentManagerment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CentManagerment] SET ARITHABORT OFF 
GO
ALTER DATABASE [CentManagerment] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CentManagerment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CentManagerment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CentManagerment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CentManagerment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CentManagerment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CentManagerment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CentManagerment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CentManagerment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CentManagerment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CentManagerment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CentManagerment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CentManagerment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CentManagerment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CentManagerment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CentManagerment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CentManagerment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CentManagerment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CentManagerment] SET  MULTI_USER 
GO
ALTER DATABASE [CentManagerment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CentManagerment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CentManagerment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CentManagerment] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CentManagerment] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CentManagerment]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 25/12/2018 2:23:09 CH ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 25/12/2018 2:23:10 CH ******/
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
/****** Object:  Table [dbo].[Expenditure]    Script Date: 25/12/2018 2:23:10 CH ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 25/12/2018 2:23:10 CH ******/
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
/****** Object:  Table [dbo].[RegisterManagerment]    Script Date: 25/12/2018 2:23:10 CH ******/
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
/****** Object:  Table [dbo].[Revenue]    Script Date: 25/12/2018 2:23:10 CH ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 25/12/2018 2:23:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 25/12/2018 2:23:10 CH ******/
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
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (14, N'Lop 12a9', 2, 14)
INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (23, N'Lop 12a9', 13, 14)
INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (24, N'Lop 12a9', 13, 14)
INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (25, N'Lop 11a7', 23, 15)
INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (26, N'Lop 11a7a', 44, 14)
INSERT [dbo].[Class] ([ClassId], [ClassName], [ClassAmountStudent], [ClassCourseId]) VALUES (27, N'asdasd', 44, 15)
SET IDENTITY_INSERT [dbo].[Class] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseTime], [CousePrice]) VALUES (9, N'Tamago Nihongo 5', N'69 tháng', N'300000000000')
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseTime], [CousePrice]) VALUES (14, N'TA3', N'3 thang', N'2000000')
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseTime], [CousePrice]) VALUES (15, N'TA4', N'2 thang', N'1111111')
SET IDENTITY_INSERT [dbo].[Course] OFF
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

INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentMark], [StudentClassID], [StudentSchoolFee], [StudentEmail], [StudentPhone], [StudentAdress]) VALUES (1, N'Dương Tiến Đạt 123', 10, NULL, 5, N'2', N'2', N'Phú Thọ 123')
INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentMark], [StudentClassID], [StudentSchoolFee], [StudentEmail], [StudentPhone], [StudentAdress]) VALUES (8, N'Phạm Dũng', 5, NULL, NULL, N'dung@gmail.com', N'0336515247', NULL)
INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentMark], [StudentClassID], [StudentSchoolFee], [StudentEmail], [StudentPhone], [StudentAdress]) VALUES (9, N'Phạm Dũng', 7, NULL, 5, N'dung@gmail.com', N'0145236985', N'Hà Nội')
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
USE [master]
GO
ALTER DATABASE [CentManagerment] SET  READ_WRITE 
GO
