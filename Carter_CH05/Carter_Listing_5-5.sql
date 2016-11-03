USE AdventureWorks2016
GO

ALTER TABLE Sales.CreditCard ADD
	CardNumberEncrypted varbinary(8000) NULL ;
