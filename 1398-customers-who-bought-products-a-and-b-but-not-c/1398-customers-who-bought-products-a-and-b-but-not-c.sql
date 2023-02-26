
with cte1 as
(select customer_id
from Orders
where  customer_id in (select customer_id from Orders where product_name="A")
and customer_id in (select customer_id from Orders where product_name="B")),
cte2 as
(select customer_id
from Orders
where  product_name="C"
)

select *
from Customers 
where customer_id in (select customer_id from cte1 )
and  customer_id not in (select customer_id from cte2 )
