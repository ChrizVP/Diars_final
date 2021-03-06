USE [master]
GO
/****** Object:  Database [Proyecto_DIARS_ISIS]    Script Date: 2/07/2019 15:59:56 ******/
CREATE DATABASE [Proyecto_DIARS_ISIS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto_DIARS_ISIS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Proyecto_DIARS_ISIS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto_DIARS_ISIS_log', FILENAME = N':\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Proyecto_DIARS_ISIS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto_DIARS_ISIS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET QUERY_STORE = OFF
GO
USE [Proyecto_DIARS_ISIS]
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
USE [Proyecto_DIARS_ISIS]
GO
USE [Proyecto_DIARS_ISIS]
GO
/****** Object:  Sequence [dbo].[ReservaID]    Script Date: 2/07/2019 15:59:56 ******/
CREATE SEQUENCE [dbo].[ReservaID] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Proyecto_DIARS_ISIS]
GO
/****** Object:  Sequence [dbo].[Seq_AlquilerID]    Script Date: 2/07/2019 15:59:56 ******/
CREATE SEQUENCE [dbo].[Seq_AlquilerID] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Proyecto_DIARS_ISIS]
GO
/****** Object:  Sequence [dbo].[Seq_NumeroSerie]    Script Date: 2/07/2019 15:59:56 ******/
CREATE SEQUENCE [dbo].[Seq_NumeroSerie] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Proyecto_DIARS_ISIS]
GO
/****** Object:  Sequence [dbo].[Seq_PaqueteID]    Script Date: 2/07/2019 15:59:56 ******/
CREATE SEQUENCE [dbo].[Seq_PaqueteID] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Proyecto_DIARS_ISIS]
GO
/****** Object:  Sequence [dbo].[TipodehabitacionID]    Script Date: 2/07/2019 15:59:56 ******/
CREATE SEQUENCE [dbo].[TipodehabitacionID] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[AccountHashTable]    Script Date: 2/07/2019 15:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountHashTable](
	[HashCode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Activa] [bit] NULL,
	[AccountHashTableID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountHashTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alquiler]    Script Date: 2/07/2019 15:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alquiler](
	[CantidadAdultos] [int] NOT NULL,
	[CantidadKids] [int] NOT NULL,
	[Fechadeingreso] [date] NOT NULL,
	[Fechadesalida] [date] NOT NULL,
	[AlquilerID] [int] NOT NULL,
	[NumeroHabitacion] [varchar](4) NOT NULL,
	[Dni] [char](8) NOT NULL,
 CONSTRAINT [PK__Alquiler__F28020D5AB21AAD6] PRIMARY KEY CLUSTERED 
(
	[AlquilerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlquilerControl]    Script Date: 2/07/2019 15:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlquilerControl](
	[AlquilerControlID] [int] IDENTITY(1,1) NOT NULL,
	[Entrada] [datetime] NOT NULL,
	[Salida] [datetime] NULL,
	[AlquilerID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AlquilerControlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comprobantepagoalquiler]    Script Date: 2/07/2019 15:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comprobantepagoalquiler](
	[Fechadeemision] [date] NULL,
	[Ruc] [char](11) NULL,
	[ComprobantepagoalquilerID] [int] NOT NULL,
	[AlquilerID] [int] NOT NULL,
	[Monto] [decimal](18, 0) NULL,
 CONSTRAINT [PK__Comproba__6D515EEF4CD42B61] PRIMARY KEY CLUSTERED 
(
	[ComprobantepagoalquilerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comprobantepagoreserva]    Script Date: 2/07/2019 15:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comprobantepagoreserva](
	[Fechadeemision] [date] NULL,
	[Ruc] [char](11) NULL,
	[ComprobantepagoreservaID] [int] NOT NULL,
	[ReservaID] [int] NULL,
	[Monto] [decimal](18, 0) NULL,
 CONSTRAINT [PK__Comproba__F159691A5996C249] PRIMARY KEY CLUSTERED 
(
	[ComprobantepagoreservaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 2/07/2019 15:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta](
	[Email] [nvarchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 2/07/2019 15:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[NumeroHabitacion] [varchar](4) NOT NULL,
	[TipodehabitacionID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HashTable]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HashTable](
	[HashCode] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HashCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Huesped](
	[Dni] [char](8) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passwordaccount]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passwordaccount](
	[Passwordstring] [nvarchar](350) NULL,
	[HashCode] [nvarchar](50) NULL,
	[PasswordaccountID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recepcionista]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recepcionista](
	[RecepcionistaID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RecepcionistaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[Fechadereserva] [date] NULL,
	[ReservaID] [int] NOT NULL,
	[NumeroHabitacion] [varchar](4) NULL,
	[CantidadAdultos] [int] NULL,
	[CantidadKids] [int] NULL,
	[FechaIngreso] [date] NULL,
	[FechaSalida] [date] NULL,
	[Dni] [char](8) NOT NULL,
	[Activa] [bit] NULL,
 CONSTRAINT [PK__Reserva__C39937033BBA8CE1] PRIMARY KEY CLUSTERED 
(
	[ReservaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServAdicionalTipoH]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServAdicionalTipoH](
	[TipodehabitacionID] [int] NULL,
	[ServAdicTipoH] [int] IDENTITY(1,1) NOT NULL,
	[ServicioadicionalID] [int] NULL,
 CONSTRAINT [PK__ServAdic__62F725F8667CA717] PRIMARY KEY CLUSTERED 
(
	[ServAdicTipoH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicioadicional]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicioadicional](
	[NombreServicio] [varchar](50) NULL,
	[ServicioadicionalID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Servicio__02E121CD36E3BBDF] PRIMARY KEY CLUSTERED 
(
	[ServicioadicionalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipodehabitacion]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipodehabitacion](
	[Capacidad] [int] NULL,
	[Costoadicional] [decimal](6, 2) NULL,
	[Nombretipodehabitacion] [varchar](50) NULL,
	[Numerodecamas] [int] NULL,
	[Precio] [decimal](6, 2) NULL,
	[TipodehabitacionID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipodehabitacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[UserName] [nvarchar](50) NOT NULL,
	[FechaNacimiento] [datetime] NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccountHashTable] ON 
GO
INSERT [dbo].[AccountHashTable] ([HashCode], [Email], [Activa], [AccountHashTableID]) VALUES (N'1151159710899', N'badinhocornejo@gmail.com', 1, 6)
GO
INSERT [dbo].[AccountHashTable] ([HashCode], [Email], [Activa], [AccountHashTableID]) VALUES (N'1151159710899', N'grifitus@gmail.com', 1, 7)
GO
INSERT [dbo].[AccountHashTable] ([HashCode], [Email], [Activa], [AccountHashTableID]) VALUES (N'11010510910097115105115105', N'hostalIsis.badinhocornejo@isis.com', 1, 10)
GO
INSERT [dbo].[AccountHashTable] ([HashCode], [Email], [Activa], [AccountHashTableID]) VALUES (N'1151159710899', N'maria@gmail.com', 1, 11)
GO
INSERT [dbo].[AccountHashTable] ([HashCode], [Email], [Activa], [AccountHashTableID]) VALUES (N'48484850101115111106', N'jose@gmail.com', 1, 12)
GO
INSERT [dbo].[AccountHashTable] ([HashCode], [Email], [Activa], [AccountHashTableID]) VALUES (N'10012010511497109', N'maricarmendelcarmen@hotmail.com', 1, 13)
GO
INSERT [dbo].[AccountHashTable] ([HashCode], [Email], [Activa], [AccountHashTableID]) VALUES (N'1151059997114102', N'franciscoElCapo@yahoo.com', 1, 14)
GO
INSERT [dbo].[AccountHashTable] ([HashCode], [Email], [Activa], [AccountHashTableID]) VALUES (N'51504911110811110010511497109', N'mariadolores@gmail.com', 1, 15)
GO
INSERT [dbo].[AccountHashTable] ([HashCode], [Email], [Activa], [AccountHashTableID]) VALUES (N'49505112199117108', N'lucy@gmail.com', 1, 16)
GO
SET IDENTITY_INSERT [dbo].[AccountHashTable] OFF
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 20, N'105', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 21, N'201', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 22, N'301', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 23, N'401', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 24, N'102', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 25, N'202', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 26, N'302', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 27, N'402', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 1, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 28, N'103', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 1, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 29, N'203', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 1, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 30, N'303', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (3, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 31, N'403', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 2, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 32, N'104', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 2, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 33, N'204', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 2, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 34, N'304', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (4, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 35, N'404', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 36, N'305', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 37, N'405', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 38, N'101', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (1, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), 509134541, N'201', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), 778995181, N'203', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), 1141809552, N'204', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-03' AS Date), 1434087385, N'304', N'64823749')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (1, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), 1497519981, N'105', N'64823749')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (1, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-04' AS Date), 1766471093, N'301', N'64823749')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (1, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), 1953717078, N'201', N'71778079')
GO
INSERT [dbo].[Alquiler] ([CantidadAdultos], [CantidadKids], [Fechadeingreso], [Fechadesalida], [AlquilerID], [NumeroHabitacion], [Dni]) VALUES (2, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), 1975679507, N'402', N'87462648')
GO
INSERT [dbo].[Comprobantepagoalquiler] ([Fechadeemision], [Ruc], [ComprobantepagoalquilerID], [AlquilerID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 786413997, 1975679507, CAST(12 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoalquiler] ([Fechadeemision], [Ruc], [ComprobantepagoalquilerID], [AlquilerID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 1015074385, 1497519981, CAST(6 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoalquiler] ([Fechadeemision], [Ruc], [ComprobantepagoalquilerID], [AlquilerID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 1512570860, 778995181, CAST(14 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoalquiler] ([Fechadeemision], [Ruc], [ComprobantepagoalquilerID], [AlquilerID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 1537180287, 509134541, CAST(6 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoalquiler] ([Fechadeemision], [Ruc], [ComprobantepagoalquilerID], [AlquilerID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 1630823550, 1141809552, CAST(16 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoalquiler] ([Fechadeemision], [Ruc], [ComprobantepagoalquilerID], [AlquilerID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 1875831466, 1766471093, CAST(6 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoalquiler] ([Fechadeemision], [Ruc], [ComprobantepagoalquilerID], [AlquilerID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 2101046437, 1434087385, CAST(16 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 34077324, 1995150128, CAST(40 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 48559229, 166959440, CAST(24 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 123188547, 2131277451, CAST(56 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 251249823, 1655314694, CAST(64 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 333404264, 46495405, CAST(48 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 489172057, 1136723866, CAST(24 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 637905964, 1463236126, CAST(56 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 705116244, 368790270, CAST(40 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 734936900, 922331424, CAST(24 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 759015723, 500136348, CAST(24 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 824877187, 345724433, CAST(48 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 897764758, 999752005, CAST(64 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 1006199348, 695953886, CAST(24 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 1072758881, 504718448, CAST(64 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 1076651724, 2070396835, CAST(64 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 1206216669, 1375702845, CAST(56 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 1248790046, 1851900969, CAST(64 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 1262021991, 804430719, CAST(48 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 1351962278, 1680693378, CAST(48 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 1414089767, 705458628, CAST(56 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 1531546708, 181538004, CAST(56 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 1596011233, 1661350882, CAST(56 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 1709187731, 860301896, CAST(64 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 1818570871, 1128188377, CAST(64 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-01' AS Date), N'RUC00000001', 2025036733, 808363569, CAST(56 AS Decimal(18, 0)))
GO
INSERT [dbo].[Comprobantepagoreserva] ([Fechadeemision], [Ruc], [ComprobantepagoreservaID], [ReservaID], [Monto]) VALUES (CAST(N'2019-07-02' AS Date), N'RUC00000001', 2068114299, 31949336, CAST(24 AS Decimal(18, 0)))
GO
INSERT [dbo].[Cuenta] ([Email], [FechaCreacion], [UserName]) VALUES (N'badinhocornejo@gmail.com', CAST(N'2019-06-30T00:00:00.000' AS DateTime), N'dCornejo')
GO
INSERT [dbo].[Cuenta] ([Email], [FechaCreacion], [UserName]) VALUES (N'franciscoElCapo@yahoo.com', CAST(N'2019-07-01T00:00:00.000' AS DateTime), N'FranciscoElCapo')
GO
INSERT [dbo].[Cuenta] ([Email], [FechaCreacion], [UserName]) VALUES (N'grifitus@gmail.com', CAST(N'2019-06-30T00:00:00.000' AS DateTime), N'elSeñorGrifitus')
GO
INSERT [dbo].[Cuenta] ([Email], [FechaCreacion], [UserName]) VALUES (N'hostalIsis.badinhocornejo@isis.com', CAST(N'2019-06-30T00:00:00.000' AS DateTime), N'HOSTALISIS.dCornejo')
GO
INSERT [dbo].[Cuenta] ([Email], [FechaCreacion], [UserName]) VALUES (N'jose@gmail.com', CAST(N'2019-07-01T00:00:00.000' AS DateTime), N'Jose2000')
GO
INSERT [dbo].[Cuenta] ([Email], [FechaCreacion], [UserName]) VALUES (N'lucy@gmail.com', CAST(N'2019-07-01T00:00:00.000' AS DateTime), N'Lucy')
GO
INSERT [dbo].[Cuenta] ([Email], [FechaCreacion], [UserName]) VALUES (N'maria@gmail.com', CAST(N'2019-07-01T00:00:00.000' AS DateTime), N'MariaDB')
GO
INSERT [dbo].[Cuenta] ([Email], [FechaCreacion], [UserName]) VALUES (N'mariadolores@gmail.com', CAST(N'2019-07-01T00:00:00.000' AS DateTime), N'MariDolo')
GO
INSERT [dbo].[Cuenta] ([Email], [FechaCreacion], [UserName]) VALUES (N'maricarmendelcarmen@hotmail.com', CAST(N'2019-07-01T00:00:00.000' AS DateTime), N'MariCarmen')
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'101', 1)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'102', 3)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'103', 4)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'104', 5)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'105', 1)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'201', 1)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'202', 3)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'203', 4)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'204', 5)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'301', 1)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'302', 3)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'303', 4)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'304', 5)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'305', 2)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'401', 1)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'402', 3)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'403', 4)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'404', 5)
GO
INSERT [dbo].[Habitacion] ([NumeroHabitacion], [TipodehabitacionID]) VALUES (N'405', 2)
GO
INSERT [dbo].[HashTable] ([HashCode]) VALUES (N'10012010511497109')
GO
INSERT [dbo].[HashTable] ([HashCode]) VALUES (N'11010510910097115105115105')
GO
INSERT [dbo].[HashTable] ([HashCode]) VALUES (N'1151059997114102')
GO
INSERT [dbo].[HashTable] ([HashCode]) VALUES (N'1151159710899')
GO
INSERT [dbo].[HashTable] ([HashCode]) VALUES (N'48484850101115111106')
GO
INSERT [dbo].[HashTable] ([HashCode]) VALUES (N'49505112199117108')
GO
INSERT [dbo].[HashTable] ([HashCode]) VALUES (N'51504911110811110010511497109')
GO
INSERT [dbo].[Huesped] ([Dni], [UserName]) VALUES (N'39023902', N'Lucy')
GO
INSERT [dbo].[Huesped] ([Dni], [UserName]) VALUES (N'54627327', N'MariDolo')
GO
INSERT [dbo].[Huesped] ([Dni], [UserName]) VALUES (N'63416767', N'FranciscoElCapo')
GO
INSERT [dbo].[Huesped] ([Dni], [UserName]) VALUES (N'64823749', N'MariCarmen')
GO
INSERT [dbo].[Huesped] ([Dni], [UserName]) VALUES (N'71778079', N'dCornejo')
GO
INSERT [dbo].[Huesped] ([Dni], [UserName]) VALUES (N'72717381', N'elSeñorGrifitus')
GO
INSERT [dbo].[Huesped] ([Dni], [UserName]) VALUES (N'74523131', N'Jose2000')
GO
INSERT [dbo].[Huesped] ([Dni], [UserName]) VALUES (N'87462648', N'MariaDB')
GO
SET IDENTITY_INSERT [dbo].[Passwordaccount] ON 
GO
INSERT [dbo].[Passwordaccount] ([Passwordstring], [HashCode], [PasswordaccountID]) VALUES (N'isisadmin', N'11010510910097115105115105', 9)
GO
INSERT [dbo].[Passwordaccount] ([Passwordstring], [HashCode], [PasswordaccountID]) VALUES (N'jose2000', N'48484850101115111106', 10)
GO
INSERT [dbo].[Passwordaccount] ([Passwordstring], [HashCode], [PasswordaccountID]) VALUES (N'marixd', N'10012010511497109', 11)
GO
INSERT [dbo].[Passwordaccount] ([Passwordstring], [HashCode], [PasswordaccountID]) VALUES (N'fracis', N'1151059997114102', 12)
GO
INSERT [dbo].[Passwordaccount] ([Passwordstring], [HashCode], [PasswordaccountID]) VALUES (N'maridolo123', N'51504911110811110010511497109', 13)
GO
INSERT [dbo].[Passwordaccount] ([Passwordstring], [HashCode], [PasswordaccountID]) VALUES (N'lucy321', N'49505112199117108', 14)
GO
INSERT [dbo].[Passwordaccount] ([Passwordstring], [HashCode], [PasswordaccountID]) VALUES (N'class', N'1151159710899', 6)
GO
SET IDENTITY_INSERT [dbo].[Passwordaccount] OFF
GO
SET IDENTITY_INSERT [dbo].[Recepcionista] ON 
GO
INSERT [dbo].[Recepcionista] ([RecepcionistaID], [UserName]) VALUES (1, N'HOSTALISIS.dCornejo')
GO
SET IDENTITY_INSERT [dbo].[Recepcionista] OFF
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 1, N'101', 1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 2, N'105', 1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 3, N'201', 1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 4, N'301', 1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 5, N'401', 1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 6, N'102', 1, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 7, N'202', 2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 8, N'302', 2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 9, N'402', 2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 10, N'103', 2, 1, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 11, N'203', 2, 1, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 12, N'303', 2, 1, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 13, N'403', 3, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 14, N'104', 2, 2, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 15, N'204', 2, 2, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 16, N'304', 2, 2, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 17, N'404', 4, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 18, N'305', 2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-06-30' AS Date), 19, N'405', 2, 0, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-02' AS Date), 31949336, N'201', 1, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), N'71778079', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-02' AS Date), 46495405, N'402', 2, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), N'87462648', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 166959440, N'401', 1, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-02' AS Date), N'63416767', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 181538004, N'103', 2, 1, CAST(N'2019-08-07' AS Date), CAST(N'2019-08-10' AS Date), N'87462648', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 345724433, N'302', 2, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-03' AS Date), N'74523131', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 368790270, N'305', 2, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-04' AS Date), N'39023902', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 500136348, N'301', 1, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-01' AS Date), N'39023902', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-02' AS Date), 504718448, N'204', 2, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), N'71778079', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 695953886, N'301', 1, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-04' AS Date), N'64823749', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-02' AS Date), 705458628, N'203', 2, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), N'71778079', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 804430719, N'202', 2, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-06' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 808363569, N'103', 1, 2, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-01' AS Date), N'74523131', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 860301896, N'304', 2, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-03' AS Date), N'64823749', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 922331424, N'105', 1, 0, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-02' AS Date), N'64823749', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 999752005, N'104', 1, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-03' AS Date), N'74523131', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 1128188377, N'404', 4, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-02' AS Date), N'74523131', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 1136723866, N'101', 1, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-03' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 1375702845, N'103', 2, 1, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-04' AS Date), N'87462648', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 1463236126, N'303', 3, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-03' AS Date), N'87462648', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 1655314694, N'304', 3, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-01' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 1661350882, N'403', 2, 0, CAST(N'2019-08-06' AS Date), CAST(N'2019-08-09' AS Date), N'71778079', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 1680693378, N'102', 2, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-02' AS Date), N'71778079', 1)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 1851900969, N'304', 2, 2, CAST(N'2019-08-28' AS Date), CAST(N'2019-08-30' AS Date), N'87462648', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-02' AS Date), 1995150128, N'305', 2, 0, CAST(N'2019-08-10' AS Date), CAST(N'2019-08-12' AS Date), N'71778079', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 2070396835, N'104', 2, 1, CAST(N'2019-08-08' AS Date), CAST(N'2019-08-10' AS Date), N'71778079', 0)
GO
INSERT [dbo].[Reserva] ([Fechadereserva], [ReservaID], [NumeroHabitacion], [CantidadAdultos], [CantidadKids], [FechaIngreso], [FechaSalida], [Dni], [Activa]) VALUES (CAST(N'2019-07-01' AS Date), 2131277451, N'403', 2, 0, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-02' AS Date), N'87462648', 1)
GO
SET IDENTITY_INSERT [dbo].[ServAdicionalTipoH] ON 
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (2, 2, 1)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (2, 3, 2)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (2, 5, 5)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (3, 6, 1)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (3, 7, 2)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (3, 8, 5)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (4, 9, 1)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (4, 10, 2)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (4, 11, 4)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (4, 12, 5)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (4, 13, 6)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (5, 14, 1)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (5, 15, 2)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (5, 16, 4)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (5, 17, 5)
GO
INSERT [dbo].[ServAdicionalTipoH] ([TipodehabitacionID], [ServAdicTipoH], [ServicioadicionalID]) VALUES (5, 18, 6)
GO
SET IDENTITY_INSERT [dbo].[ServAdicionalTipoH] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicioadicional] ON 
GO
INSERT [dbo].[Servicioadicional] ([NombreServicio], [ServicioadicionalID]) VALUES (N'Wifi', 1)
GO
INSERT [dbo].[Servicioadicional] ([NombreServicio], [ServicioadicionalID]) VALUES (N'Parqueadero', 2)
GO
INSERT [dbo].[Servicioadicional] ([NombreServicio], [ServicioadicionalID]) VALUES (N'Lavandería', 4)
GO
INSERT [dbo].[Servicioadicional] ([NombreServicio], [ServicioadicionalID]) VALUES (N'Transporte Hotel-Aeropuerto-Hotel', 5)
GO
INSERT [dbo].[Servicioadicional] ([NombreServicio], [ServicioadicionalID]) VALUES (N'Oficina', 6)
GO
SET IDENTITY_INSERT [dbo].[Servicioadicional] OFF
GO
INSERT [dbo].[Tipodehabitacion] ([Capacidad], [Costoadicional], [Nombretipodehabitacion], [Numerodecamas], [Precio], [TipodehabitacionID]) VALUES (1, CAST(10.00 AS Decimal(6, 2)), N'Simple', 1, CAST(30.00 AS Decimal(6, 2)), 1)
GO
INSERT [dbo].[Tipodehabitacion] ([Capacidad], [Costoadicional], [Nombretipodehabitacion], [Numerodecamas], [Precio], [TipodehabitacionID]) VALUES (2, CAST(20.00 AS Decimal(6, 2)), N'Matrimonial', 1, CAST(50.00 AS Decimal(6, 2)), 2)
GO
INSERT [dbo].[Tipodehabitacion] ([Capacidad], [Costoadicional], [Nombretipodehabitacion], [Numerodecamas], [Precio], [TipodehabitacionID]) VALUES (2, CAST(10.00 AS Decimal(6, 2)), N'Doble', 2, CAST(60.00 AS Decimal(6, 2)), 3)
GO
INSERT [dbo].[Tipodehabitacion] ([Capacidad], [Costoadicional], [Nombretipodehabitacion], [Numerodecamas], [Precio], [TipodehabitacionID]) VALUES (3, CAST(10.00 AS Decimal(6, 2)), N'Triple', 3, CAST(70.00 AS Decimal(6, 2)), 4)
GO
INSERT [dbo].[Tipodehabitacion] ([Capacidad], [Costoadicional], [Nombretipodehabitacion], [Numerodecamas], [Precio], [TipodehabitacionID]) VALUES (6, CAST(20.00 AS Decimal(6, 2)), N'Múltiple', 4, CAST(80.00 AS Decimal(6, 2)), 5)
GO
INSERT [dbo].[UserAccount] ([UserName], [FechaNacimiento], [Nombre], [Apellidos]) VALUES (N'dCornejo', CAST(N'1999-03-31T00:00:00.000' AS DateTime), N'Daniel', N'Cornejo')
GO
INSERT [dbo].[UserAccount] ([UserName], [FechaNacimiento], [Nombre], [Apellidos]) VALUES (N'elSeñorGrifitus', CAST(N'1996-06-25T00:00:00.000' AS DateTime), N'Joel', N'Peña')
GO
INSERT [dbo].[UserAccount] ([UserName], [FechaNacimiento], [Nombre], [Apellidos]) VALUES (N'FranciscoElCapo', CAST(N'1985-12-19T00:00:00.000' AS DateTime), N'Francisco', N'Sanchez')
GO
INSERT [dbo].[UserAccount] ([UserName], [FechaNacimiento], [Nombre], [Apellidos]) VALUES (N'HOSTALISIS.dCornejo', CAST(N'1999-03-31T00:00:00.000' AS DateTime), N'Daniel', N'Cornejo')
GO
INSERT [dbo].[UserAccount] ([UserName], [FechaNacimiento], [Nombre], [Apellidos]) VALUES (N'Jose2000', CAST(N'1998-07-22T00:00:00.000' AS DateTime), N'Jose', N'Martinez')
GO
INSERT [dbo].[UserAccount] ([UserName], [FechaNacimiento], [Nombre], [Apellidos]) VALUES (N'Lucy', CAST(N'1990-08-30T00:00:00.000' AS DateTime), N'Lucia', N'Muñoz')
GO
INSERT [dbo].[UserAccount] ([UserName], [FechaNacimiento], [Nombre], [Apellidos]) VALUES (N'MariaDB', CAST(N'1989-07-13T00:00:00.000' AS DateTime), N'María', N'Garcia')
GO
INSERT [dbo].[UserAccount] ([UserName], [FechaNacimiento], [Nombre], [Apellidos]) VALUES (N'MariCarmen', CAST(N'1994-06-15T00:00:00.000' AS DateTime), N'Maria Carmen', N'López')
GO
INSERT [dbo].[UserAccount] ([UserName], [FechaNacimiento], [Nombre], [Apellidos]) VALUES (N'MariDolo', CAST(N'1994-10-20T00:00:00.000' AS DateTime), N'Maria Dolores', N'Gomez')
GO
ALTER TABLE [dbo].[AccountHashTable]  WITH CHECK ADD  CONSTRAINT [FK_Account_Cuenta] FOREIGN KEY([Email])
REFERENCES [dbo].[Cuenta] ([Email])
GO
ALTER TABLE [dbo].[AccountHashTable] CHECK CONSTRAINT [FK_Account_Cuenta]
GO
ALTER TABLE [dbo].[AccountHashTable]  WITH CHECK ADD  CONSTRAINT [FK_Account_Hash] FOREIGN KEY([HashCode])
REFERENCES [dbo].[HashTable] ([HashCode])
GO
ALTER TABLE [dbo].[AccountHashTable] CHECK CONSTRAINT [FK_Account_Hash]
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Habitacion] FOREIGN KEY([NumeroHabitacion])
REFERENCES [dbo].[Habitacion] ([NumeroHabitacion])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Habitacion]
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Huesped] FOREIGN KEY([Dni])
REFERENCES [dbo].[Huesped] ([Dni])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Huesped]
GO
ALTER TABLE [dbo].[AlquilerControl]  WITH CHECK ADD  CONSTRAINT [FK_AlquilerControl_Alquiler] FOREIGN KEY([AlquilerID])
REFERENCES [dbo].[Alquiler] ([AlquilerID])
GO
ALTER TABLE [dbo].[AlquilerControl] CHECK CONSTRAINT [FK_AlquilerControl_Alquiler]
GO
ALTER TABLE [dbo].[Comprobantepagoalquiler]  WITH CHECK ADD  CONSTRAINT [FK_Comprobantepagoalquiler_Alquiler] FOREIGN KEY([AlquilerID])
REFERENCES [dbo].[Alquiler] ([AlquilerID])
GO
ALTER TABLE [dbo].[Comprobantepagoalquiler] CHECK CONSTRAINT [FK_Comprobantepagoalquiler_Alquiler]
GO
ALTER TABLE [dbo].[Comprobantepagoreserva]  WITH CHECK ADD  CONSTRAINT [FK_ReservaID] FOREIGN KEY([ReservaID])
REFERENCES [dbo].[Reserva] ([ReservaID])
GO
ALTER TABLE [dbo].[Comprobantepagoreserva] CHECK CONSTRAINT [FK_ReservaID]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Account_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[UserAccount] ([UserName])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Account_User]
GO
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Tipodehabitacion] FOREIGN KEY([TipodehabitacionID])
REFERENCES [dbo].[Tipodehabitacion] ([TipodehabitacionID])
GO
ALTER TABLE [dbo].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Tipodehabitacion]
GO
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD  CONSTRAINT [FK_User_Huesped] FOREIGN KEY([UserName])
REFERENCES [dbo].[UserAccount] ([UserName])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Huesped] CHECK CONSTRAINT [FK_User_Huesped]
GO
ALTER TABLE [dbo].[Passwordaccount]  WITH CHECK ADD  CONSTRAINT [FK_Password_Hash] FOREIGN KEY([HashCode])
REFERENCES [dbo].[HashTable] ([HashCode])
GO
ALTER TABLE [dbo].[Passwordaccount] CHECK CONSTRAINT [FK_Password_Hash]
GO
ALTER TABLE [dbo].[Recepcionista]  WITH CHECK ADD  CONSTRAINT [FK_User_Recep] FOREIGN KEY([UserName])
REFERENCES [dbo].[UserAccount] ([UserName])
GO
ALTER TABLE [dbo].[Recepcionista] CHECK CONSTRAINT [FK_User_Recep]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Habitacion] FOREIGN KEY([NumeroHabitacion])
REFERENCES [dbo].[Habitacion] ([NumeroHabitacion])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Habitacion]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Huesped] FOREIGN KEY([Dni])
REFERENCES [dbo].[Huesped] ([Dni])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Huesped]
GO
ALTER TABLE [dbo].[ServAdicionalTipoH]  WITH CHECK ADD  CONSTRAINT [FK_ServicioAdicionalTipoDeHabitacion_ServicioAdicional] FOREIGN KEY([ServicioadicionalID])
REFERENCES [dbo].[Servicioadicional] ([ServicioadicionalID])
GO
ALTER TABLE [dbo].[ServAdicionalTipoH] CHECK CONSTRAINT [FK_ServicioAdicionalTipoDeHabitacion_ServicioAdicional]
GO
ALTER TABLE [dbo].[ServAdicionalTipoH]  WITH CHECK ADD  CONSTRAINT [FK_ServicioAdicionalTipoDeHabitacion_TipoDeHabitacion] FOREIGN KEY([TipodehabitacionID])
REFERENCES [dbo].[Tipodehabitacion] ([TipodehabitacionID])
GO
ALTER TABLE [dbo].[ServAdicionalTipoH] CHECK CONSTRAINT [FK_ServicioAdicionalTipoDeHabitacion_TipoDeHabitacion]
GO
/****** Object:  StoredProcedure [dbo].[SP_ActivarReserva]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_ActivarReserva]
(
	@prmstrFechaIngreso date,
	@prmstrFechaSalida date,
	@prmintReservaID int
)
as
begin
	Update Reserva
	Set FechaIngreso = @prmstrFechaIngreso, FechaSalida = @prmstrFechaSalida,
	Activa = 1
	Where ReservaID = @prmintReservaID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarEstado]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[SP_ActualizarEstado]
(
	@prmstrEmail nvarchar(125),
	@prmstrHashCode nvarchar(350)
)
as
begin
	Update AccountHashTable
	set Activa = 0
	where Email = @prmstrEmail AND HashCode = @prmstrHashCode
end

GO
/****** Object:  StoredProcedure [dbo].[SP_AnularReserva]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SP_AnularReserva]
(
	@prmintReservaID int
)
as
begin
	Update Reserva
	set Activa = 0
	Where ReservaID = @prmintReservaID
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_BuscarCuenta]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_BuscarCuenta]
(
	@prmstrEmail varchar(50)
)
as
begin
	Select * from Cuenta
	where Email = @prmstrEmail
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarDni]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_BuscarDni]
(
	@prmstrDni char(8)
)
as
begin
	Select Dni
	From Huesped
	Where Dni = @prmstrDni
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarEmail]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_BuscarEmail]
(
	@prmstrEmail nvarchar(50)
)
as
begin
	Select Email
	From Cuenta
	Where Email = @prmstrEmail
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_BuscarHabitacion]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_BuscarHabitacion]
(
	@prmstrNumeroHabitacion varchar(4)
)
as
begin
Select	h.NumeroHabitacion, th.Nombretipodehabitacion,
		th.TipodehabitacionID, 
		th.Numerodecamas,th.Precio,th.Capacidad,th.Precio,th.Costoadicional
from Habitacion h inner join Tipodehabitacion th on(h.TipodehabitacionID=th.TipodehabitacionID)
where h.NumeroHabitacion = @prmstrNumeroHabitacion
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_BuscarHuesped]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_BuscarHuesped]
(
	@prmstrDni char(8)
)
as
begin
Select h.Dni, acc.Nombre, acc.Apellidos, acc.FechaNacimiento,
c.Email
from Huesped h inner join UserAccount acc on(h.UserName = acc.UserName)
inner join Cuenta c on(h.UserName=c.UserName)
where h.Dni = @prmstrDni
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarPassword]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_BuscarPassword]
(
	@prmstrEmail nvarchar(50),
	@prmstrHashCode nvarchar(50)
)
as
begin
	Select hs.HashCode
	From AccountHashTable aht 
	inner join Hashtable hs on(aht.HashCode=hs.HashCode)
	Where hs.HashCode = @prmstrHashCode and aht.Email = @prmstrEmail and aht.Activa = 1
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarPasswordSignUp]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_BuscarPasswordSignUp]
(
	@prmstrHashCode nvarchar(50)
)
as
begin
	Select HashCode
	From Hashtable
	Where HashCode = @prmstrHashCode
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarReserva]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_BuscarReserva]
(
	@prmintReservaID int
)
as
begin
	Select *
	from Reserva rev inner join Huesped hu on(rev.Dni=hu.Dni)
	inner join Habitacion h on(rev.NumeroHabitacion=h.NumeroHabitacion)
	inner join Tipodehabitacion th on(h.TipodehabitacionID=th.TipodehabitacionID)
	Where ReservaID = @prmintReservaID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarReservaDeHuesped]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_BuscarReservaDeHuesped]
(
	@prmstrDni	char(8)
)
as
begin
	Select *
	from Reserva rev inner join Huesped hu on(rev.Dni=hu.Dni)
	inner join Habitacion h on(rev.NumeroHabitacion=h.NumeroHabitacion)
	inner join Tipodehabitacion th on(h.TipodehabitacionID=th.TipodehabitacionID)
	where rev.Dni = @prmstrDni and rev.FechaIngreso = convert(varchar, getdate(), 111)  and Activa = 1
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_BuscarServicio]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_BuscarServicio]
(
	@prmintServicioadicionalID int
)
as
begin
	Select * from Servicioadicional
	Where ServicioadicionalID = @prmintServicioadicionalID
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_BuscarTipoH]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_BuscarTipoH]
(
	@prmintTipodehabitacionID int
)
as
begin
	Select * from Tipodehabitacion
	where TipodehabitacionID = @prmintTipodehabitacionID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarUsername]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_BuscarUsername]
(
	@prmstrUserName nvarchar(50)
)
as
begin
	Select UserName 
	From UserAccount
	Where UserName = @prmstrUserName
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_BuscarUsuarioHuesped]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_BuscarUsuarioHuesped]
(
	@prmstrNombreUsuario varchar(50),
	@prmstrHashCode nvarchar(50)
)
as
begin
	Select c.Email,
	ucc.Apellidos,ucc.Nombre,ucc.FechaNacimiento,ucc.UserName,
	h.Dni
	From Cuenta c inner join UserAccount ucc on(c.UserName=ucc.UserName)
	inner join Huesped h on(h.UserName=ucc.UserName)
	inner join AccountHashTable ah on(c.Email=ah.Email)
	inner join HashTable hs on(ah.HashCode=hs.HashCode)
	Where ucc.UserName = @prmstrNombreUsuario AND hs.HashCode = @prmstrHashCode AND ah.Activa = 1
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarUsuarioRecep]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_BuscarUsuarioRecep]
(
	@prmstrNombreUsuario varchar(50),
	@prmstrHashCode nvarchar(50)
)
as
begin
	Select c.Email,
	ucc.Apellidos,ucc.Nombre,ucc.FechaNacimiento,ucc.UserName,
	r.RecepcionistaID
	From Cuenta c inner join UserAccount ucc on(c.UserName=ucc.UserName)
	inner join Recepcionista r on(r.UserName=ucc.UserName)
	inner join AccountHashTable ah on(c.Email=ah.Email)
	inner join HashTable hs on(ah.HashCode=hs.HashCode)
	Where ucc.UserName = @prmstrNombreUsuario AND hs.HashCode = @prmstrHashCode AND ah.Activa = 1
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ClientesFrecuentes]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_ClientesFrecuentes]
as
begin
	Select h.Dni,ua.Nombre,ua.Apellidos,count(*) as Cantidad
	from Alquiler a inner join Huesped h on(a.Dni=h.Dni)
	inner join UserAccount ua on(h.UserName=ua.UserName)
	Group by h.Dni, ua.Nombre,ua.Apellidos
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CrearCuenta]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CrearCuenta]
(
	@prmstrEmail nvarchar(50),
	@prmstrUserName nvarchar(50)
)
as
begin
	Insert Into Cuenta(Email,FechaCreacion,UserName)
	Values
	(
		@prmstrEmail,
		convert(date,getdate(),11),
		@prmstrUserName)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CrearUser]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC	[dbo].[SP_CrearUser]
(
	@prmstrUserName nvarchar(50),
	@prmstrFechaNacimiento datetime,
	@prmstrNombre nvarchar(50),
	@prmstrApellidos nvarchar(50)
)
as
begin
	Insert Into UserAccount(UserName,FechaNacimiento,Nombre,Apellidos)
	Values
	(
		@prmstrUserName,
		@prmstrFechaNacimiento,
		@prmstrNombre,
		@prmstrApellidos
	)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EditarHabitacion]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sp_EditarHabitacion]
(
	@prmstrNumeroHabitacion varchar(4),
	@prmintTipodehabitacionID int
)
as
begin
update Habitacion set 
TipodehabitacionID = @prmintTipodehabitacionID
where NumeroHabitacion = @prmstrNumeroHabitacion

end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EditarServicio]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_EditarServicio]
(
	@prmintServicioadicionalID int,
	@prmstrNombreServicio varchar(50)
)
as
begin
	Update Servicioadicional
	Set NombreServicio = @prmstrNombreServicio
	Where ServicioadicionalID = @prmintServicioadicionalID
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EditarTipoH]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_EditarTipoH]
(
	@prmintCapacidad int,
	@prmdoubleCostoadicional decimal(6,2),
	@prmstrNombretipodehabitacion varchar(50),
	@prmintNumerodecamas int,
	@prmdoublePrecio decimal(6,2),
	@prmintTipodehabitacionID int
)
as
begin
	Update Tipodehabitacion
	set
	Capacidad = @prmintCapacidad,
	Costoadicional = @prmdoubleCostoadicional,
	Nombretipodehabitacion = @prmstrNombretipodehabitacion,
	Numerodecamas = @prmintNumerodecamas,
	Precio = @prmdoublePrecio
	where TipodehabitacionID = @prmintTipodehabitacionID
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EliminarCuenta]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_EliminarCuenta]
(
	@prmstrUserName varchar(50)
)
as
begin
	Delete from Cuenta
	where UserName = @prmstrUserName
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EliminarHabitacion]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sp_EliminarHabitacion]
(
	@prmstrNumeroHabitacion varchar(4)
)
as
begin
	Delete from Habitacion
	where NumeroHabitacion = @prmstrNumeroHabitacion
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EliminarHuesped]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_EliminarHuesped]
(
	@prmstrDni char(8)
)
as
begin
	Delete from Huesped
	where Dni = @prmstrDni
end
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarReserva]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SP_EliminarReserva]
(
	@prmintReservaID int
)
as
begin
	Delete from Reserva
	Where ReservaID = @prmintReservaID
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EliminarServicio]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_EliminarServicio]
(
	@prmintServicioadicionalID int
)
as
begin
	Delete from Servicioadicional
	Where ServicioadicionalID = @prmintServicioadicionalID
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EliminarServicios]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_EliminarServicios]
(
	@prmintTipodehabitacionID int,
	@prmintServicioadicionalID int
)
as
begin
	Delete from ServAdicionalTipoH
	where TipodehabitacionID = @prmintTipodehabitacionID and ServicioadicionalID = @prmintServicioadicionalID
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EliminarTipoH]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_EliminarTipoH]
(
	@prmintTipodehabitacionID int
)
as
begin
	Delete from Tipodehabitacion
	Where TipodehabitacionID = @prmintTipodehabitacionID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarUser]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_EliminarUser]
(
	@prmstrUserName nvarchar(50)
)
as
begin
	Delete from UserAccount
	Where UserName = @prmstrUserName
end
GO
/****** Object:  StoredProcedure [dbo].[SP_EnlazarHashCuenta]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_EnlazarHashCuenta]
(
	@prmstrEmail nvarchar(50),
	@prmstrHashCode nvarchar(50)
)
as
begin
	Insert into AccountHashTable(HashCode,Email,Activa)
	Values
	(
		@prmstrHashCode,
		@prmstrEmail,
		1
	)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GenerarCompAlquiler]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_GenerarCompAlquiler]
(
	@prmintAlquilerID int,
	@prmdoubleMonto decimal(18,0),
	@prmintserie int
)
as
begin
	Insert Into Comprobantepagoalquiler(ComprobantepagoalquilerID,Fechadeemision,AlquilerID,Ruc,Monto)
	Values
	(
		@prmintserie,
		convert(varchar, getdate(), 111),
		@prmintAlquilerID,
		'RUC00000001',
		@prmdoubleMonto
	)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GenerarCompReserva]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_GenerarCompReserva]
(
	@prmintReservaID int,
	@prmdoubleMonto decimal(18,0),
	@prmintserie int
)
as
begin
	Insert Into Comprobantepagoreserva(ComprobantepagoreservaID,Fechadeemision,ReservaID,Ruc,Monto)
	Values
	(
		@prmintserie,
		convert(varchar, getdate(), 111),
		@prmintReservaID,
		'RUC00000001',
		@prmdoubleMonto
	)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_HabitacionesDisponibles]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_HabitacionesDisponibles]
(
	@prmintCantidadPersonas int
)
as
begin
	Select * from Habitacion h inner join Tipodehabitacion th on(h.TipodehabitacionID = th.TipodehabitacionID)
	inner join Reserva r on(h.NumeroHabitacion = r.NumeroHabitacion)
	where th.Capacidad+1 > @prmintCantidadPersonas And r.Activa = 1
	order by r.FechaSalida desc
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_HabitacionesDisponiblesAlquiler]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_HabitacionesDisponiblesAlquiler]
(
	@fechaIngreso date,
	@prmintCantidadPersonas int
)
as
begin
	Select * from Habitacion h inner join Tipodehabitacion th on(h.TipodehabitacionID = th.TipodehabitacionID)
	inner join Alquiler a on(h.NumeroHabitacion = a.NumeroHabitacion)
	where  a.Fechadeingreso = @fechaIngreso and th.Capacidad+1 > @prmintCantidadPersonas
end
GO
/****** Object:  StoredProcedure [dbo].[SP_HabitacionesMasOcupadas]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_HabitacionesMasOcupadas]
as
begin
	Select h.NumeroHabitacion,th.Nombretipodehabitacion,count(*) as Cantidad
	From Alquiler a inner join Habitacion h on(a.NumeroHabitacion = h.NumeroHabitacion)
	inner join Tipodehabitacion th on(h.TipodehabitacionID=th.TipodehabitacionID)
	Group By h.NumeroHabitacion,th.Nombretipodehabitacion
end
GO
/****** Object:  StoredProcedure [dbo].[SP_IngresosAlquiler]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_IngresosAlquiler]
as
begin
	Select cr.Fechadeemision,Sum(cr.Monto) as Cantidad
	From Comprobantepagoalquiler cr
	Group By cr.Fechadeemision
end
GO
/****** Object:  StoredProcedure [dbo].[SP_IngresosReserva]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_IngresosReserva]
as
begin
	Select cr.Fechadeemision,Sum(cr.Monto) as Cantidad
	From Comprobantepagoreserva cr
	Group By cr.Fechadeemision
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertarHabitacion]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sp_InsertarHabitacion]
(
	@prmstrNumeroHabitacion varchar(4),
	@prmintTipodehabitacionID int
)
as
begin
Insert into Habitacion(NumeroHabitacion,TipodehabitacionID)
values
(
	@prmstrNumeroHabitacion,
	@prmintTipodehabitacionID
)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertarServicios]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_InsertarServicios]
(
	@prmstrNombreServicio varchar(50)
)
as
begin
	Insert into Servicioadicional(NombreServicio)
	Values(@prmstrNombreServicio)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertarTipoH]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_InsertarTipoH]
(
	@prmintCapacidad int,
	@prmdoubleCostoadicional decimal(6,2),
	@prmstrNombretipodehabitacion varchar(50),
	@prmintNumerodecamas int,
	@prmdoublePrecio decimal(6,2)
)
as
begin
	Insert into Tipodehabitacion(Capacidad,Costoadicional,Nombretipodehabitacion,Numerodecamas,Precio,TipodehabitacionID)
	Values
	(
		@prmintCapacidad,
		@prmdoubleCostoadicional,
		@prmstrNombretipodehabitacion,
		@prmintNumerodecamas,
		@prmdoublePrecio,
		NEXT VALUE FOR TipodehabitacionID
	)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_ListarHabitaciones]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_ListarHabitaciones]
as
begin
Select	h.NumeroHabitacion, th.Nombretipodehabitacion, 
		th.Numerodecamas,th.Precio,th.Capacidad,th.Costoadicional,th.TipodehabitacionID
from Habitacion h inner join Tipodehabitacion th on(h.TipodehabitacionID=th.TipodehabitacionID)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_ListarHuesped]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_ListarHuesped]
as
begin
Select Dni, Nombre, Apellidos, CONVERT(VARCHAR(10), Fechadenacimiento, 111) as [Fechadenacimiento], c.NombreUsuario,c.Email
from Huesped h inner join Cuenta c on(h.NombreUsuario = c.NombreUsuario)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_ListarServicios]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_ListarServicios]
as
begin
Select * from Servicioadicional
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_ListarTiposH]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_ListarTiposH]
as
begin
Select *
from Tipodehabitacion
end
GO
/****** Object:  StoredProcedure [dbo].[SP_MisReservas]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[SP_MisReservas]
(
	@prmstrDni	char(8)
)
as
begin
	Select *
	from Reserva rev inner join Huesped hu on(rev.Dni=hu.Dni)
	inner join Habitacion h on(rev.NumeroHabitacion=h.NumeroHabitacion)
	inner join Tipodehabitacion th on(h.TipodehabitacionID=th.TipodehabitacionID)
	where rev.Dni = @prmstrDni and DATEDIFF (YEAR,convert(varchar, getdate(), 111),rev.FechaIngreso) >= 0
	and DATEDIFF (MONTH,convert(varchar, getdate(), 111),rev.FechaIngreso) >= 0
	and DATEDIFF (DAY,convert(varchar, getdate(), 111),rev.FechaIngreso) >= 0
end
GO
/****** Object:  StoredProcedure [dbo].[SP_NewHash]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_NewHash]
(
	@prmstrHashCode nvarchar(350)
)
as
begin
	Insert Into Hashtable(HashCode)
	Values(@prmstrHashCode)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_NewPassword]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_NewPassword]
(
	/*Password original*/
	@prmstrPasswordstring nvarchar(350),
	/*Hash*/
	@prmstrHashCode nvarchar(350)
)
as
begin
	Insert Into PasswordAccount(Passwordstring,HashCode)
	Values
	(
		@prmstrPasswordstring,
		@prmstrHashCode
	)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_ObtenerServicios]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_ObtenerServicios]
