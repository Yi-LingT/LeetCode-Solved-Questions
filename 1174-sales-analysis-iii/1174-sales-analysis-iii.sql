# Write your MySQL query statement below
select DISTINCT P.product_id, P.product_name 
from Product P
join Sales S
on P.product_id =S.product_id 
where S.sale_date between '2019-01-01' and '2019-03-31'
and S.product_id NOT IN
(select product_id 
from Sales 
where sale_date  < '2019-01-01' OR  sale_date  >'2019-03-31')