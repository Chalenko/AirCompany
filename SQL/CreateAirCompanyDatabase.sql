USE [master]
GO

/****** Object:  Database [AirCompany]    Script Date: 11/02/2017 09:46:31 ******/
CREATE DATABASE [AirCompany] ON  PRIMARY 
( NAME = N'AirCompany', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AirCompany.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AirCompany_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AirCompany_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AirCompany].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AirCompany] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [AirCompany] SET ANSI_NULLS OFF
GO
ALTER DATABASE [AirCompany] SET ANSI_PADDING OFF
GO
ALTER DATABASE [AirCompany] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [AirCompany] SET ARITHABORT OFF
GO
ALTER DATABASE [AirCompany] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [AirCompany] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [AirCompany] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [AirCompany] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [AirCompany] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [AirCompany] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [AirCompany] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [AirCompany] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [AirCompany] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [AirCompany] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [AirCompany] SET  DISABLE_BROKER
GO
ALTER DATABASE [AirCompany] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [AirCompany] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [AirCompany] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [AirCompany] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [AirCompany] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [AirCompany] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [AirCompany] SET  READ_WRITE
GO
ALTER DATABASE [AirCompany] SET RECOVERY SIMPLE
GO
ALTER DATABASE [AirCompany] SET  MULTI_USER
GO
ALTER DATABASE [AirCompany] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [AirCompany] SET DB_CHAINING OFF
GO
USE [AirCompany]
GO


/****** Object:  Table [dbo].[XPObjectType]    Script Date: 11/02/2017 09:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XPObjectType](
	[OID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TypeName] [nvarchar](254) NULL,
	[AssemblyName] [nvarchar](254) NULL,
 CONSTRAINT [PK_XPObjectType] PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [iTypeName_XPObjectType] ON [dbo].[XPObjectType] 
(
	[TypeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[ReportDataV2]    Script Date: 11/02/2017 09:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportDataV2](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ObjectTypeName] [nvarchar](512) NULL,
	[Content] [varbinary](max) NULL,
	[Name] [nvarchar](100) NULL,
	[ParametersObjectTypeName] [nvarchar](512) NULL,
	[IsInplaceReport] [bit] NULL,
	[PredefinedReportType] [nvarchar](512) NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_ReportDataV2] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [iGCRecord_ReportDataV2] ON [dbo].[ReportDataV2] 
(
	[GCRecord] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Fuel]    Script Date: 11/02/2017 09:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fuel](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_Fuel] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iGCRecord_Fuel] ON [dbo].[Fuel] 
(
	[GCRecord] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Country]    Script Date: 11/02/2017 09:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iGCRecord_Country] ON [dbo].[Country] 
(
	[GCRecord] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[City]    Script Date: 11/02/2017 09:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Population] [int] NOT NULL,
	[Country] [uniqueidentifier] NOT NULL,
	[Metro] [bit] NOT NULL,
	[burnDate] [datetime2](7) NULL,
	[latitude] [float] NULL,
	[longtitude] [float] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iCountry_City] ON [dbo].[City] 
(
	[Country] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iGCRecord_City] ON [dbo].[City] 
(
	[GCRecord] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Airport]    Script Date: 11/02/2017 09:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airport](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](3) NOT NULL,
	[City] [uniqueidentifier] NOT NULL,
	[Detail] [nvarchar](2048) NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_Airport] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iCity_Airport] ON [dbo].[Airport] 
(
	[City] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iGCRecord_Airport] ON [dbo].[Airport] 
(
	[GCRecord] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Airplane]    Script Date: 11/02/2017 09:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airplane](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[BordName] [nvarchar](100) NOT NULL,
	[MaxSpeed] [float] NOT NULL,
	[SeatsCount] [int] NOT NULL,
	[Fuel] [uniqueidentifier] NOT NULL,
	[Airport] [uniqueidentifier] NOT NULL,
	[Manufacturer] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_Airplane] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iAirport_Airplane] ON [dbo].[Airplane] 
(
	[Airport] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iFuel_Airplane] ON [dbo].[Airplane] 
(
	[Fuel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iGCRecord_Airplane] ON [dbo].[Airplane] 
(
	[GCRecord] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iManufacturer_Airplane] ON [dbo].[Airplane] 
(
	[Manufacturer] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[AirportList]    Script Date: 11/02/2017 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Object:  Table [dbo].[Aviator]    Script Date: 11/02/2017 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aviator](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[Airport] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_Aviator] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iAirport_Aviator] ON [dbo].[Aviator] 
(
	[Airport] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iGCRecord_Aviator] ON [dbo].[Aviator] 
(
	[GCRecord] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[AviatorPilots_AirplaneAirplans]    Script Date: 11/02/2017 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AviatorPilots_AirplaneAirplans](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Airplans] [uniqueidentifier] NOT NULL,
	[Pilots] [uniqueidentifier] NOT NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_AviatorPilots_AirplaneAirplans] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iAirplans_AviatorPilots_AirplaneAirplans] ON [dbo].[AviatorPilots_AirplaneAirplans] 
(
	[Airplans] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [iAirplansPilots_AviatorPilots_AirplaneAirplans] ON [dbo].[AviatorPilots_AirplaneAirplans] 
(
	[Airplans] ASC,
	[Pilots] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iPilots_AviatorPilots_AirplaneAirplans] ON [dbo].[AviatorPilots_AirplaneAirplans] 
(
	[Pilots] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO


/****** Object:  StoredProcedure [dbo].[SP_AirportList]    Script Date: 11/02/2017 09:46:35 ******/
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

/****** Object:  StoredProcedure [dbo].[AirplaneListByAirport]    Script Date: 11/02/2017 09:46:35 ******/
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


/****** Object:  StoredProcedure [dbo].[SP_AirportListByPilotCount]    Script Date: 11/02/2017 09:46:35 ******/
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


/****** Object:  StoredProcedure [dbo].[SP_PilotListByAirport]    Script Date: 11/02/2017 09:46:35 ******/
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


/****** Object:  StoredProcedure [dbo].[SP_PilotListByAirplane]    Script Date: 11/02/2017 09:46:35 ******/
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


