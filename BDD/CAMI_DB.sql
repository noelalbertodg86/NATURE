USE [master]
GO
/****** Object:  Database [CAMI]    Script Date: 6/7/2017 12:07:42 ******/
CREATE DATABASE [CAMI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CAMI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CAMI.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CAMI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CAMI_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CAMI] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CAMI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CAMI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CAMI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CAMI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CAMI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CAMI] SET ARITHABORT OFF 
GO
ALTER DATABASE [CAMI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CAMI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CAMI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CAMI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CAMI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CAMI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CAMI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CAMI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CAMI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CAMI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CAMI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CAMI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CAMI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CAMI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CAMI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CAMI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CAMI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CAMI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CAMI] SET  MULTI_USER 
GO
ALTER DATABASE [CAMI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CAMI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CAMI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CAMI] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CAMI] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CAMI]
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Consulta] [int] NULL,
	[Numero_Factura] [nvarchar](255) NULL,
	[Observaciones] [nvarchar](max) NULL,
	[Fecha] [datetime] NULL,
	[Id_Usuario] [int] NULL,
	[PrecioTotalConsulta] [float] NULL,
	[Historia_Clinica] [nvarchar](max) NULL,
 CONSTRAINT [PK_Consulta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Precio] [float] NULL,
	[Comision_PorVenta] [float] NULL,
 CONSTRAINT [PK_Medicamentos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medicamentos_Consulta]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamentos_Consulta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Id_Consulta] [int] NULL,
	[Id_Medicamento] [int] NULL,
 CONSTRAINT [PK_Medicamentos_Consulta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[Cedula] [nvarchar](255) NOT NULL,
	[Nombres] [nvarchar](255) NULL,
	[Apellidos] [nvarchar](255) NULL,
	[Telefono] [nvarchar](255) NULL,
	[Edad] [int] NULL,
	[Sexo] [nvarchar](1) NULL,
	[Id_Consulta] [int] NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente_Agenda]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente_Agenda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Observacion] [nvarchar](255) NULL,
	[Fecha_Reconsulta] [datetime] NULL,
	[Fecha_Notificacion] [datetime] NULL,
	[Id_Paciente] [nvarchar](255) NULL,
 CONSTRAINT [PK_Paciente_Agenda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente_Consulta]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente_Consulta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Id_Paciente] [nvarchar](255) NOT NULL,
	[Id_Consulta] [int] NOT NULL,
 CONSTRAINT [PK_Paciente_Consulta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Procederes]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procederes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Precio] [float] NULL,
	[Comision_PorVenta] [float] NULL,
	[Id_Consulta] [int] NULL,
 CONSTRAINT [PK_Procederes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Procederes_Consulta]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procederes_Consulta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Procederes] [int] NOT NULL,
	[Id_Consulta] [int] NOT NULL,
 CONSTRAINT [PK_Procederes_Consulta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[test]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aa] [nchar](10) NULL,
 CONSTRAINT [PK_test] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Consulta]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Consulta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Precio] [float] NULL,
	[Comision] [float] NULL,
 CONSTRAINT [PK_Tipo_Consulta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](255) NULL,
	[Nombres] [nvarchar](255) NULL,
	[Apellidos] [nvarchar](255) NULL,
	[Usuario] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Edad] [int] NULL,
	[Sexo] [nvarchar](1) NULL,
	[Cedula] [nvarchar](255) NULL,
	[Pasaporte] [nvarchar](255) NULL,
	[Mail] [nvarchar](255) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Consulta_View]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[Consulta_View]
AS
SELECT (select Nombre from Tipo_Consulta where ID = dbo.Consulta.Tipo_Consulta) as Tipo_Consulta ,dbo.Consulta.Numero_Factura, 
dbo.Consulta.Fecha, dbo.Consulta.PrecioTotalConsulta, dbo.Consulta.Historia_Clinica, 
(dbo.Paciente.Nombres +' '+ dbo.Paciente.Apellidos) as Paciente, dbo.Paciente.Cedula as Paciente_Cedula,
 dbo.Paciente.Telefono as Paciente_Telefono, dbo.Paciente.Edad as Paciente_Edad, 
