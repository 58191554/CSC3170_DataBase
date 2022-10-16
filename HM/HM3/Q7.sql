-- 7. Write a query that selects employee_id, and phone_number of those employees 
-- who are in departments 20 or 100. The results should be descendingly ordered by the department_id.

select E.EMPLOYEE_ID, E.PHONE_NUMBER
from employees as E 
where E.DEPARTMENT_ID = '20' or E.DEPARTMENT_ID = '100' order by E.EMPLOYEE_ID asc;