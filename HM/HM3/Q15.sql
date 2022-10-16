-- 15. Write a query to get the department’s id and the number of employees in the department. 
-- The results should contain two keys: “Department Name” and “Number of Employees”.

select D.DEPARTMENT_ID, D.DEPARTMENT_NAME, count(E.EMPLOYEE_ID) as number_of_employees
from employees as E, departments as D
group by DEPARTMENT_ID