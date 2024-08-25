# Write your MySQL query statement below
select product_name, year, price
from Product P
join Sales S
on P.product_id = S.product_id 

