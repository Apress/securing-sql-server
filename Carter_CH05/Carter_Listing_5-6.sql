UPDATE Sales.CreditCard
  SET CardNumberEncrypted = ENCRYPTBYPASSPHRASE('Pa$$w0rd', CardNumber, 0) ;
