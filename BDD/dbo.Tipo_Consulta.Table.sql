/****** Object:  Table [dbo].[Tipo_Consulta]    Script Date: 18/7/2017 11:44:04 ******/
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
SET IDENTITY_INSERT [dbo].[Tipo_Consulta] ON 

INSERT [dbo].[Tipo_Consulta] ([ID], [Nombre], [Precio], [Comision]) VALUES (1, N'Consulta', 20, 28)
INSERT [dbo].[Tipo_Consulta] ([ID], [Nombre], [Precio], [Comision]) VALUES (2, N'Reconsulta', 15, 20)
SET IDENTITY_INSERT [dbo].[Tipo_Consulta] OFF
