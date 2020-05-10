USE [AirCompany]
GO

/****** Object:  StoredProcedure [dbo].[PilotListByAirplane]    Script Date: 11/02/2017 09:56:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		p.v.chalenko
-- Create date: 2.11.2017
-- Description:	List of pilot by airplane bord name
-- =============================================
CREATE PROCEDURE [dbo].[SP_PilotListByAirplane] 
	-- Add the parameters for the stored procedure here
	@airplane_name nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		[av].[FirstName] + ' ' + [av].[LastName] AS 'Full Name'
	FROM [dbo].[AviatorPilots_AirplaneAirplans] AS [aa]
	LEFT JOIN [dbo].[Airplane] AS [s] ON [aa].[Airplans] = [s].[Oid]
	LEFT JOIN [dbo].[Aviator] AS [av] ON [aa].[Pilots] = [av].[Oid]
	WHERE [s].[BordName] LIKE '%' + @airplane_name + '%'

END

GO

