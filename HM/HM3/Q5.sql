-- 5. Show the employee_id and the monthly salary (round 2 decimal places) of all employees. 
select EMPLOYEE_ID, Round(SALARY/12, 2) as monthly_salary
from employees