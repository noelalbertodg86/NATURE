/****** Object:  StoredProcedure [dbo].[BuscarMedicamentosPorConsulta]    Script Date: 18/7/2017 11:44:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarMedicamentosPorConsulta] @IdConsulta int
AS
BEGIN
  Select * from Medicamentos_Consulta mc
  inner join Medicamentos m on mc.Id_Medicamento = m.ID
  where mc.Id_Consulta = @IdConsulta
END

GO
