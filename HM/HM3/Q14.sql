-- 14. Write a query to find the employee_id, job, department’s id and name of the employees working in Seattle.

select E.EMPLOYEE_ID, E.JOB_ID, D.DEPARTMENT_ID, E.FIRST_NAME, E.LAST_NAME
from employees as E, departments as D, locations as L
where E.DEPARTMENT_ID = D.DEPARTMENT_ID and
	D.LOCATION_ID = L.LOCATION_ID and
    L.CITY = 'Seattle';