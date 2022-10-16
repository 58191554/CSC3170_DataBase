-- 9. Write a query that get the number of employees who have the same job.
--  The results should contain job_id and its number of employees.

select employees.JOB_ID, count(employees.EMPLOYEE_ID) as job_count
from employees
group by JOB_ID;