(
	@prmintTipodehabitacionID int
)
as
begin
Select sa.NombreServicio,sa.ServicioadicionalID
from Tipodehabitacion th inner join ServAdicionalTipoH sath on(th.TipodehabitacionID=sath.TipodehabitacionID)
inner join Servicioadicional sa on(sa.ServicioadicionalID=sath.ServicioadicionalID)
where th.TipodehabitacionID=@prmintTipodehabitacionID
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_RealizarAlquiler]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_RealizarAlquiler]
(
	@prmintAlquilerID int,
	@prmintCantidadAdultos int,
	@prmintCantidadKids int,
	@prmstrFechadeingreso varchar(50),
	@prmstrFechadesalida varchar(50),
	@prmstrDni	char(8),
	@prmstrNumeroHabitacion varchar(4)
)
as
begin
	Insert into Alquiler(AlquilerID,CantidadAdultos,CantidadKids,Fechadeingreso,Fechadesalida,Dni,NumeroHabitacion)
	Values
	(
		@prmintAlquilerID,
		@prmintCantidadAdultos,
		@prmintCantidadKids,
		@prmstrFechadeingreso,
		@prmstrFechadesalida,
		@prmstrDni,
		@prmstrNumeroHabitacion
	)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_RealizarReserva]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_RealizarReserva]
