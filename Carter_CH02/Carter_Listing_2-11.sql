USE master
GO

EXEC sp_configure 'show advanced options', 1 ;
GO

RECONFIGURE ;
GO

EXEC sp_configure 'contained database authentication', '1' ;
GO

RECONFIGURE WITH OVERRIDE ;

ALTER DATABASE AdventureWorks2016
	SET CONTAINMENT = PARTIAL 
	WITH NO_WAIT ;
GO

USE AdventureWorks2016
GO

CREATE USER Pete 
	WITH PASSWORD = 'Pa$$w0rd123' ;
GO