/****** Object:  StoredProcedure [dbo].[SP_AirplaneListByPilot]    Script Date: 11/02/2017 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		p.v.chalenko
-- Create date: 2.11.2017
-- Description:	List of airplane by pilot name
-- =============================================
CREATE PROCEDURE [dbo].[SP_AirplaneListByPilot] 
	-- Add the parameters for the stored procedure here
	@pilot_name nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT 
		[s].[BordName] AS 'Bord Name'
	FROM [dbo].[AviatorPilots_AirplaneAirplans] AS [aa]
	LEFT JOIN [dbo].[Airplane] AS [s] ON [aa].[Airplans] = [s].[Oid]
	LEFT JOIN [dbo].[Aviator] AS [av] ON [aa].[Pilots] = [av].[Oid]
	WHERE [av].[LastName] LIKE '%' + @pilot_name + '%'

END
GO


/****** Object:  StoredProcedure [dbo].[SP_GenerateTestData]    Script Date: 11/02/2017 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		p.v.chalenko
-- Create date: 02.11.2017
-- Description:	Create test data for AirCompany database
-- =============================================
CREATE PROCEDURE [dbo].[SP_GenerateTestData] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	TRUNCATE TABLE [dbo].[AviatorPilots_AirplaneAirplans]
	ALTER TABLE [dbo].[AviatorPilots_AirplaneAirplans] DROP CONSTRAINT [FK_AviatorPilots_AirplaneAirplans_Pilots];
	TRUNCATE TABLE [dbo].[Aviator]
	ALTER TABLE [dbo].[AviatorPilots_AirplaneAirplans] DROP CONSTRAINT [FK_AviatorPilots_AirplaneAirplans_Airplans];
	TRUNCATE TABLE [dbo].[Airplane]
	ALTER TABLE [dbo].[Airplane] DROP CONSTRAINT [FK_Airplane_Fuel];
	TRUNCATE TABLE [dbo].[Fuel]
	ALTER TABLE [dbo].[Aviator] DROP CONSTRAINT [FK_Aviator_Airport];
	ALTER TABLE [dbo].[Airplane] DROP CONSTRAINT [FK_Airplane_Airport];
	TRUNCATE TABLE [dbo].[Airport]
	ALTER TABLE [dbo].[Airport] DROP CONSTRAINT [FK_Airport_City];
	TRUNCATE TABLE [dbo].[City]
	ALTER TABLE [dbo].[Airplane] DROP CONSTRAINT [FK_Airplane_Manufacturer];
	ALTER TABLE [dbo].[City] DROP CONSTRAINT [FK_City_Country];
	TRUNCATE TABLE [dbo].[Country]
	TRUNCATE TABLE [dbo].[XpObjectType]
	--TRUNCATE TABLE [dbo].[ReportDataV2]

	-- Create CONSTRAINTS
	ALTER TABLE [dbo].[City] WITH NOCHECK ADD CONSTRAINT [FK_City_Country] FOREIGN KEY ([Country]) REFERENCES [dbo].[Country] ([Oid]) NOT FOR REPLICATION;
	ALTER TABLE [dbo].[City] WITH CHECK CHECK CONSTRAINT [FK_City_Country];
	ALTER TABLE [dbo].[Airplane] WITH NOCHECK ADD CONSTRAINT [FK_Airplane_Manufacturer] FOREIGN KEY ([Manufacturer]) REFERENCES [dbo].[Country] ([Oid]) NOT FOR REPLICATION;
	ALTER TABLE [dbo].[Airplane] WITH CHECK CHECK CONSTRAINT [FK_Airplane_Manufacturer];
	ALTER TABLE [dbo].[Airport] WITH NOCHECK ADD CONSTRAINT [FK_Airport_City] FOREIGN KEY ([City]) REFERENCES [dbo].[City] ([Oid]) NOT FOR REPLICATION;
	ALTER TABLE [dbo].[Airport] WITH CHECK CHECK CONSTRAINT [FK_Airport_City];
	ALTER TABLE [dbo].[Airplane] WITH NOCHECK ADD CONSTRAINT [FK_Airplane_Airport] FOREIGN KEY ([Airport]) REFERENCES [dbo].[Airport] ([Oid]) NOT FOR REPLICATION;
	ALTER TABLE [dbo].[Airplane] WITH CHECK CHECK CONSTRAINT [FK_Airplane_Airport];
	ALTER TABLE [dbo].[Aviator] WITH NOCHECK ADD CONSTRAINT [FK_Aviator_Airport] FOREIGN KEY ([Airport]) REFERENCES [dbo].[Airport] ([Oid]) NOT FOR REPLICATION;
	ALTER TABLE [dbo].[Aviator] WITH CHECK CHECK CONSTRAINT [FK_Aviator_Airport];
	ALTER TABLE [dbo].[Airplane] WITH NOCHECK ADD CONSTRAINT [FK_Airplane_Fuel] FOREIGN KEY ([Fuel]) REFERENCES [dbo].[Fuel] ([Oid]) NOT FOR REPLICATION;
	ALTER TABLE [dbo].[Airplane] WITH CHECK CHECK CONSTRAINT [FK_Airplane_Fuel];
	ALTER TABLE [dbo].[AviatorPilots_AirplaneAirplans] WITH NOCHECK ADD CONSTRAINT [FK_AviatorPilots_AirplaneAirplans_Airplans] FOREIGN KEY ([Airplans]) REFERENCES [dbo].[Airplane] ([Oid]) NOT FOR REPLICATION;
	ALTER TABLE [dbo].[AviatorPilots_AirplaneAirplans] WITH CHECK CHECK CONSTRAINT [FK_AviatorPilots_AirplaneAirplans_Airplans];
	ALTER TABLE [dbo].[AviatorPilots_AirplaneAirplans] WITH NOCHECK ADD CONSTRAINT [FK_AviatorPilots_AirplaneAirplans_Pilots] FOREIGN KEY ([Pilots]) REFERENCES [dbo].[Aviator] ([Oid]) NOT FOR REPLICATION;
	ALTER TABLE [dbo].[AviatorPilots_AirplaneAirplans] WITH CHECK CHECK CONSTRAINT [FK_AviatorPilots_AirplaneAirplans_Pilots];

	-- INSERT INTO [XpObjectType]
	INSERT INTO [dbo].[XpObjectType] VALUES ('AirCompany.Module.BusinessObjects.Address',	'AirCompany.Module')
	INSERT INTO [dbo].[XpObjectType] VALUES ('AirCompany.Module.BusinessObjects.Fuel',		'AirCompany.Module')
	INSERT INTO [dbo].[XpObjectType] VALUES ('AirCompany.Module.BusinessObjects.Airplane',	'AirCompany.Module')
	INSERT INTO [dbo].[XpObjectType] VALUES ('AirCompany.Module.BusinessObjects.Airport',	'AirCompany.Module')
	INSERT INTO [dbo].[XpObjectType] VALUES ('AirCompany.Module.BusinessObjects.Country',	'AirCompany.Module')
	INSERT INTO [dbo].[XpObjectType] VALUES ('AirCompany.Module.BusinessObjects.City',		'AirCompany.Module')
	INSERT INTO [dbo].[XpObjectType] VALUES ('AirCompany.Module.BusinessObjects.Aviator',	'AirCompany.Module')
	INSERT INTO [dbo].[XpObjectType] VALUES ('Aviators_Airplans',							'')
	INSERT INTO [dbo].[XpObjectType] VALUES ('AviatorPilots_AirplaneAirplans',				'')
	INSERT INTO [dbo].[XpObjectType] VALUES ('DevExpress.Persistent.BaseImpl.ReportDataV2',	'DevExpress.Persistent.BaseImpl.v17.1')

	-- INSERT INTO [Country]
	INSERT INTO [dbo].[Country] VALUES('8A39BAFE-72CE-4EFB-B28D-33052C55257E',	'France',	'FRA',	0,	NULL)
	INSERT INTO [dbo].[Country] VALUES('7A022070-304F-4EBA-8007-3425083663F0',	'Brasil',	'BRA',	0,	NULL)
	INSERT INTO [dbo].[Country] VALUES('946CDBF4-9A83-403B-9787-55D7758F283B',	'Canada',	'CAN',	0,	NULL)
	INSERT INTO [dbo].[Country] VALUES('A5CA8913-66A2-41A4-928F-590B8760DF8D',	'United Stetes of America',	'USA',	0,	NULL)
	INSERT INTO [dbo].[Country] VALUES('F7F41447-867D-4FB0-9AB2-6175FE9CC82D',	'Russia',	'RUS',	0,	NULL)
	INSERT INTO [dbo].[Country] VALUES('288C3BAE-76E2-4ACB-908D-A7DA63CF47CD',	'Serbia',	'SRB',	0,	NULL)
	INSERT INTO [dbo].[Country] VALUES('7BFF1E39-CF78-44B0-8A67-D0838A41639A',	'Netherlands',	'NED',	0,	NULL)
	INSERT INTO [dbo].[Country] VALUES('6B7B82D6-F2A2-4658-8998-E88F2D4E3FD9',	'Montenegro',	'MNG',	0,	NULL)

	-- INSERT INTO [City]
	INSERT INTO [dbo].[City] VALUES('9AA90D4A-AE47-4691-9941-1F2B1F94EA02',	'Moscow',			12380664,	'F7F41447-867D-4FB0-9AB2-6175FE9CC82D',	'True',		'1147-09-09 00:00:00.0000000',	55.75,		37.62,		0,	NULL)
	INSERT INTO [dbo].[City] VALUES('9F2D4FE0-6357-4F07-ACD6-2748ADE7B7B5',	'Dzerzhinsk',		231797,		'F7F41447-867D-4FB0-9AB2-6175FE9CC82D',	'False',	'1606-05-27 00:00:00.0000000',	56.2333333,	43.45,		0,	NULL)
	INSERT INTO [dbo].[City] VALUES('CB32E5E1-D978-478A-9D5C-383742A25C63',	'Nizhny Novgorod',	1264075,	'F7F41447-867D-4FB0-9AB2-6175FE9CC82D',	'True',		'1221-06-12 00:00:00.0000000',	56.3333333,	44,			0,	NULL)
	INSERT INTO [dbo].[City] VALUES('1AB1432E-7A26-42AB-BD03-4239E2445506',	'New York',			8405837,	'A5CA8913-66A2-41A4-928F-590B8760DF8D',	'True',		NULL,							40.7166666,	-74,		0,	NULL)
	INSERT INTO [dbo].[City] VALUES('2F8A6DF3-5E39-45EE-9624-5B10520343ED',	'Kazan',			1231876,	'F7F41447-867D-4FB0-9AB2-6175FE9CC82D',	'True',		'1005-08-30 00:00:00.0000000',	55.7833333,	49.1,		0,	NULL)
	INSERT INTO [dbo].[City] VALUES('11F2C693-54B4-47A2-87E6-60A9EABFC328',	'Beograd',			1233796,	'288C3BAE-76E2-4ACB-908D-A7DA63CF47CD',	'False',	'0878-08-05 00:00:00.0000000',	44.8333333,	20.4666666,	0,	NULL)
	INSERT INTO [dbo].[City] VALUES('1F2ED58A-116A-4A92-B190-F37FE127A062',	'Tivat',			9467,		'6B7B82D6-F2A2-4658-8998-E88F2D4E3FD9',	'False',	'1420-11-21 00:00:00.0000000',	42.4166666,	18.07,		0,	NULL)

	--INSERT INTO [Airport]
	INSERT INTO [dbo].[Airport] VALUES('83AC45C6-9D46-4F13-A779-72E0769A9B78',	'Аэропорт Тиват',									'TIV',	'1F2ED58A-116A-4A92-B190-F37FE127A062',	NULL,					0,	NULL)
	INSERT INTO [dbo].[Airport] VALUES('A6339964-FA4F-444B-B8EB-755DEF9F2574',	'Аэропорт «Внуково»',								'VKO',	'9AA90D4A-AE47-4691-9941-1F2B1F94EA02',	NULL,					1,	NULL)
	INSERT INTO [dbo].[Airport] VALUES('DC797F94-2820-4001-B6D3-7625BE38CB1F',	'Аэропорт Стригино',								'GOJ',	'CB32E5E1-D978-478A-9D5C-383742A25C63',	NULL,					1,	NULL)
	INSERT INTO [dbo].[Airport] VALUES('EC7FEB6C-F348-43EE-AD83-94BBE1C8D93C',	'Аэропорт Казань',									'KZN',	'2F8A6DF3-5E39-45EE-9624-5B10520343ED',	NULL,					1,	NULL)
	INSERT INTO [dbo].[Airport] VALUES('1C87AB13-B1CE-4174-BBA5-A3F8B57623AD',	'Международный Аэропорт «Никола Тесла Белград»',	'BEG',	'11F2C693-54B4-47A2-87E6-60A9EABFC328',	'Сурчин',				0,	NULL)
	INSERT INTO [dbo].[Airport] VALUES('3130B892-D871-4EBE-BEF6-C399B8221228',	'Аэропорт «Домодедово»',							'DME',	'9AA90D4A-AE47-4691-9941-1F2B1F94EA02',	NULL,					1,	NULL)
	INSERT INTO [dbo].[Airport] VALUES('8EB2454D-6316-4D43-8C49-F116D8400AC9',	'Шереметьево',										'SVO',	'9AA90D4A-AE47-4691-9941-1F2B1F94EA02',	'Шереметьевское шоссе',	0,	NULL)

	--INSERT INTO [Fuel]
	INSERT INTO [dbo].[Fuel] VALUES('F7C201AE-653B-4CC9-A8A2-00A474345C1B',	'РТ',	0,	NULL)
	INSERT INTO [dbo].[Fuel] VALUES('CA1F0773-A306-4301-A5A9-38A39A85431A',	'Т-8В',	0,	NULL)
	INSERT INTO [dbo].[Fuel] VALUES('E99D8C4C-3EEB-4A9D-8A24-C4CE45FAB20B',	'Т-6',	0,	NULL)
	INSERT INTO [dbo].[Fuel] VALUES('563456CB-D31D-4BBB-BA7B-E4BE31532D0C',	'ТС-1',	0,	NULL)

	--INSERT INTO [Airplane]
	INSERT INTO [dbo].[Airplane] VALUES('3F6DB7C3-1BF1-42F5-98A1-0517563F7BE3',	'Скимитар',							990,			3,			'F7C201AE-653B-4CC9-A8A2-00A474345C1B',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	NULL,									0,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('1DF689F9-0F98-4BCE-A503-0A2349DC561E',	'Ту-124',							907,			56,			'563456CB-D31D-4BBB-BA7B-E4BE31532D0C',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	'F7F41447-867D-4FB0-9AB2-6175FE9CC82D', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('91B9773B-4FA5-4740-9E2D-152E97EB45C8',	'Fokker 100',						845	,			100,		'CA1F0773-A306-4301-A5A9-38A39A85431A',	'1C87AB13-B1CE-4174-BBA5-A3F8B57623AD',	'7BFF1E39-CF78-44B0-8A67-D0838A41639A', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('B40185A2-9DC1-4FFE-9809-16CC5723EA69',	'Призрак',							3333.333333,	10,			'F7C201AE-653B-4CC9-A8A2-00A474345C1B',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	NULL,									0,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('2C8EA565-7066-48B9-BF82-26E3C25974CB',	'Embarer E-195',					890,			100,		'CA1F0773-A306-4301-A5A9-38A39A85431A',	'8EB2454D-6316-4D43-8C49-F116D8400AC9',	'7A022070-304F-4EBA-8007-3425083663F0', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('B76D0575-130B-4C47-862E-3FBE246AD9F0',	'Bombardier CRJ900',				882,			88,			'CA1F0773-A306-4301-A5A9-38A39A85431A',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	'946CDBF4-9A83-403B-9787-55D7758F283B', 4,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('4CE292C6-6A9B-4428-BD0A-40530120D56D',	'Bombardier CRJ100',				860,			50,			'CA1F0773-A306-4301-A5A9-38A39A85431A',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	'946CDBF4-9A83-403B-9787-55D7758F283B', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('266725CF-2DD3-40B2-84D3-44B1EA893E1C',	'Исполнительница',					36.6,			500,		'563456CB-D31D-4BBB-BA7B-E4BE31532D0C',	'3130B892-D871-4EBE-BEF6-C399B8221228',	NULL,									1,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('FF6A47BA-1397-4291-BB29-4B693D968CB9',	'Airbus A380',						1020,			525,		'CA1F0773-A306-4301-A5A9-38A39A85431A',	'DC797F94-2820-4001-B6D3-7625BE38CB1F',	'8A39BAFE-72CE-4EFB-B28D-33052C55257E', 4,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('EABCC08E-9461-4CA2-8F83-524FF73FAE4D',	'Boeing 747',						955,			818,		'F7C201AE-653B-4CC9-A8A2-00A474345C1B',	'3130B892-D871-4EBE-BEF6-C399B8221228',	'A5CA8913-66A2-41A4-928F-590B8760DF8D', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('1BEFBA8A-5C15-499D-8BA9-634AEAF7B525',	'Звезда Смерти',					9999999,		1000000,	'563456CB-D31D-4BBB-BA7B-E4BE31532D0C',	'8EB2454D-6316-4D43-8C49-F116D8400AC9',	NULL,									1,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('B93753CA-9EC1-46FC-BC08-66197F4CF5D3',	'Ил-96',							910,			300,		'563456CB-D31D-4BBB-BA7B-E4BE31532D0C',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	'F7F41447-867D-4FB0-9AB2-6175FE9CC82D', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('685D9A83-AFBD-4A46-8D91-6DBFEFD9AEA0',	'Раб I',							789,			2,			'F7C201AE-653B-4CC9-A8A2-00A474345C1B',	'EC7FEB6C-F348-43EE-AD83-94BBE1C8D93C',	NULL,									0,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('0DDE4FDF-1C1D-46CF-8522-71CF46E71552',	'Boeing 737',						867,			361,		'CA1F0773-A306-4301-A5A9-38A39A85431A',	'8EB2454D-6316-4D43-8C49-F116D8400AC9',	'A5CA8913-66A2-41A4-928F-590B8760DF8D', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('2F520093-E58A-40D8-B314-7E1B153FA74B',	'Ту-204',							860,			210,		'F7C201AE-653B-4CC9-A8A2-00A474345C1B',	'83AC45C6-9D46-4F13-A779-72E0769A9B78',	'F7F41447-867D-4FB0-9AB2-6175FE9CC82D', 3,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('262FEC38-775A-4B3A-821D-8172C483841A',	'Ту-154',							975,			165,		'CA1F0773-A306-4301-A5A9-38A39A85431A',	'EC7FEB6C-F348-43EE-AD83-94BBE1C8D93C',	'F7F41447-867D-4FB0-9AB2-6175FE9CC82D', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('2914F0BE-ED84-4398-B772-8BFB89B45E84',	'Airbus A320',						840,			132,		'E99D8C4C-3EEB-4A9D-8A24-C4CE45FAB20B',	'1C87AB13-B1CE-4174-BBA5-A3F8B57623AD',	'8A39BAFE-72CE-4EFB-B28D-33052C55257E', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('BF74F4EB-E611-4669-92F4-8F950C1DE547',	'Sukhoi Superjet 100',				860,			108,		'F7C201AE-653B-4CC9-A8A2-00A474345C1B',	'8EB2454D-6316-4D43-8C49-F116D8400AC9',	'F7F41447-867D-4FB0-9AB2-6175FE9CC82D', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('E0CDBFC8-25EC-4FFD-992E-9AC773279E3E',	'Ту-114',							880,			220,		'CA1F0773-A306-4301-A5A9-38A39A85431A',	'3130B892-D871-4EBE-BEF6-C399B8221228',	'F7F41447-867D-4FB0-9AB2-6175FE9CC82D', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('9435256B-1E1B-4926-81EE-B73C607EAE83',	'Усовершенствованный СИД x1',		1000,			1,			'F7C201AE-653B-4CC9-A8A2-00A474345C1B',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	NULL,									0,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('72BBA381-08B2-44B2-AA31-BE12AF022FCE',	'Boeing 787',						956,			460,		'563456CB-D31D-4BBB-BA7B-E4BE31532D0C',	'83AC45C6-9D46-4F13-A779-72E0769A9B78',	'A5CA8913-66A2-41A4-928F-590B8760DF8D', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('BD5E0E2D-F24D-470F-95F9-BE5EEAA9A7FC',	'Bombardier CRJ700',				875,			70,			'CA1F0773-A306-4301-A5A9-38A39A85431A',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	'946CDBF4-9A83-403B-9787-55D7758F283B', 3,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('569FF941-AE9A-444C-B574-BF20ABF42E21',	'Стойкость',						4555,			1000,		'563456CB-D31D-4BBB-BA7B-E4BE31532D0C',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	NULL,									0,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('6201421D-1382-4B0D-A018-C1F3F8CBCB7E',	'ATR 72',							511,			74,			'E99D8C4C-3EEB-4A9D-8A24-C4CE45FAB20B',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	'8A39BAFE-72CE-4EFB-B28D-33052C55257E', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('3829C529-FFA7-4FEC-8D8D-E09149E20F8F',	'Embarer E-190',					890,			100,		'CA1F0773-A306-4301-A5A9-38A39A85431A',	'83AC45C6-9D46-4F13-A779-72E0769A9B78',	'7A022070-304F-4EBA-8007-3425083663F0', 3,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('2564F61E-5B0C-4093-AE5A-E4016A7987DD',	'Embarer E-170',					890,			80,			'E99D8C4C-3EEB-4A9D-8A24-C4CE45FAB20B',	'EC7FEB6C-F348-43EE-AD83-94BBE1C8D93C',	'7A022070-304F-4EBA-8007-3425083663F0', 3,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('1B4E3EE9-A587-474E-9734-F0A02F9DAC34',	'ТУ-134',							850,			76,			'F7C201AE-653B-4CC9-A8A2-00A474345C1B',	'8EB2454D-6316-4D43-8C49-F116D8400AC9',	'F7F41447-867D-4FB0-9AB2-6175FE9CC82D', 1,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('6F0FD788-A310-499E-B32E-FD65D7B63E3E',	'Bombardier CRJ1000',				870,			100,		'CA1F0773-A306-4301-A5A9-38A39A85431A',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	'946CDBF4-9A83-403B-9787-55D7758F283B', 2,	NULL)
	INSERT INTO [dbo].[Airplane] VALUES('24FDE812-0EC9-49CB-9038-FEE25C2058FA',	'Умбарский звездный истребитель',	1066.66,		2,			'F7C201AE-653B-4CC9-A8A2-00A474345C1B',	'A6339964-FA4F-444B-B8EB-755DEF9F2574',	NULL,									1,	NULL)

	--INSERT INTO [Aviator]
	INSERT INTO [dbo].[Aviator] VALUES('5E59AD7D-2C39-4642-ABE2-01662D82EA0F',	'Гера',				'Синдулла',		CONVERT(datetime, '2017-10-31 00:00:00.000', 120),	NULL,									0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('9DFE8287-FC8E-4EEC-A0D8-10FB8BC7FC06',	'Мейс',				'Винду',		CONVERT(datetime, '1909-10-25 00:00:00.000', 120),	'1C87AB13-B1CE-4174-BBA5-A3F8B57623AD',	0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('D71D9770-D1F0-4A2C-8928-1FD46AAEDA50',	'Egor',				'Kulpin',		CONVERT(datetime, '1991-08-29 00:00:00.000', 120),	'1C87AB13-B1CE-4174-BBA5-A3F8B57623AD',	0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('78DCF0DD-9F5A-4F74-887D-41DFD821970B',	'Великий магистр',	'Йода',			CONVERT(datetime, '1753-01-01 00:00:00.000', 120),	'1C87AB13-B1CE-4174-BBA5-A3F8B57623AD',	1,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('3A0E7A09-5117-4C74-A076-4A0654FF0781',	'Andrey',			'Ilichev',		CONVERT(datetime, '1992-10-16 00:00:00.000', 120),	'8EB2454D-6316-4D43-8C49-F116D8400AC9',	2,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('5E19FDE2-7C6E-4201-B7D7-52F9E0F4D664',	'Кэнан',			'Джаррус',		CONVERT(datetime, '2017-10-31 00:00:00.000', 120),	NULL,									0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('44B77633-F08D-455F-976D-56DA1CBCDD78',	'Дарт',				'Мол',			CONVERT(datetime, '2017-10-31 00:00:00.000', 120),	'1C87AB13-B1CE-4174-BBA5-A3F8B57623AD',	0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('6D86C92B-294D-4AC9-B161-5EB5253DFD05',	'Ivan',				'Osharin',		CONVERT(datetime, '1990-03-03 00:00:00.000', 120),	'1C87AB13-B1CE-4174-BBA5-A3F8B57623AD',	0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('3A3BEE3F-96C1-4BBB-975E-5F36FC706AB9',	'Дарт',				'Вейдер',		CONVERT(datetime, '2017-10-31 00:00:00.000', 120),	NULL,									1,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('574FE2B4-5483-4207-AA78-68BEDEEAB319',	'Гаразеб "Зеб"',	'Оррелиос',		CONVERT(datetime, '2017-10-30 00:00:00.000', 120),	NULL,									0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('41C3191B-6947-4CF8-8456-772C885F08DD',	'Yury',				'Belozerov',	CONVERT(datetime, '1992-06-17 00:00:00.000', 120),	NULL,									1,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('E575DE0B-3348-4701-A772-980B72FC953B',	'Artyom',			'Nikolaev',		CONVERT(datetime, '1992-02-29 00:00:00.000', 120),	'8EB2454D-6316-4D43-8C49-F116D8400AC9',	0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('7C248213-A65C-4810-BCB9-B9D5CDC887F2',	'Evgeny',			'Grines',		CONVERT(datetime, '1990-01-07 00:00:00.000', 120),	'DC797F94-2820-4001-B6D3-7625BE38CB1F',	0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('2B5D13A1-E5A4-4961-BA1F-BB490E230F5A',	'Гранд-мофф',		'Таркин',		CONVERT(datetime, '2018-12-29 00:00:00.000', 120),	'3130B892-D871-4EBE-BEF6-C399B8221228',	1,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('AE99883A-4BF5-410C-BE6B-CB7530A7EBC2',	'СТ-5555',			'"Файвз"',		CONVERT(datetime, '2017-10-31 00:00:00.000', 120),	NULL,									1,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('3E7B710A-B9DE-4D92-A006-D372E78EA1E0',	'John',				'Azar',			CONVERT(datetime, '1990-03-12 00:00:00.000', 120),	'83AC45C6-9D46-4F13-A779-72E0769A9B78',	1,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('F1DDF2DB-1FFD-4155-B49B-DBDEBCA530EE',	'Roman',			'Nagornov',		CONVERT(datetime, '1991-04-24 00:00:00.000', 120),	'8EB2454D-6316-4D43-8C49-F116D8400AC9',	0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('FB7515D9-E39E-4812-83CC-E10AE502A9FF',	'Боба',				'Фетт',			CONVERT(datetime, '2017-10-04 00:00:00.000', 120),	'EC7FEB6C-F348-43EE-AD83-94BBE1C8D93C',	0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('AAE55E0B-B277-4BF2-9495-EB428CFC2897',	'Sergey',			'Sergienko',	CONVERT(datetime, '1992-07-27 00:00:00.000', 120),	'83AC45C6-9D46-4F13-A779-72E0769A9B78',	0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('6440A192-C094-45A3-97E1-EFAA9C66CFFB',	'Alexander',		'Khilov',		CONVERT(datetime, '1991-12-25 00:00:00.000', 120),	'DC797F94-2820-4001-B6D3-7625BE38CB1F',	0,	NULL)
	INSERT INTO [dbo].[Aviator] VALUES('46916699-BC4F-43A9-B2BF-F41076F080A1',	'Pavel',			'Chalenko',		CONVERT(datetime, '1992-04-28 00:00:00.000', 120),	'8EB2454D-6316-4D43-8C49-F116D8400AC9',	1,	NULL)

	--INSERT INTO [AviatorPilots_AirplaneAirplans]
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('4EA20374-9FA0-4511-9131-03C1F9DDEB8B',	'2F520093-E58A-40D8-B314-7E1B153FA74B',	'46916699-BC4F-43A9-B2BF-F41076F080A1',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('7D06E2EA-2D16-43A6-B41E-0780B52402E6',	'EABCC08E-9461-4CA2-8F83-524FF73FAE4D',	'D71D9770-D1F0-4A2C-8928-1FD46AAEDA50',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('938BE406-98D8-47FC-800F-0851D41513B1',	'B40185A2-9DC1-4FFE-9809-16CC5723EA69',	'5E59AD7D-2C39-4642-ABE2-01662D82EA0F',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('03A5A2D0-986E-4EBE-AE4F-0A27693D0C00',	'EABCC08E-9461-4CA2-8F83-524FF73FAE4D',	'7C248213-A65C-4810-BCB9-B9D5CDC887F2',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('C3CD5F6E-79D2-4B4F-B972-0C75AE40B02D',	'1BEFBA8A-5C15-499D-8BA9-634AEAF7B525',	'2B5D13A1-E5A4-4961-BA1F-BB490E230F5A',	1)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('A398B04B-B98C-4C1C-8DBD-0D75C2BB7A53',	'1B4E3EE9-A587-474E-9734-F0A02F9DAC34',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('3FB3C1AD-D537-4F16-ACBB-11454B402473',	'2914F0BE-ED84-4398-B772-8BFB89B45E84',	'46916699-BC4F-43A9-B2BF-F41076F080A1',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('22221360-963D-4895-80F8-12F2517554BF',	'E0CDBFC8-25EC-4FFD-992E-9AC773279E3E',	'AAE55E0B-B277-4BF2-9495-EB428CFC2897',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('386CE6CF-04B5-4AC4-A1DE-16FB863C4DC2',	'2914F0BE-ED84-4398-B772-8BFB89B45E84',	'F1DDF2DB-1FFD-4155-B49B-DBDEBCA530EE',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('6BF77527-9F57-489F-9B32-175380AF645C',	'B76D0575-130B-4C47-862E-3FBE246AD9F0',	'3E7B710A-B9DE-4D92-A006-D372E78EA1E0',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('224F0E3E-F64E-4017-897C-178E61EFEA3E',	'E0CDBFC8-25EC-4FFD-992E-9AC773279E3E',	'46916699-BC4F-43A9-B2BF-F41076F080A1',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('6B8804CB-1F45-4C61-A735-18CAF1AEF6CF',	'EABCC08E-9461-4CA2-8F83-524FF73FAE4D',	'6D86C92B-294D-4AC9-B161-5EB5253DFD05',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('49A9B737-A247-400E-9154-1F127F6224C2',	'BF74F4EB-E611-4669-92F4-8F950C1DE547',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('5B5CA7B4-BE15-44AA-A05B-2137654DD306',	'2F520093-E58A-40D8-B314-7E1B153FA74B',	'7C248213-A65C-4810-BCB9-B9D5CDC887F2',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('79772F24-8B21-4754-A31B-21C481E8F6C9',	'1BEFBA8A-5C15-499D-8BA9-634AEAF7B525',	'3A3BEE3F-96C1-4BBB-975E-5F36FC706AB9',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('B170BEC2-BAEA-47D8-AFAF-23EF370C2261',	'91B9773B-4FA5-4740-9E2D-152E97EB45C8',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('52B2BF9B-6BAB-44E9-8C31-26FC8B3FE28D',	'262FEC38-775A-4B3A-821D-8172C483841A',	'6440A192-C094-45A3-97E1-EFAA9C66CFFB',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('1CF7D6FF-A92B-46B4-B560-2766D64D6BF4',	'4CE292C6-6A9B-4428-BD0A-40530120D56D',	'E575DE0B-3348-4701-A772-980B72FC953B',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('251F8303-2E33-4B9E-B48C-2D09F6A96C6D',	'1DF689F9-0F98-4BCE-A503-0A2349DC561E',	'E575DE0B-3348-4701-A772-980B72FC953B',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('5509B1F9-641E-445E-9BDC-2FCB3003C42B',	'262FEC38-775A-4B3A-821D-8172C483841A',	'7C248213-A65C-4810-BCB9-B9D5CDC887F2',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('17FC8444-D330-4C26-9A2E-3031DDEAC4E1',	'2564F61E-5B0C-4093-AE5A-E4016A7987DD',	'6D86C92B-294D-4AC9-B161-5EB5253DFD05',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('DC3E4F99-3924-40F7-882F-305C1F161399',	'24FDE812-0EC9-49CB-9038-FEE25C2058FA',	'AE99883A-4BF5-410C-BE6B-CB7530A7EBC2',	1)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('1925FCEA-9A59-488C-B0D4-34379563B03F',	'266725CF-2DD3-40B2-84D3-44B1EA893E1C',	'2B5D13A1-E5A4-4961-BA1F-BB490E230F5A',	1)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('314E84CC-EC84-44E6-8182-3AE367E98192',	'B93753CA-9EC1-46FC-BC08-66197F4CF5D3',	'D71D9770-D1F0-4A2C-8928-1FD46AAEDA50',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('C256A1DC-7B9B-4386-96CC-3B5F1CAEB5D6',	'262FEC38-775A-4B3A-821D-8172C483841A',	'E575DE0B-3348-4701-A772-980B72FC953B',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('B4AD67AA-6D2D-4272-A6F8-3F84A4265545',	'EABCC08E-9461-4CA2-8F83-524FF73FAE4D',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('137F6DFD-D2F6-4721-8FA5-421C92556032',	'3F6DB7C3-1BF1-42F5-98A1-0517563F7BE3',	'44B77633-F08D-455F-976D-56DA1CBCDD78',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('7AFE6B22-E5F5-4D18-8C71-46F8BB2AD000',	'2914F0BE-ED84-4398-B772-8BFB89B45E84',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('65CA19AE-84B4-4F88-8209-4F773F3530D0',	'4CE292C6-6A9B-4428-BD0A-40530120D56D',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('529307BF-0562-4111-B5EB-539714B2BC15',	'72BBA381-08B2-44B2-AA31-BE12AF022FCE',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('5FCCE4D7-B20B-4611-9564-54920E1B6B53',	'6F0FD788-A310-499E-B32E-FD65D7B63E3E',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('89FC55DF-B2B5-4F29-9177-5496BB743CEC',	'2564F61E-5B0C-4093-AE5A-E4016A7987DD',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('B268211C-45A6-4A37-83E0-575D974B502B',	'2564F61E-5B0C-4093-AE5A-E4016A7987DD',	'6440A192-C094-45A3-97E1-EFAA9C66CFFB',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('CFACD792-ED1A-4D20-A351-58AF90BBA379',	'2C8EA565-7066-48B9-BF82-26E3C25974CB',	'F1DDF2DB-1FFD-4155-B49B-DBDEBCA530EE',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('EAF149E7-E0BE-416C-AEDB-58D0D69C3736',	'72BBA381-08B2-44B2-AA31-BE12AF022FCE',	'6D86C92B-294D-4AC9-B161-5EB5253DFD05',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('6E5F4A79-8FF3-4A61-93D7-5A13D9AA9668',	'B93753CA-9EC1-46FC-BC08-66197F4CF5D3',	'6D86C92B-294D-4AC9-B161-5EB5253DFD05',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('BFD1A8D1-FFCB-4039-8876-5E7BEBEF3B63',	'0DDE4FDF-1C1D-46CF-8522-71CF46E71552',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('6312E4FF-D145-4C30-A623-63E281A9CF4B',	'EABCC08E-9461-4CA2-8F83-524FF73FAE4D',	'F1DDF2DB-1FFD-4155-B49B-DBDEBCA530EE',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('0EB38AF1-5214-4D8F-97F6-6E74ABDF4699',	'6201421D-1382-4B0D-A018-C1F3F8CBCB7E',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('ED4AD550-0F48-4E5D-B2F7-70D8B0EC0A5C',	'2C8EA565-7066-48B9-BF82-26E3C25974CB',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('A1F6BF1F-0F8A-49BC-8A53-728A2C968394',	'1DF689F9-0F98-4BCE-A503-0A2349DC561E',	'D71D9770-D1F0-4A2C-8928-1FD46AAEDA50',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('97B6A6C3-5C2F-4838-AFCC-7784DC942E35',	'3829C529-FFA7-4FEC-8D8D-E09149E20F8F',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('B0751EF8-1536-4D1B-9CA2-7A74033FAE9F',	'2564F61E-5B0C-4093-AE5A-E4016A7987DD',	'AAE55E0B-B277-4BF2-9495-EB428CFC2897',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('CECDF7D2-47B1-4AAA-A666-7D0AA9A87254',	'685D9A83-AFBD-4A46-8D91-6DBFEFD9AEA0',	'FB7515D9-E39E-4812-83CC-E10AE502A9FF',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('47842724-9B62-4360-8E83-8043FAAD4CE0',	'3829C529-FFA7-4FEC-8D8D-E09149E20F8F',	'D71D9770-D1F0-4A2C-8928-1FD46AAEDA50',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('B9024D46-C3B8-43B3-98A0-80ECFE618430',	'1DF689F9-0F98-4BCE-A503-0A2349DC561E',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('B6C98DBA-259C-4AAE-8C47-8282121842B1',	'91B9773B-4FA5-4740-9E2D-152E97EB45C8',	'6440A192-C094-45A3-97E1-EFAA9C66CFFB',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('60A6C0D0-5A11-4DB2-9398-875E8DAFDB88',	'2914F0BE-ED84-4398-B772-8BFB89B45E84',	'7C248213-A65C-4810-BCB9-B9D5CDC887F2',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('78E0628C-FF91-4905-A3C0-902D57FDD127',	'B40185A2-9DC1-4FFE-9809-16CC5723EA69',	'574FE2B4-5483-4207-AA78-68BEDEEAB319',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('06613B33-06FB-48B2-B9D8-91BC8CD0FD7B',	'BD5E0E2D-F24D-470F-95F9-BE5EEAA9A7FC',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('701DEA7A-C44D-4D2C-9488-921137E6DA9B',	'1DF689F9-0F98-4BCE-A503-0A2349DC561E',	'6440A192-C094-45A3-97E1-EFAA9C66CFFB',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('D5C4BA01-BA99-4572-AE0B-95A7D1EB4D71',	'EABCC08E-9461-4CA2-8F83-524FF73FAE4D',	'6440A192-C094-45A3-97E1-EFAA9C66CFFB',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('BB7B9A77-30BA-4580-A2CF-9C728E0521BC',	'2F520093-E58A-40D8-B314-7E1B153FA74B',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('08A89D1E-E9EB-4BCE-9F54-9CBA8EEB4389',	'EABCC08E-9461-4CA2-8F83-524FF73FAE4D',	'E575DE0B-3348-4701-A772-980B72FC953B',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('0FFB9936-137E-441C-A493-9EF6F5D39D0D',	'E0CDBFC8-25EC-4FFD-992E-9AC773279E3E',	'F1DDF2DB-1FFD-4155-B49B-DBDEBCA530EE',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('AB533F10-3176-472F-9975-A1F9EC030ED0',	'6F0FD788-A310-499E-B32E-FD65D7B63E3E',	'F1DDF2DB-1FFD-4155-B49B-DBDEBCA530EE',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('08574212-5815-430C-9099-A254F1DF6E92',	'B76D0575-130B-4C47-862E-3FBE246AD9F0',	'6440A192-C094-45A3-97E1-EFAA9C66CFFB',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('8623201A-FA49-4B5F-9AE3-A4CC778DDE48',	'B93753CA-9EC1-46FC-BC08-66197F4CF5D3',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('DCD55E87-7F3F-477E-BB9A-A4D114FFAF22',	'2C8EA565-7066-48B9-BF82-26E3C25974CB',	'E575DE0B-3348-4701-A772-980B72FC953B',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('41ECDA4A-A68B-4AE3-AA00-A92BCD4D077B',	'1DF689F9-0F98-4BCE-A503-0A2349DC561E',	'6D86C92B-294D-4AC9-B161-5EB5253DFD05',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('859D8734-BE37-49A5-8BFF-B180F3F648C3',	'6201421D-1382-4B0D-A018-C1F3F8CBCB7E',	'D71D9770-D1F0-4A2C-8928-1FD46AAEDA50',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('BCB1F99B-CC18-4C8E-B22B-B37953F96D14',	'B93753CA-9EC1-46FC-BC08-66197F4CF5D3',	'AAE55E0B-B277-4BF2-9495-EB428CFC2897',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('82E271F6-8A5B-4352-A082-B9CCC20A4B44',	'0DDE4FDF-1C1D-46CF-8522-71CF46E71552',	'E575DE0B-3348-4701-A772-980B72FC953B',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('5678E120-A12C-4132-8E17-BBFD75A9D43A',	'2564F61E-5B0C-4093-AE5A-E4016A7987DD',	'D71D9770-D1F0-4A2C-8928-1FD46AAEDA50',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('50D2A2E6-D458-456F-8795-C07F8E639762',	'E0CDBFC8-25EC-4FFD-992E-9AC773279E3E',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('64919CAE-40B8-4B36-88E1-CA8B5F7F3994',	'B76D0575-130B-4C47-862E-3FBE246AD9F0',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('360B104A-FE5C-42BB-BF5C-CB8345156930',	'EABCC08E-9461-4CA2-8F83-524FF73FAE4D',	'46916699-BC4F-43A9-B2BF-F41076F080A1',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('7988DB36-A882-49CD-8B6C-D433969075CB',	'91B9773B-4FA5-4740-9E2D-152E97EB45C8',	'7C248213-A65C-4810-BCB9-B9D5CDC887F2',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('E5205651-C97E-4865-AC8D-DCDFB6EE5E98',	'262FEC38-775A-4B3A-821D-8172C483841A',	'41C3191B-6947-4CF8-8456-772C885F08DD',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('94F31F99-06BD-400B-8D29-DD5E1323AAB5',	'1DF689F9-0F98-4BCE-A503-0A2349DC561E',	'7C248213-A65C-4810-BCB9-B9D5CDC887F2',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('2120D715-18A7-461B-8E68-DE061DD2606B',	'569FF941-AE9A-444C-B574-BF20ABF42E21',	'9DFE8287-FC8E-4EEC-A0D8-10FB8BC7FC06',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('D82C5708-DAB3-4FFD-BAC1-E22EC9EBEE29',	'B40185A2-9DC1-4FFE-9809-16CC5723EA69',	'5E19FDE2-7C6E-4201-B7D7-52F9E0F4D664',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('ED86E372-FF47-4D03-971F-E6448ACD7A32',	'9435256B-1E1B-4926-81EE-B73C607EAE83',	'3A3BEE3F-96C1-4BBB-975E-5F36FC706AB9',	1)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('B51BD60A-79EB-46D1-A31D-ED8AAB38304E',	'72BBA381-08B2-44B2-AA31-BE12AF022FCE',	'AAE55E0B-B277-4BF2-9495-EB428CFC2897',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('BA803942-2E91-493D-8E55-F25D5EB84EBC',	'2C8EA565-7066-48B9-BF82-26E3C25974CB',	'46916699-BC4F-43A9-B2BF-F41076F080A1',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('73B9ECB9-35C5-4692-B5FC-F6DAC65624B9',	'EABCC08E-9461-4CA2-8F83-524FF73FAE4D',	'AAE55E0B-B277-4BF2-9495-EB428CFC2897',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('7157BA5B-6DC0-4CFA-A733-F75A2D6C3FA0',	'6F0FD788-A310-499E-B32E-FD65D7B63E3E',	'AAE55E0B-B277-4BF2-9495-EB428CFC2897',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('E37927D3-E4FD-42C3-84B9-F8012F1ECB03',	'3829C529-FFA7-4FEC-8D8D-E09149E20F8F',	'6D86C92B-294D-4AC9-B161-5EB5253DFD05',	0)
	INSERT INTO [dbo].[AviatorPilots_AirplaneAirplans] VALUES('03AFAC74-DAC1-4933-A2BA-FFB2735147DA',	'262FEC38-775A-4B3A-821D-8172C483841A',	'F1DDF2DB-1FFD-4155-B49B-DBDEBCA530EE',	0)
    
END
GO

/****** Object:  ForeignKey [FK_City_Country]    Script Date: 11/02/2017 09:46:33 ******/
ALTER TABLE [dbo].[City]  WITH NOCHECK ADD  CONSTRAINT [FK_City_Country] FOREIGN KEY([Country])
REFERENCES [dbo].[Country] ([Oid])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Country]
GO


