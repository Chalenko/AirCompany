SELECT 
	[av].[FirstName] + ' ' + [av].[LastName] AS 'Full Name'
FROM [dbo].[AviatorPilots_AirplaneAirplans] AS [aa]
LEFT JOIN [dbo].[Airplane] AS [s] ON [aa].[Airplans] = [s].[Oid]
LEFT JOIN [dbo].[Aviator] AS [av] ON [aa].[Pilots] = [av].[Oid]
WHERE [s].[BordName] LIKE '%“Û-124%'
