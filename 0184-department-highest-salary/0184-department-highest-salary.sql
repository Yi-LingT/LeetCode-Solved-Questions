
with cte as
(select D.name Department,E.name Employee,salary,dense_rank()over(partition by departmentId order by salary desc) rk
from Employee E
join Department D 
on E.departmentId = D.id)


select Department,  Employee, salary
from cte
where rk=1