(
	@prmintReservaID int,
	@prmintCantidadAdultos int,
	@prmintCantidadKids int,
	@prmstrFechadeingreso varchar(50),
	@prmstrFechadesalida varchar(50),
	@prmstrFechaReserva varchar(50),
	@prmstrDni	char(8),
	@prmstrNumeroHabitacion varchar(4)
)
as
begin
	Insert into Reserva(ReservaID,Fechadereserva,CantidadAdultos,CantidadKids,FechaIngreso,FechaSalida,Dni,NumeroHabitacion,Activa)
	Values
	(
		@prmintReservaID,
		@prmstrFechaReserva,
		@prmintCantidadAdultos,
		@prmintCantidadKids,
		@prmstrFechadeingreso,
		@prmstrFechadesalida,
		@prmstrDni,
		@prmstrNumeroHabitacion,
		1
	)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_RegistrarHuesped]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_RegistrarHuesped]
(
	@prmstrDni char(8),
	@prmstrUserName nvarchar(50)
)
as
begin
Insert into Huesped(Dni,UserName)
values
(
	@prmstrDni,
	@prmstrUserName
)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TipoHServicio]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_TipoHServicio]
(
	@prmintTipodehabitacionID int,
	@prmintServicioadicionalID int
)
as
begin
	Insert into ServAdicionalTipoH(TipodehabitacionID,ServicioadicionalID)
	values(@prmintTipodehabitacionID,@prmintServicioadicionalID)
