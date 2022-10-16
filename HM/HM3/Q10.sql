-- 10. Write a query to calculate the average salary for all departments that have over 10 employees. 
-- The results should contain department_id, the corresponding average salary, and the number of employees.

select E.DEPARTMENT_ID as department_id, avg(E.SALARY) as avg_salary,count(E.EMPLOYEE_ID) as employee_number
from employees as E
group by E.DEPARTMENT_ID
having count(E.EMPLOYEE_ID) > 10