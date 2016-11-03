CREATE DATABASE AUDIT SPECIFICATION [DatabaseAuditSpecification-AdventureWorks2016]
FOR SERVER AUDIT [Audit-CarterSecureSafe]
ADD (DELETE ON OBJECT::Person.Person BY public) ;
