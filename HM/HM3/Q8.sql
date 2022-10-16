-- 8. Write a query that selects the first_name of employees having 'a' as the second character.

select E.FIRST_NAME
from employees as E
where E.FIRST_NAME like '_a%';