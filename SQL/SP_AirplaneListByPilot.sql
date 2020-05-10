USE [AirCompany]
GO

/****** Object:  StoredProcedure [dbo].[AirplaneListByPilot]    Script Date: 11/02/2017 09:54:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		p.v.chalenko
-- Create date: 2.11.2017
-- Description:	List of airplane by pilot name
-- =============================================
CREATE PROCEDURE [dbo].[SP_AirplaneListByPilot] 
	-- Add the parameters for the stored procedure here
	@pilot_name nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT 
		[s].[BordName] AS 'Bord Name'
	FROM [dbo].[AviatorPilots_AirplaneAirplans] AS [aa]
	LEFT JOIN [dbo].[Airplane] AS [s] ON [aa].[Airplans] = [s].[Oid]
	LEFT JOIN [dbo].[Aviator] AS [av] ON [aa].[Pilots] = [av].[Oid]
	WHERE [av].[LastName] LIKE '%' + @pilot_name + '%'

END

GO

