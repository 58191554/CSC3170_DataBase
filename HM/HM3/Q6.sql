-- 6. Show the employee(s) that is the manager of some department, but doesn't manages any other employees. 

select DM.EMPLOYEE_ID
from employees as DM, departments as D
where D.MANAGER_ID = DM.EMPLOYEE_ID and DM.EMPLOYEE_ID not in(

select M.EMPLOYEE_ID
from employees as E, employees as M
where E.MANAGER_ID = M.EMPLOYEE_ID)