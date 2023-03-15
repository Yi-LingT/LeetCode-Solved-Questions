
with cte as
(select *,rank()over(partition by customer_id order by order_date desc) rk
from Orders )

select name as customer_name,cte.customer_id,order_id,order_date 
from cte
join Customers  
using (customer_id)
where rk<=3
order by customer_name,cte.customer_id,order_date desc