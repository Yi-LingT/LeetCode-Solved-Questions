select employee_id,name,salary,dense_rank()over(order by salary) team_id 
from
(select *,count(*)over(partition by salary) as cnt
from Employees ) C
where cnt>=2