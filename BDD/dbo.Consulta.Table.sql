/****** Object:  Table [dbo].[Consulta]    Script Date: 18/7/2017 11:44:04 ******/
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
