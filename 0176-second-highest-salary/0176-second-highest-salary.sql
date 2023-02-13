with cte as
(select salary ,dense_rank()over(order by salary desc) rk
from Employee
)
select 
    ifnull(
        (select Max(salary) 
            from cte
            where rk=2),null) as SecondHighestSalary 

