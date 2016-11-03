USE AdventureWorks2016
GO

CREATE TABLE ChangeSchema
(
ID int
) ;
GO

ALTER SCHEMA Chapter5 TRANSFER dbo.ChangeSchema ;
GO
