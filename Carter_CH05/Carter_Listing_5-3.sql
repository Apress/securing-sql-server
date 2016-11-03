USE AdventureWorks2016
GO

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Pa$$w0rd' ;

BACKUP MASTER KEY TO FILE = 'c:\keys\Chapter10_master_key'
ENCRYPTION BY PASSWORD = 'Pa$$w0rd';

RESTORE MASTER KEY
FROM FILE = 'c:\keys\Chapter10_master_key'
--The password in the backup file
DECRYPTION BY PASSWORD = 'Pa$$w0rd' 
--The password it will be encrypted within the database
ENCRYPTION BY PASSWORD = 'Pa$$w0rd' ; 
