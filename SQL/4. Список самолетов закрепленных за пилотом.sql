SELECT 
	[s].[BordName] AS 'Bord Name'
FROM [dbo].[AviatorPilots_AirplaneAirplans] AS [aa]
LEFT JOIN [dbo].[Airplane] AS [s] ON [aa].[Airplans] = [s].[Oid]
LEFT JOIN [dbo].[Aviator] AS [av] ON [aa].[Pilots] = [av].[Oid]
WHERE [av].[LastName] LIKE '%Chalenko%'
