create schema employee ;
use employee ; 
desc data_science_team ; 

/*6.	Write a query to list only those employees who have someone reporting to them. 
Also, show the number of reporters (including the President).*/ 
-- SELF JOIN
select 
	e1.EMP_ID as EMPLOYEE_ID, 
    e1.FIRST_NAME as EMPLOYEE_NAME, 
    e2.MANAGER_ID as MANAGER_ID
from emp_record_table as e1 
	inner join emp_record_table as e2 
		on e1.EMP_ID = e2.MANAGER_ID ; 
        
/*7.	Write a query to list down all the employees from the healthcare and finance departments using union.
 Take data from the employee record table.*/ 
 
SELECT 
    EmployeeID,
    EmployeeName,
    Department
FROM 
    Employee
WHERE Department = 'Healthcare'

UNION 
SELECT 
    EmployeeID,
    EmployeeName,
    Department
FROM 
    Employee WHERE Department = 'Finance';    
    
    
    
    
    