USE [master]
GO
/****** Object:  Database [CentManagerment]    Script Date: 12/10/2018 8:33:45 PM ******/
CREATE DATABASE [CentManagerment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CentManagerment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CentManagerment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CentManagerment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CentManagerment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CentManagerment] SET COMPATIBILITY_LEVEL = 110
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
ALTER DATABASE [CentManagerment] SET QUERY_STORE = OFF
GO
USE [CentManagerment]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CentManagerment]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 12/10/2018 8:33:45 PM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 12/10/2018 8:33:45 PM ******/
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
/****** Object:  Table [dbo].[Expenditure]    Script Date: 12/10/2018 8:33:45 PM ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 12/10/2018 8:33:45 PM ******/
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
/****** Object:  Table [dbo].[RegisterManagerment]    Script Date: 12/10/2018 8:33:45 PM ******/
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
/****** Object:  Table [dbo].[Revenue]    Script Date: 12/10/2018 8:33:45 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 12/10/2018 8:33:45 PM ******/
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
/****** Object:  Table [dbo].[RoleManager]    Script Date: 12/10/2018 8:33:45 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 12/10/2018 8:33:45 PM ******/
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
/****** Object:  Table [dbo].[Teacher]    Script Date: 12/10/2018 8:33:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherName] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[TimeToWork] [int] NULL,
	[PricePerHour] [int] NULL,
	[LevelEducation] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserManager]    Script Date: 12/10/2018 8:33:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserManager](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[UserType] [int] NULL,
	[FullName] [nvarchar](69) NULL,
	[UserPhoneNumber] [nvarchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'StudentHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'CourseHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'NewsHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (4, N'TeacherHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (5, N'SignupHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (6, N'RevenueHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (7, N'EmployeeHandle')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (8, N'SetupHandle')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[RoleManager] ON 

INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (128, 1, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (129, 1, 2)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (130, 1, 3)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (131, 1, 4)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (132, 1, 5)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (133, 1, 6)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (134, 1, 7)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (135, 1, 8)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (136, 2, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (137, 2, 2)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (138, 2, 3)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (139, 2, 4)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (140, 2, 5)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (141, 2, 6)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (142, 3, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (143, 3, 2)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (144, 3, 3)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (145, 3, 4)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (146, 3, 5)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (147, 3, 6)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (148, 3, 7)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (149, 3, 8)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (150, 4, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (151, 4, 2)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (152, 4, 3)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (153, 4, 4)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (154, 4, 5)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (155, 4, 6)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (156, 7, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (157, 7, 2)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (158, 7, 3)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (159, 7, 4)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (160, 7, 5)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (161, 7, 6)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (162, 10, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (163, 10, 2)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (164, 10, 3)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (165, 10, 4)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (166, 10, 5)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (167, 10, 6)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (168, 13, 1)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (169, 13, 2)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (170, 13, 3)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (171, 13, 4)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (172, 13, 5)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (173, 13, 6)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (174, 13, 7)
INSERT [dbo].[RoleManager] ([RoleManagerId], [RoleManagerUserId], [RoleManagerRoleId]) VALUES (175, 13, 8)
SET IDENTITY_INSERT [dbo].[RoleManager] OFF
SET IDENTITY_INSERT [dbo].[UserManager] ON 

INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (1, N'Quang', N'123', 1, N'La Ngân Quang', N'+8453400286')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (2, N'Dung', N'123', 2, N'Phạm Quốc Dũng', N'+84123456789')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (3, N'Dat', N'123', 1, N'Dương Tiến Đạt 9', N'+84123456789')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (4, N'Nam', N'123', 2, N'Nguyễn Thành Nam', N'+84123456789')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (7, N'admin1', N'123', 2, N'La Ngân Quang', N'+8456456465')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (10, N'test', N'123', 2, N'test', N'123')
INSERT [dbo].[UserManager] ([UserId], [UserName], [UserPassword], [UserType], [FullName], [UserPhoneNumber]) VALUES (13, N'admin', N'admin', 1, N'admin', N'+84516561')
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
