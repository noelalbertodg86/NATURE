/****** Object:  Table [dbo].[Paciente_Consulta]    Script Date: 18/7/2017 11:44:04 ******/
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
