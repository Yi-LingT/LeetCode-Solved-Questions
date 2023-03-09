# # Write your MySQL query statement below


with cte as
(select *,rank()over(partition by product_id order by year) R_num
from Sales 
)

select product_id,year as first_year,quantity ,price 
from cte
where R_num=1


