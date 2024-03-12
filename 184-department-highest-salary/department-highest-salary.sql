with cte as(
select 
dense_rank() over(partition by D.name order by salary desc) as rk,
D.name as Department,
E.name as Employee,
salary 
from Employee  E
join Department D
on E.departmentId=D.id)

select Department ,Employee ,salary 
from cte
where rk=1