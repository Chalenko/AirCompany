USE [AirCompany]

SELECT 
	ISNULL([ap].[Name], 'Á/À') AS [airport_name],
	COUNT(*) AS [count]
FROM [dbo].[Aviator] AS [av]
LEFT JOIN [dbo].[Airport] AS [ap] ON [av].[Airport] = [ap].[Oid]
GROUP BY ([ap].[Name])
HAVING COUNT(*) > 2