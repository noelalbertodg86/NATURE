/****** Object:  Table [dbo].[Medicamentos]    Script Date: 18/7/2017 11:44:04 ******/
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
