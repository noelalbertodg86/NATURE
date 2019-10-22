/****** Object:  Table [dbo].[Procederes_Consulta]    Script Date: 18/7/2017 11:44:04 ******/
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
