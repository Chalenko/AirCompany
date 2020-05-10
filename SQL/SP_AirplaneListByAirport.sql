USE [AirCompany]
GO

/****** Object:  StoredProcedure [dbo].[AirplaneListByAirport]    Script Date: 11/02/2017 09:53:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		p.v.chalenko
-- Create date: 2.11.2017
-- Description:	List of airplane by airport
-- =============================================
CREATE PROCEDURE [dbo].[SP_AirplaneListByAirport] 
	-- Add the parameters for the stored procedure here
	@airport_name nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT 
		[s].[BordName] AS 'Bord Name'
	FROM [dbo].[Airplane] AS [s]
	LEFT JOIN [dbo].[Airport] AS [ap] ON [s].[Airport] = [ap].[Oid]
	WHERE [ap].[Name] LIKE '%' + @airport_name + '%'

END

GO

