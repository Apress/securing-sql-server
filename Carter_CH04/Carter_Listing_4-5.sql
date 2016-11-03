CREATE SECURITY POLICY Security.EmployeeSecurityPolicy
ADD FILTER PREDICATE Security.fn_securitypredicate(OrganizationNode) ON HumanResources.Employee
WITH (STATE=ON, SCHEMABINDING=ON) ;
