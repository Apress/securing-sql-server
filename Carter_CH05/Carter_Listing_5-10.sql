USE AdventureWorks2016
GO

CREATE PROCEDURE dbo.AddCreditCard
					@BusinessEntityID	INT
					,@CreditCardNumber	NVARCHAR(25)
					,@CardType		NVARCHAR(50)
					,@ExpMonth		TINYINT
					,@ExpYear		SMALLINT
					,@Password		NVARCHAR(128)
AS
BEGIN
	DECLARE @CreditCardID	INT ;
	BEGIN TRANSACTION
		INSERT INTO Sales.CreditCard
				( CardType ,
				  ExpMonth ,
				  ExpYear ,
				  ModifiedDate,
				  CardNumberEncrypted
				)
		VALUES  ( @CardType,
				  @ExpMonth,
				  @ExpYear,
				  SYSDATETIME(),
				  ENCRYPTBYPASSPHRASE(@Password, @CreditCardNumber, 0) 
				) ;
		SET @CreditCardID = @@IDENTITY ;

		INSERT INTO Sales.PersonCreditCard
				( BusinessEntityID ,
				  CreditCardID ,
				  ModifiedDate
				)
		VALUES  ( @BusinessEntityID,
				  @CreditCardID,
				  SYSDATETIME()
				) ;
	COMMIT
END
GO

CREATE PROCEDURE ReturnCredCardInfo 
					@BusinessEntityID	INT
					,@Password		NVARCHAR(128)
AS
BEGIN
	SELECT 
		CONVERT(NVARCHAR(25), DECRYPTBYPASSPHRASE(@Password,cc.CardNumberEncrypted, 0)) AS CreditCardNumber
	FROM Person.Person p
	INNER JOIN Sales.PersonCreditCard pcc
		ON p.BusinessEntityID = pcc.BusinessEntityID
		INNER JOIN Sales.CreditCard cc
			ON pcc.CreditCardID = cc.CreditCardID 
	WHERE p.BusinessEntityID = @BusinessEntityID ;
END
GO
