# Write your MySQL query statement below

select name as warehouse_name ,sum(Width*Length*Height*units) as volume            
from Warehouse W
join Products P
on W.product_id = P.product_id 
group by name     