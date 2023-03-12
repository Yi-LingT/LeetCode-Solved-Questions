with cte as(
select product_id, new_price as price,rank()over(partition by  product_id order by change_date desc) rk
from Products 
where change_date <= "2019-08-16"
)


select product_id,price
from cte
where rk=1
union 
select  product_id, 10 as price
from Products 
where product_id not in (select product_id from cte )