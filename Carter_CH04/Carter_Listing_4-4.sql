USE AdventureWork2016
GO

CREATE SCHEMA Security ;  
GO  
  
ALTER FUNCTION Security.fn_securitypredicate(@OrganizationNode HIERARCHYID)  
    RETURNS TABLE  
WITH SCHEMABINDING  
AS  
RETURN SELECT 1 AS fn_securitypredicate_result   
FROM HumanResources.Employee e1
WHERE @OrganizationNode.IsDescendantOf(OrganizationNode) = 1  
AND LoginID = 'adventure-works\' + SUSER_SNAME() ;
GO