end
GO
/****** Object:  Trigger [dbo].[TG_INGRESAR_HABITACION]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TG_INGRESAR_HABITACION]
ON [dbo].[Habitacion]
AFTER INSERT 
AS
BEGIN
	
	DECLARE @NEWCOD AS INT = (SELECT inserted.TipodehabitacionID FROM inserted)

	DECLARE @NEWNUM AS INT = (SELECT inserted.NumeroHabitacion FROM inserted)

	IF	@NEWCOD = 1 
		Insert into Alquiler(CantidadAdultos,CantidadKids,Fechadeingreso,Fechadesalida,Dni,NumeroHabitacion)
		Values(1,0,convert(date, getdate(), 11),DATEADD(DAY,1, convert(date, getdate(), 11)) ,'71778079',@NEWNUM)
	IF	@NEWCOD = 2
		Insert into Alquiler(CantidadAdultos,CantidadKids,Fechadeingreso,Fechadesalida,Dni,NumeroHabitacion)
		Values(2,0,convert(date, getdate(), 11),DATEADD(DAY,1, convert(date, getdate(), 11)) ,'71778079',@NEWNUM)
	IF	@NEWCOD = 3
		Insert into Alquiler(CantidadAdultos,CantidadKids,Fechadeingreso,Fechadesalida,Dni,NumeroHabitacion)
		Values(2,0,convert(date, getdate(), 11),DATEADD(DAY,1, convert(date, getdate(), 11)) ,'71778079',@NEWNUM)
	IF	@NEWCOD = 4
		Insert into Alquiler(CantidadAdultos,CantidadKids,Fechadeingreso,Fechadesalida,Dni,NumeroHabitacion)
		Values(3,0,convert(date, getdate(), 11),DATEADD(DAY,1, convert(date, getdate(), 11)) ,'71778079',@NEWNUM)
	IF	@NEWCOD = 5
		Insert into Alquiler(CantidadAdultos,CantidadKids,Fechadeingreso,Fechadesalida,Dni,NumeroHabitacion)
		Values(4,0,convert(date, getdate(), 11),DATEADD(DAY,1, convert(date, getdate(), 11)) ,'71778079',@NEWNUM)
END
GO
ALTER TABLE [dbo].[Habitacion] ENABLE TRIGGER [TG_INGRESAR_HABITACION]
GO
/****** Object:  Trigger [dbo].[Tg_EliminarTipoH]    Script Date: 2/07/2019 15:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Tg_EliminarTipoH]
ON [dbo].[Tipodehabitacion]
Instead of DELETE
AS
BEGIN
	IF Exists (Select TipodehabitacionID From ServAdicionalTipoH where TipodehabitacionID = (SELECT TipodehabitacionID FROM deleted) )
	Begin
		DELETE FROM ServAdicionalTipoH WHERE TipodehabitacionID = (SELECT TipodehabitacionID FROM deleted) 
		Delete from Tipodehabitacion
		Where TipodehabitacionID = (SELECT TipodehabitacionID FROM deleted) 
	End
	Else begin
		Delete from Tipodehabitacion
		Where TipodehabitacionID = (SELECT TipodehabitacionID FROM deleted) 
	end
END
GO
ALTER TABLE [dbo].[Tipodehabitacion] ENABLE TRIGGER [Tg_EliminarTipoH]
GO
USE [master]
GO
ALTER DATABASE [Proyecto_DIARS_ISIS] SET  READ_WRITE 
GO
