

with cte as
(select salary ,dense_rank()over(order by salary desc) rk
from Employee
)

select Max(salary) as SecondHighestSalary 
from cte
where rk=2

/*Use MAX(salary) to aggregate the salary in outer loop.*/
/*Null situation, get one value either a subquery should be written or an aggregate function (MAX()) on the results should be put*/