# Write your MySQL query statement below

select sale_date,sum(if(fruit="apples",sold_num,0))-sum(if(fruit="oranges",sold_num,0)) as diff
from Sales 
group by sale_date  