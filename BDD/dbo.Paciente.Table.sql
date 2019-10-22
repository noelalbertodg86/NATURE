/****** Object:  Table [dbo].[Paciente]    Script Date: 18/7/2017 11:44:04 ******/
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
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'123', N'Pepe', N'Perez', N'2441000', 58, N'M', NULL)
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'1758052553', N'julio ', N'garcia', N'1654', 21, N'm', NULL)
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'1758052573', N'Noel Alberto', N'Diaz Garcia', N'998810824', 31, N'M', NULL)
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'456', N'Lola', N'La O', N'147', 45, N'F', NULL)
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'789456', N'Juan', N'Garcia', N'465498751321', 72, N'M', NULL)
INSERT [dbo].[Paciente] ([Cedula], [Nombres], [Apellidos], [Telefono], [Edad], [Sexo], [Id_Consulta]) VALUES (N'8805122641', N'lianny', N'cespedes', N'999083065', 29, N'f', NULL)
