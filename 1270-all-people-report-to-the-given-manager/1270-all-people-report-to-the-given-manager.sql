with cte as
(select employee_id 
from Employees 
where manager_id =1
),
cte2 as
(select employee_id 
from Employees 
where manager_id in (select employee_id from cte)
)
select employee_id 
from Employees 
where  manager_id  in (select employee_id from cte2)
and employee_id <>1