EXECUTE AS USER = 'brian3' ;
SELECT TOP 10 
       CreditCardID
      ,CardType
      ,CardNumber
      ,ExpMonth
      ,ExpYear
      ,ModifiedDate
  FROM Sales.CreditCard ;
REVERT