/****** Object:  ForeignKey [FK_Airport_City]    Script Date: 11/02/2017 09:46:33 ******/
ALTER TABLE [dbo].[Airport]  WITH NOCHECK ADD  CONSTRAINT [FK_Airport_City] FOREIGN KEY([City])
REFERENCES [dbo].[City] ([Oid])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[Airport] CHECK CONSTRAINT [FK_Airport_City]
GO


/****** Object:  ForeignKey [FK_Airplane_Airport]    Script Date: 11/02/2017 09:46:33 ******/
ALTER TABLE [dbo].[Airplane]  WITH NOCHECK ADD  CONSTRAINT [FK_Airplane_Airport] FOREIGN KEY([Airport])
REFERENCES [dbo].[Airport] ([Oid])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[Airplane] CHECK CONSTRAINT [FK_Airplane_Airport]
GO


/****** Object:  ForeignKey [FK_Airplane_Fuel]    Script Date: 11/02/2017 09:46:33 ******/
ALTER TABLE [dbo].[Airplane]  WITH NOCHECK ADD  CONSTRAINT [FK_Airplane_Fuel] FOREIGN KEY([Fuel])
REFERENCES [dbo].[Fuel] ([Oid])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[Airplane] CHECK CONSTRAINT [FK_Airplane_Fuel]
GO


