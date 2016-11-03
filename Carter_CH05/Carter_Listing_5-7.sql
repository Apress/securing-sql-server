--Set CardNumberEncrypted column to be NOT NULL
ALTER TABLE Sales.CreditCard
ALTER COLUMN CardNumberEncrypted VARBINARY(256) NOT NULL ;

--Do not run following section, if you plan to follow later examples

DROP INDEX AK_CreditCard_CardNumber ON Sales.CreditCard ;
GO

ALTER TABLE Sales.CreditCard
	DROP COLUMN CardNumber ;
