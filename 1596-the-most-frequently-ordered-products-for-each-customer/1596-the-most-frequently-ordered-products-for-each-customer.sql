
with cte as
(select customer_id,product_id,dense_rank()over(partition by customer_id order by count(*) desc) rk
from  Orders 
group by 1,2)

select customer_id, cte.product_id,product_name
from cte
join Products 
using (product_id)
where rk =1