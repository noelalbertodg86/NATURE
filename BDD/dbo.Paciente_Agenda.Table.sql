/****** Object:  Table [dbo].[Paciente_Agenda]    Script Date: 18/7/2017 11:44:04 ******/
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
ALTER TABLE [dbo].[Paciente_Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Agenda_Paciente] FOREIGN KEY([Id_Paciente])
REFERENCES [dbo].[Paciente] ([Cedula])
GO
ALTER TABLE [dbo].[Paciente_Agenda] CHECK CONSTRAINT [FK_Paciente_Agenda_Paciente]
GO
