USE [master]
GO
/****** Object:  Database [Db_ASP]    Script Date: 10/12/2024 10:57:52 PM ******/
CREATE DATABASE [Db_ASP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db_ASP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Db_ASP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Db_ASP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Db_ASP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Db_ASP] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Db_ASP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Db_ASP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Db_ASP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Db_ASP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Db_ASP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Db_ASP] SET ARITHABORT OFF 
GO
ALTER DATABASE [Db_ASP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Db_ASP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Db_ASP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Db_ASP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Db_ASP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Db_ASP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Db_ASP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Db_ASP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Db_ASP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Db_ASP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Db_ASP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Db_ASP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Db_ASP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Db_ASP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Db_ASP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Db_ASP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Db_ASP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Db_ASP] SET RECOVERY FULL 
GO
ALTER DATABASE [Db_ASP] SET  MULTI_USER 
GO
ALTER DATABASE [Db_ASP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Db_ASP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Db_ASP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Db_ASP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Db_ASP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Db_ASP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Db_ASP', N'ON'
GO
ALTER DATABASE [Db_ASP] SET QUERY_STORE = ON
GO
ALTER DATABASE [Db_ASP] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Db_ASP]
GO
/****** Object:  Table [dbo].[Tbl_Announcements]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Announcements](
	[AncmtId] [int] IDENTITY(1,1) NOT NULL,
	[AncmtAnnouncer] [int] NULL,
	[AncmtTitle] [varchar](50) NULL,
	[AncmtContext] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Announcement] PRIMARY KEY CLUSTERED 
(
	[AncmtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Courses]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Courses](
	[CoureseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Courses] PRIMARY KEY CLUSTERED 
(
	[CoureseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Scores]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Scores](
	[ScoreId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Exam1] [decimal](18, 2) NULL,
	[Exam2] [decimal](18, 2) NULL,
	[Exam3] [decimal](18, 2) NULL,
	[Averege] [decimal](18, 2) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Tbl_Scores] PRIMARY KEY CLUSTERED 
(
	[ScoreId] ASC,
	[StudentId] ASC,
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_StdMessages]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_StdMessages](
	[MsgStdId] [int] IDENTITY(1,1) NOT NULL,
	[MsgStdSender] [int] NULL,
	[MsgStdReceiver] [int] NULL,
	[MsgStdTitle] [varchar](50) NULL,
	[MsgStdContext] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_StdMessage] PRIMARY KEY CLUSTERED 
(
	[MsgStdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Students]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Students](
	[StdId] [int] IDENTITY(1,1) NOT NULL,
	[StdNameAndSurname] [varchar](50) NULL,
	[StdPhone] [varchar](20) NULL,
	[StdMail] [varchar](50) NULL,
	[StdPassword] [varchar](50) NULL,
	[StdImage] [varchar](max) NULL,
	[StdStatus] [bit] NULL,
 CONSTRAINT [PK_Tbl_Std] PRIMARY KEY CLUSTERED 
(
	[StdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Teachers]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Teachers](
	[ThcId] [int] IDENTITY(1,1) NOT NULL,
	[ThcNameAndSurname] [varchar](50) NULL,
	[ThcImage] [varchar](max) NULL,
	[ThcDepartment] [int] NULL,
	[ThcStatus] [bit] NULL,
 CONSTRAINT [PK_Tbl_Teachers] PRIMARY KEY CLUSTERED 
(
	[ThcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ThcMessages]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ThcMessages](
	[MsgThcId] [int] IDENTITY(1,1) NOT NULL,
	[MsgThcSender] [int] NULL,
	[MsgThcReceiver] [int] NULL,
	[MsgThcTitle] [varchar](50) NULL,
	[MsgThcContext] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Messages] PRIMARY KEY CLUSTERED 
(
	[MsgThcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_Scores] ADD  CONSTRAINT [DF_Tbl_Scores_Exam1]  DEFAULT ((0)) FOR [Exam1]
GO
ALTER TABLE [dbo].[Tbl_Scores] ADD  CONSTRAINT [DF_Tbl_Scores_Exam2]  DEFAULT ((0)) FOR [Exam2]
GO
ALTER TABLE [dbo].[Tbl_Scores] ADD  CONSTRAINT [DF_Tbl_Scores_Exam3]  DEFAULT ((0)) FOR [Exam3]
GO
ALTER TABLE [dbo].[Tbl_Scores] ADD  CONSTRAINT [DF_Tbl_Scores_Averege]  DEFAULT ((0)) FOR [Averege]
GO
ALTER TABLE [dbo].[Tbl_Scores] ADD  CONSTRAINT [DF_Tbl_Scores_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Tbl_Students] ADD  CONSTRAINT [DF_Tbl_Students_StdStatus]  DEFAULT ((1)) FOR [StdStatus]
GO
ALTER TABLE [dbo].[Tbl_Teachers] ADD  CONSTRAINT [DF_Tbl_Teachers_ThcStatus]  DEFAULT ((1)) FOR [ThcStatus]
GO
ALTER TABLE [dbo].[Tbl_Announcements]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Announcement_Tbl_Teachers] FOREIGN KEY([AncmtAnnouncer])
REFERENCES [dbo].[Tbl_Teachers] ([ThcId])
GO
ALTER TABLE [dbo].[Tbl_Announcements] CHECK CONSTRAINT [FK_Tbl_Announcement_Tbl_Teachers]
GO
ALTER TABLE [dbo].[Tbl_Scores]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Scores_Tbl_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Tbl_Courses] ([CoureseId])
GO
ALTER TABLE [dbo].[Tbl_Scores] CHECK CONSTRAINT [FK_Tbl_Scores_Tbl_Courses]
GO
ALTER TABLE [dbo].[Tbl_Scores]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Scores_Tbl_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Tbl_Students] ([StdId])
GO
ALTER TABLE [dbo].[Tbl_Scores] CHECK CONSTRAINT [FK_Tbl_Scores_Tbl_Students]
GO
ALTER TABLE [dbo].[Tbl_StdMessages]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StdMessage_Tbl_Students] FOREIGN KEY([MsgStdSender])
REFERENCES [dbo].[Tbl_Students] ([StdId])
GO
ALTER TABLE [dbo].[Tbl_StdMessages] CHECK CONSTRAINT [FK_Tbl_StdMessage_Tbl_Students]
GO
ALTER TABLE [dbo].[Tbl_StdMessages]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StdMessage_Tbl_Students1] FOREIGN KEY([MsgStdReceiver])
REFERENCES [dbo].[Tbl_Students] ([StdId])
GO
ALTER TABLE [dbo].[Tbl_StdMessages] CHECK CONSTRAINT [FK_Tbl_StdMessage_Tbl_Students1]
GO
ALTER TABLE [dbo].[Tbl_Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Teachers_Tbl_Courses] FOREIGN KEY([ThcDepartment])
REFERENCES [dbo].[Tbl_Courses] ([CoureseId])
GO
ALTER TABLE [dbo].[Tbl_Teachers] CHECK CONSTRAINT [FK_Tbl_Teachers_Tbl_Courses]
GO
ALTER TABLE [dbo].[Tbl_ThcMessages]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Messages_Tbl_Students] FOREIGN KEY([MsgThcReceiver])
REFERENCES [dbo].[Tbl_Students] ([StdId])
GO
ALTER TABLE [dbo].[Tbl_ThcMessages] CHECK CONSTRAINT [FK_Tbl_Messages_Tbl_Students]
GO
ALTER TABLE [dbo].[Tbl_ThcMessages]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Messages_Tbl_Teachers] FOREIGN KEY([MsgThcSender])
REFERENCES [dbo].[Tbl_Teachers] ([ThcId])
GO
ALTER TABLE [dbo].[Tbl_ThcMessages] CHECK CONSTRAINT [FK_Tbl_Messages_Tbl_Teachers]
GO
/****** Object:  StoredProcedure [dbo].[announcementList]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[announcementList]
as
select AncmtId,
ThcNameAndSurname as 'Announcer',
AncmtTitle,AncmtContext
from Tbl_Announcements
inner join Tbl_Teachers on Tbl_Teachers.ThcId = Tbl_Announcements.AncmtAnnouncer

GO
/****** Object:  StoredProcedure [dbo].[GetscoreList]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetscoreList]
as
select ScoreId,StdNameAndSurname as 'Student',
CourseName as 'Course Name',Exam1,Exam2,Exam3,Averege,
Status from Tbl_Scores 
inner join Tbl_Students 
on Tbl_Students.StdId = Tbl_Scores.StudentId
inner join Tbl_Courses 
on Tbl_Courses.CoureseId = Tbl_Scores.CourseId
GO
/****** Object:  StoredProcedure [dbo].[messagestdList]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[messagestdList]
as
select MsgStdId,
Snd.StdNameAndSurname as 'Sender',
Rcv.StdNameAndSurname as 'Reciver',
MsgStdTitle,MsgStdContext
from Tbl_StdMessages
inner join Tbl_Students as Snd on Snd.StdId = Tbl_StdMessages.MsgStdSender
inner join Tbl_Students as Rcv on Rcv.StdId = Tbl_StdMessages.MsgStdReceiver

GO
/****** Object:  StoredProcedure [dbo].[messagethcList]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[messagethcList]
as
select MsgThcId,
ThcNameAndSurname as 'Sender',
StdNameAndSurname as 'Reciver',
MsgThcTitle,MsgThcContext
from Tbl_ThcMessages
inner join Tbl_Teachers on Tbl_Teachers.ThcId = Tbl_ThcMessages.MsgThcSender
inner join Tbl_Students on Tbl_Students.StdId = Tbl_ThcMessages.MsgThcReceiver
GO
/****** Object:  StoredProcedure [dbo].[teacherList]    Script Date: 10/12/2024 10:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[teacherList]
as
select ThcId, ThcNameAndSurname, CourseName,ThcImage
from Tbl_Teachers inner join Tbl_Courses
on Tbl_Courses.CoureseId = Tbl_Teachers.ThcDepartment
GO
USE [master]
GO
ALTER DATABASE [Db_ASP] SET  READ_WRITE 
GO
