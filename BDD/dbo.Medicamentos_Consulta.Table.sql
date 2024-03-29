/****** Object:  Table [dbo].[Medicamentos_Consulta]    Script Date: 18/7/2017 11:44:04 ******/
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
