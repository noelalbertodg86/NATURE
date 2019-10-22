/****** Object:  StoredProcedure [dbo].[BuscarProcederesPorConsulta]    Script Date: 18/7/2017 11:44:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[BuscarProcederesPorConsulta] @IdConsulta int
AS
BEGIN
  Select * from Procederes_Consulta pc
  inner join Procederes p on pc.Id_Procederes = p.ID
  where pc.Id_Consulta = @IdConsulta
END

GO
