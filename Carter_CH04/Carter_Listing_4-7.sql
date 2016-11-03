USE AdventureWorks2016
GO

ALTER TABLE Sales.CreditCard 
ALTER COLUMN CardNumber ADD MASKED WITH (FUNCTION = 'partial(0,"XXXX-XXXX-XXXX-",4)');