/****** Object:  ForeignKey [FK_Airplane_Manufacturer]    Script Date: 11/02/2017 09:46:33 ******/
ALTER TABLE [dbo].[Airplane]  WITH NOCHECK ADD  CONSTRAINT [FK_Airplane_Manufacturer] FOREIGN KEY([Manufacturer])
REFERENCES [dbo].[Country] ([Oid])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[Airplane] CHECK CONSTRAINT [FK_Airplane_Manufacturer]
GO


/****** Object:  ForeignKey [FK_Aviator_Airport]    Script Date: 11/02/2017 09:46:35 ******/
ALTER TABLE [dbo].[Aviator]  WITH NOCHECK ADD  CONSTRAINT [FK_Aviator_Airport] FOREIGN KEY([Airport])
REFERENCES [dbo].[Airport] ([Oid])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[Aviator] CHECK CONSTRAINT [FK_Aviator_Airport]
GO


/****** Object:  ForeignKey [FK_AviatorPilots_AirplaneAirplans_Airplans]    Script Date: 11/02/2017 09:46:35 ******/
ALTER TABLE [dbo].[AviatorPilots_AirplaneAirplans]  WITH NOCHECK ADD  CONSTRAINT [FK_AviatorPilots_AirplaneAirplans_Airplans] FOREIGN KEY([Airplans])
REFERENCES [dbo].[Airplane] ([Oid])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[AviatorPilots_AirplaneAirplans] CHECK CONSTRAINT [FK_AviatorPilots_AirplaneAirplans_Airplans]
GO


/****** Object:  ForeignKey [FK_AviatorPilots_AirplaneAirplans_Pilots]    Script Date: 11/02/2017 09:46:35 ******/
ALTER TABLE [dbo].[AviatorPilots_AirplaneAirplans]  WITH NOCHECK ADD  CONSTRAINT [FK_AviatorPilots_AirplaneAirplans_Pilots] FOREIGN KEY([Pilots])
REFERENCES [dbo].[Aviator] ([Oid])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[AviatorPilots_AirplaneAirplans] CHECK CONSTRAINT [FK_AviatorPilots_AirplaneAirplans_Pilots]
GO
