CREATE PROCEDURE ReturnCredCardInfo @BusinessEntityID INT
AS
BEGIN
	SELECT p.BusinessEntityID, p.firstName, p.LastName, cc.CardNumber, cc.CardType, cc.ExpMonth, cc.ExpYear
	FROM Person.Person p
	INNER JOIN Sales.PersonCreditCard pcc
		ON p.BusinessEntityID = pcc.BusinessEntityID
		INNER JOIN Sales.CreditCard cc
			ON pcc.CreditCardID = cc.CreditCardID 
	WHERE p.BusinessEntityID = @BusinessEntityID ;
END
