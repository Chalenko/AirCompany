SELECT 
	[av].[FirstName] + ' ' + [av].[LastName] AS 'fullname'
FROM [dbo].[Aviator] AS [av]
LEFT JOIN [dbo].[Airport] AS [ap] ON [av].[Airport] = [ap].[Oid]
WHERE [ap].[Name] LIKE 'Шереметьево'
