-- 12. Write a query to get the employee_id and salary of the employees 
-- whose salary is larger than the average salary of all departments.



select E.EMPLOYEE_ID, E.SALARY

from employees as E
    
where E.SALARY > all(select avg(employees.SALARY) 
					from employees
                    group by employees.DEPARTMENT_ID);



