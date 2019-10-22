/****** Object:  Table [dbo].[Procederes]    Script Date: 18/7/2017 11:44:04 ******/
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
SET IDENTITY_INSERT [dbo].[Procederes] ON 

INSERT [dbo].[Procederes] ([ID], [Nombre], [Precio], [Comision_PorVenta], [Id_Consulta]) VALUES (1, N'Desintoxicacion', 30, 28, NULL)
INSERT [dbo].[Procederes] ([ID], [Nombre], [Precio], [Comision_PorVenta], [Id_Consulta]) VALUES (2, N'Suero', 25, 28, NULL)
INSERT [dbo].[Procederes] ([ID], [Nombre], [Precio], [Comision_PorVenta], [Id_Consulta]) VALUES (5, N'VaryZapper', 15, 28, NULL)
SET IDENTITY_INSERT [dbo].[Procederes] OFF
