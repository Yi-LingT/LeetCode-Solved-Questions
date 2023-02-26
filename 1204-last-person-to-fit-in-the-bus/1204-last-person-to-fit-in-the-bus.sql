# Write your MySQL query statement below

with cte as
(select * ,sum(weight)over(order by turn) as Total_Weight
from Queue )

select person_name
from cte
where Total_Weight<=1000
order by Total_Weight desc
limit 1