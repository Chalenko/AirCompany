SELECT 
	[s].[BordName] AS 'Bord Name'
FROM [dbo].[Airplane] AS [s]
LEFT JOIN [dbo].[Airport] AS [ap] ON [s].[Airport] = [ap].[Oid]
WHERE [ap].[Name] LIKE '%Стригино%'
