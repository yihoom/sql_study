SELECT e.first_name
FROM sql_hr.employees e
where e.salary > (
select 
avg(salary)
from sql_hr.employees
)