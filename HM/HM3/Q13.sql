-- 13. Write a query to find the 4th lowest salary of employees. The results should also contain employee_id and salary.

-- select  employees.EMPLOYEE_ID, employees.SALARY
-- from employees 
-- order by employees.SALARY limit 1 offset 3

select distinct  employees.SALARY
from employees 
order by  employees.SALARY  limit 1 offset 3