
with cte as
(select S.user_id, S.product_id,
sum(quantity*price) as Spent, 
dense_rank()over(partition by S.user_id order by sum(quantity*price) desc) "rk"
from Sales S
join Product P
using(product_id)
group by S.user_id,S.product_id)

select  user_id,product_id 
from cte 
where rk=1
