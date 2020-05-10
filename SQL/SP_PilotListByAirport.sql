USE [AirCompany]
GO

/****** Object:  StoredProcedure [dbo].[PilotListByAirport]    Script Date: 11/02/2017 09:56:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		p.v.chalenko
-- Create date: 2.11.2017
-- Description:	List of pilot by airport
-- =============================================
CREATE PROCEDURE [dbo].[SP_PilotListByAirport] 
	-- Add the parameters for the stored procedure here
	@airport_name nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT 
		[av].[FirstName] + ' ' + [av].[LastName] AS 'fullname'
	FROM [dbo].[Aviator] AS [av]
	LEFT JOIN [dbo].[Airport] AS [ap] ON [av].[Airport] = [ap].[Oid]
	WHERE [ap].[Name] LIKE @airport_name

END

GO

