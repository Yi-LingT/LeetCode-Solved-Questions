

with cte as (select *,year(purchase_date) AS purchase_year
from orders
group by purchase_year, product_id
having count(order_id)>=3)

select  DISTINCT c1.product_id 
from cte as c1
join cte as c2
on c1.product_id=c2.product_id
AND c1.purchase_year=c2.purchase_year+1

