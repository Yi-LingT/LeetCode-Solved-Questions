with cte as
(select *
from Employees 
left join Salaries 
using (employee_id)
union 
select *
from Employees 
right join Salaries 
using (employee_id))

select employee_id 
from cte
where name is null or salary is null
order by employee_id 