--dbo.Procederes.Nombre AS Expr1, dbo.Procederes.Precio
(dbo.Usuarios.Titulo  +': '+dbo.Usuarios.Nombres+' ' +dbo.Usuarios.Apellidos) as Usuario,
dbo.Consulta.ID as IdentificadorConsulta

FROM  dbo.Consulta INNER JOIN
dbo.Paciente_Consulta ON dbo.Consulta.ID = dbo.Paciente_Consulta.Id_Consulta INNER JOIN
dbo.Paciente ON dbo.Paciente_Consulta.Id_Paciente = dbo.Paciente.Cedula INNER JOIN
dbo.Usuarios ON dbo.Consulta.Id_Usuario = dbo.Usuarios.ID





GO
SET IDENTITY_INSERT [dbo].[Consulta] ON 

INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (1, 1, N'11111111111', N'', CAST(N'2017-07-03 00:00:12.933' AS DateTime), 1, 1, N'Motivo Consulta:
Dolor de garganta
HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (2, 1, N'1122222', N'', CAST(N'2017-07-03 00:02:21.993' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (3, 1, N'333333333333', N'', CAST(N'2017-07-03 00:03:17.160' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (4, 1, N'55555', N'', CAST(N'2017-07-03 00:23:14.687' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (5, 1, N'66666666666666', N'', CAST(N'2017-07-03 00:28:27.473' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (6, 1, N'66666', N'', CAST(N'2017-07-03 00:35:24.647' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (7, 1, N'121212', N'', CAST(N'2017-07-03 00:45:16.120' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (8, 1, N'131313', N'', CAST(N'2017-07-03 00:49:49.900' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (9, 1, N'141415', N'', CAST(N'2017-07-03 00:52:54.423' AS DateTime), 1, 1, N'Motivo Consulta:

HEA: cefalea grado 1


APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (10, 1, N'', N'', CAST(N'2017-07-03 23:04:04.370' AS DateTime), 1, 1, N'Motivo Consulta:
jguigitiu
HEA:guui

APP:fyfvyhjl

APF:ogljl

Habitos Tóxicos: (HT):c gjvj hv

Factores Riesgo (FR):.mÑLm

Interrogatorio:igyg-j
kjggj
bkjkhl
kjhink-

Examen Físico (EF):
mvyfhk.,
yutygknm
jhvyg

Impresión Diagnostica (ID): lkuhv,jf

Conducta a Seguir (CAS):jgkkn.
lkhij+nkjb
jhb
')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (11, 1, N'88888', N'', CAST(N'2017-07-03 23:30:11.743' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (12, 1, N'7777777', N'', CAST(N'2017-07-03 23:32:40.280' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (13, 1, N'7474747', N'', CAST(N'2017-07-03 23:56:23.223' AS DateTime), 1, 1, N'Motivo Consulta:
4564564kjhrdmbbdxc
HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (14, 1, N'7878787', N'', CAST(N'2017-07-04 00:08:03.767' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (1010, 1, N'789456', N'', CAST(N'2017-07-05 00:36:05.777' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (1011, 1, N'123321', N'', CAST(N'2017-07-05 00:37:24.093' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (1012, 1, N'147', N'', CAST(N'2017-07-05 00:41:14.067' AS DateTime), 1, 1, N'Motivo Consulta: Julio no jodas mas

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (1013, 1, N'321', N'', CAST(N'2017-07-05 21:07:17.390' AS DateTime), 1, 1, N'Motivo Consulta:
Probando mi sistema
HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (1014, 1, N'369', N'', CAST(N'2017-07-05 21:17:38.877' AS DateTime), 1, 1, N'Motivo Consulta:
bla bla
HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (1015, 1, N'654', N'', CAST(N'2017-07-05 21:22:15.630' AS DateTime), 1, 1, N'Motivo Consulta:
prueba 654
HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (1016, 1, N'987456', N'', CAST(N'2017-07-05 21:28:00.057' AS DateTime), 1, 1, N'Motivo Consulta:
prueba 123
HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (1017, 1, N'1234', N'', CAST(N'2017-07-05 21:35:02.363' AS DateTime), 1, 1, N'Motivo Consulta: cefalea

HEA:hcklfe

APP:reg

APF:rehywy

Habitos Tóxicos: (HT):n

Factores Riesgo (FR):n

Interrogatorio: tjerop

Examen Físico (EF):knteñ

Impresión Diagnostica (ID):oietotr

Conducta a Seguir (CAS):pjoqtewpot')
INSERT [dbo].[Consulta] ([ID], [Tipo_Consulta], [Numero_Factura], [Observaciones], [Fecha], [Id_Usuario], [PrecioTotalConsulta], [Historia_Clinica]) VALUES (1018, 1, N'', N'', CAST(N'2017-07-05 21:43:28.687' AS DateTime), 1, 1, N'Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):')
SET IDENTITY_INSERT [dbo].[Consulta] OFF
SET IDENTITY_INSERT [dbo].[Medicamentos] ON 

INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (1, N'BIO 2 ELIXIR 450 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (2, N'BIOGASTRIN JARABE 450 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (3, N'BRONQUIOSAN PROPOLEO JARABE 210 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (4, N'CALCIO PRONAVIT POLVO X 300 G', 20, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (5, N'CEREBROSAN JARABE 450 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (6, N'CONTROL TRIG-C ELIXIR 450 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (7, N'DIABE 5 ELIXIR 450 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (8, N'ELIXIR SILUET SBELTY X 450 ML ', 12, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (9, N'FLORES PECTORALES GOTERO 20 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (10, N'HEPAT CLAEANER JARABE 450 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (11, N'HONGOLITICO SPRAY 130 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (12, N'KIT LIMPIEZA FORMULA 2A Y B X 1 UND', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (13, N'KIT NERVO STRESS 1 UNIDAD', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (14, N'PRONAVIT SAW PALMETTO 60 CAP', 14, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (15, N'PROSTA CLEANER ELIXIR 450 ML ', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (16, N'RABANO JARABE 450 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (17, N'RENAL CLEANER ELIXIR 450 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (18, N'SMILAX ELIXIR 450 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (19, N'THERAFEM ELIXIR 450 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (20, N'UNGÜENTO MATICO X DOCENA 50 G', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (21, N'VALERIANA GOTERO 60 ML', 5, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (22, N'VITA PROPOLEO ECONOMICO GOTERO 20 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (23, N'ZARZATONICO SOLUCION 500 ML', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (24, N'DESDOFEM HIGIENE INTIMA', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (25, N'BIOCLOM', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (26, N'SALDOL GEL 150G', 10, 0)
INSERT [dbo].[Medicamentos] ([ID], [Nombre], [Precio], [Comision_PorVenta]) VALUES (27, N'FORMULA 1', 10, 0)
SET IDENTITY_INSERT [dbo].[Medicamentos] OFF
SET IDENTITY_INSERT [dbo].[Medicamentos_Consulta] ON 

INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (1, 7, 3)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (2, 7, 7)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (3, 7, 8)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (4, 8, 1)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (5, 9, 1)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (6, 9, 5)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (7, 1013, 2)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (8, 1014, 5)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (9, 1014, 7)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (10, 1015, 5)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (11, 1015, 7)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (12, 1016, 6)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (13, 1016, 4)
INSERT [dbo].[Medicamentos_Consulta] ([ID], [Id_Consulta], [Id_Medicamento]) VALUES (14, 1018, 1)
SET IDENTITY_INSERT [dbo].[Medicamentos_Consulta] OFF
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'123', N'Pepe', N'Perez', N'2441000', 58, N'M', NULL)
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'1758052553', N'julio ', N'garcia', N'1654', 21, N'm', NULL)
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'1758052573', N'Noel Alberto', N'Diaz Garcia', N'998810824', 31, N'M', NULL)
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'456', N'Lola', N'La O', N'147', 45, N'F', NULL)
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'789456', N'Juan', N'Garcia', N'465498751321', 72, N'M', NULL)
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'8805122641', N'lianny', N'cespedes', N'999083065', 29, N'f', NULL)
SET IDENTITY_INSERT [dbo].[Paciente_Consulta] ON 

INSERT [dbo].[Paciente_Consulta] ([ID], [Id_Paciente], [Id_Consulta]) VALUES (1, N'1758052573', 9)
INSERT [dbo].[Paciente_Consulta] ([ID], [Id_Paciente], [Id_Consulta]) VALUES (2, N'1758052553', 1)
INSERT [dbo].[Paciente_Consulta] ([ID], [Id_Paciente], [Id_Consulta]) VALUES (5, N'1758052573', 14)
INSERT [dbo].[Paciente_Consulta] ([ID], [Id_Paciente], [Id_Consulta]) VALUES (1002, N'1758052573', 1011)
INSERT [dbo].[Paciente_Consulta] ([ID], [Id_Paciente], [Id_Consulta]) VALUES (1003, N'1758052553', 1012)
INSERT [dbo].[Paciente_Consulta] ([ID], [Id_Paciente], [Id_Consulta]) VALUES (1004, N'1758052573', 1013)
INSERT [dbo].[Paciente_Consulta] ([ID], [Id_Paciente], [Id_Consulta]) VALUES (1005, N'1758052553', 1014)
INSERT [dbo].[Paciente_Consulta] ([ID], [Id_Paciente], [Id_Consulta]) VALUES (1006, N'1758052553', 1015)
INSERT [dbo].[Paciente_Consulta] ([ID], [Id_Paciente], [Id_Consulta]) VALUES (1007, N'123', 1016)
INSERT [dbo].[Paciente_Consulta] ([ID], [Id_Paciente], [Id_Consulta]) VALUES (1008, N'8805122641', 1018)
SET IDENTITY_INSERT [dbo].[Paciente_Consulta] OFF
SET IDENTITY_INSERT [dbo].[Procederes] ON 

INSERT [dbo].[Procederes] ([ID], [Nombre], [Precio], [Comision_PorVenta], [Id_Consulta]) VALUES (1, N'Desintoxicacion', 30, 28, NULL)
INSERT [dbo].[Procederes] ([ID], [Nombre], [Precio], [Comision_PorVenta], [Id_Consulta]) VALUES (2, N'Suero', 25, 28, NULL)
INSERT [dbo].[Procederes] ([ID], [Nombre], [Precio], [Comision_PorVenta], [Id_Consulta]) VALUES (5, N'VaryZapper', 15, 28, NULL)
SET IDENTITY_INSERT [dbo].[Procederes] OFF
SET IDENTITY_INSERT [dbo].[Procederes_Consulta] ON 

INSERT [dbo].[Procederes_Consulta] ([Id], [Id_Procederes], [Id_Consulta]) VALUES (2, 1, 9)
INSERT [dbo].[Procederes_Consulta] ([Id], [Id_Procederes], [Id_Consulta]) VALUES (3, 1, 1)
INSERT [dbo].[Procederes_Consulta] ([Id], [Id_Procederes], [Id_Consulta]) VALUES (4, 2, 1)
INSERT [dbo].[Procederes_Consulta] ([Id], [Id_Procederes], [Id_Consulta]) VALUES (5, 1, 12)
INSERT [dbo].[Procederes_Consulta] ([Id], [Id_Procederes], [Id_Consulta]) VALUES (1003, 1, 1013)
INSERT [dbo].[Procederes_Consulta] ([Id], [Id_Procederes], [Id_Consulta]) VALUES (1004, 1, 1014)
INSERT [dbo].[Procederes_Consulta] ([Id], [Id_Procederes], [Id_Consulta]) VALUES (1005, 1, 1015)
INSERT [dbo].[Procederes_Consulta] ([Id], [Id_Procederes], [Id_Consulta]) VALUES (1006, 1, 1016)
INSERT [dbo].[Procederes_Consulta] ([Id], [Id_Procederes], [Id_Consulta]) VALUES (1007, 1, 1018)
SET IDENTITY_INSERT [dbo].[Procederes_Consulta] OFF
SET IDENTITY_INSERT [dbo].[Tipo_Consulta] ON 

INSERT [dbo].[Tipo_Consulta] ([ID], [Nombre], [Precio], [Comision]) VALUES (1, N'Consulta', 20, 28)
INSERT [dbo].[Tipo_Consulta] ([ID], [Nombre], [Precio], [Comision]) VALUES (2, N'Reconsulta', 15, 20)
SET IDENTITY_INSERT [dbo].[Tipo_Consulta] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([ID], [Titulo], [Nombres], [Apellidos], [Usuario], [Password], [Edad], [Sexo], [Cedula], [Pasaporte], [Mail]) VALUES (1, N'Sr', N'Noel Alberto', N'Diaz Garcia', N'noel.diaz', N'1234567', 31, N'M', N'1758052573', NULL, N'noelalbertodg86@gmail.com')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
ALTER TABLE [dbo].[Medicamentos_Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Medicamentos_Consulta_Consulta] FOREIGN KEY([Id_Consulta])
REFERENCES [dbo].[Consulta] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Medicamentos_Consulta] CHECK CONSTRAINT [FK_Medicamentos_Consulta_Consulta]
GO
ALTER TABLE [dbo].[Medicamentos_Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Medicamentos_Consulta_Medicamentos] FOREIGN KEY([Id_Medicamento])
REFERENCES [dbo].[Medicamentos] ([ID])
GO
ALTER TABLE [dbo].[Medicamentos_Consulta] CHECK CONSTRAINT [FK_Medicamentos_Consulta_Medicamentos]
GO
ALTER TABLE [dbo].[Paciente_Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Agenda_Paciente] FOREIGN KEY([Id_Paciente])
REFERENCES [dbo].[Paciente] ([Cedula])
GO
ALTER TABLE [dbo].[Paciente_Agenda] CHECK CONSTRAINT [FK_Paciente_Agenda_Paciente]
GO
ALTER TABLE [dbo].[Paciente_Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Consulta_Consulta] FOREIGN KEY([Id_Consulta])
REFERENCES [dbo].[Consulta] ([ID])
GO
ALTER TABLE [dbo].[Paciente_Consulta] CHECK CONSTRAINT [FK_Paciente_Consulta_Consulta]
GO
ALTER TABLE [dbo].[Paciente_Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Consulta_Paciente] FOREIGN KEY([Id_Paciente])
REFERENCES [dbo].[Paciente] ([Cedula])
GO
ALTER TABLE [dbo].[Paciente_Consulta] CHECK CONSTRAINT [FK_Paciente_Consulta_Paciente]
GO
ALTER TABLE [dbo].[Procederes_Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Procederes_Consulta_Consulta] FOREIGN KEY([Id_Consulta])
REFERENCES [dbo].[Consulta] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Procederes_Consulta] CHECK CONSTRAINT [FK_Procederes_Consulta_Consulta]
GO
ALTER TABLE [dbo].[Procederes_Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Procederes_Consulta_Procederes] FOREIGN KEY([Id_Procederes])
REFERENCES [dbo].[Procederes] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Procederes_Consulta] CHECK CONSTRAINT [FK_Procederes_Consulta_Procederes]
GO
/****** Object:  StoredProcedure [dbo].[BuscarMedicamentosPorConsulta]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarMedicamentosPorConsulta] @IdConsulta int
AS
BEGIN
  Select * from Medicamentos_Consulta mc
  inner join Medicamentos m on mc.Id_Medicamento = m.ID
  where mc.Id_Consulta = @IdConsulta
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarProcederesPorConsulta]    Script Date: 6/7/2017 12:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[BuscarProcederesPorConsulta] @IdConsulta int
AS
BEGIN
  Select * from Procederes_Consulta pc
  inner join Procederes p on pc.Id_Procederes = p.ID
  where pc.Id_Consulta = @IdConsulta
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[7] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Consulta"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 211
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Medicamentos_Consulta"
            Begin Extent = 
               Top = 6
               Left = 272
               Bottom = 119
               Right = 450
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Paciente_Consulta"
            Begin Extent = 
               Top = 6
               Left = 488
               Bottom = 119
               Right = 658
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Procederes_Consulta"
            Begin Extent = 
               Top = 6
               Left = 696
               Bottom = 119
               Right = 866
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tipo_Consulta"
            Begin Extent = 
               Top = 120
               Left = 272
               Bottom = 250
               Right = 442
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Paciente"
            Begin Extent = 
               Top = 120
               Left = 480
               Bottom = 250
               Right = 650
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Procederes"
            Begin Extent = 
               Top = 120
               Left = 688
               Bottom = 250
               Right = 881
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Consulta_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'           End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Usuarios"
            Begin Extent = 
               Top = 216
               Left = 38
               Bottom = 346
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Consulta_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Consulta_View'
GO
USE [master]
GO
ALTER DATABASE [CAMI] SET  READ_WRITE 
GO
