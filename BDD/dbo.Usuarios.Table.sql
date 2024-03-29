/****** Object:  Table [dbo].[Usuarios]    Script Date: 18/7/2017 11:44:04 ******/
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
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([ID], [Titulo], [Nombres], [Apellidos], [Usuario], [Password], [Edad], [Sexo], [Cedula], [Pasaporte], [Mail]) VALUES (1, N'Sr', N'Noel Alberto', N'Diaz Garcia', N'noel.diaz', N'1234567', 31, N'M', N'1758052573', NULL, N'noelalbertodg86@gmail.com')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
