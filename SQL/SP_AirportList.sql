USE [AirCompany]
GO

/****** Object:  StoredProcedure [dbo].[AirportList]    Script Date: 11/02/2017 09:54:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		p.v.chalenko
-- Create date: 2.11.2017
-- Description:	List of airports
-- =============================================
CREATE PROCEDURE [dbo].[SP_AirportList] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT 
		[Name] AS 'name'
	FROM 
		[dbo].[Airport]
	
END

GO

