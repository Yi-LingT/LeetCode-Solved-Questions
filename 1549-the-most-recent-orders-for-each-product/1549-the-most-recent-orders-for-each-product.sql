# Write your MySQL query statement below
with cte as
(select *,dense_Rank()over(partition by product_id order by order_date desc) as rk
from Orders 
order by rk asc
)

select  product_name,cte.product_id,cte.order_id,order_date 
from cte 
join Customers CU
using (customer_id)
join Products P
using (product_id )
where rk=1
order by product_name, cte.product_id, cte.order_id  
