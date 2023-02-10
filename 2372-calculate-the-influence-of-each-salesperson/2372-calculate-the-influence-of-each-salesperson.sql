
with cte as 
(select S.salesperson_id,name,customer_id
from Salesperson S
left join Customer C
on S.salesperson_id=C.salesperson_id)

select salesperson_id,name,IFNULL(sum(price),0) total
from cte
left join Sales
using (customer_id)
group by 1,2