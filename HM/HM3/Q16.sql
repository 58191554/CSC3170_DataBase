-- 16. Write a query to get the department_id, department_name, and manager's first_name for departments.

select D.DEPARTMENT_ID, D.DEPARTMENT_NAME, M.FIRST_NAME
from departments as D, employees as M
where D.MANAGER_ID = M.EMPLOYEE_ID