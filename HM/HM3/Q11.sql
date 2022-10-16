-- 11. Write a query to get the first_name and last_name of the employees 
-- who have a manager that is currently working in a USA based department.

select E.FIRST_NAME, E.LAST_NAME, D.LOCATION_ID
from departments as D, employees as E, employees as M
where 	E.MANAGER_ID = M.EMPLOYEE_ID and
		M.DEPARTMENT_ID = D.DEPARTMENT_ID and
        D.LOCATION_ID in (select locations.LOCATION_ID
						from locations
                        where locations.COUNTRY_ID = 'US');