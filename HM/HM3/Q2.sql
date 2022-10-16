-- Show the first_name and last_name of all employees using alias name "First Name", "Last Name".
select FIRST_NAME as "First Name" , LAST_NAME as "Last Name" 
from employees order by (LAST_NAME) asc