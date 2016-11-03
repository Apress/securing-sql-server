USE AdventureWorks2016
GO

--Open the key
OPEN SYMMETRIC KEY CreditCardKey
DECRYPTION BY CERTIFICATE CreditCardCert;

--Decrypt the data, using the symmetric key
SELECT CONVERT(NVARCHAR(30), DECRYPTBYKEY(CardNumberEncrypted)) AS CreditCardNumber
FROM Sales.CreditCard ;

--Close the key
CLOSE SYMMETRIC KEY CreditCardKey ;
