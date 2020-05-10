USE [AirCompany]
GO

/****** Object:  StoredProcedure [dbo].[AirportListByPilotCount]    Script Date: 11/02/2017 09:55:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		p.v.chalenko
-- Create date: 2.11.2017
-- Description:	List of airport by pilot count
-- =============================================
CREATE PROCEDURE [dbo].[SP_AirportListByPilotCount] 
	-- Add the parameters for the stored procedure here
	@pilot_count int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		ISNULL([ap].[Name], 'Б/А') AS [airport_name],
		COUNT(*) AS [count]
	FROM [dbo].[Aviator] AS [av]
	LEFT JOIN [dbo].[Airport] AS [ap] ON [av].[Airport] = [ap].[Oid]
	GROUP BY ([ap].[Name])
	HAVING COUNT(*) > @pilot_count

END

GO

