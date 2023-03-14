# Write your MySQL query statement below

select user_id,(concat(upper(SUBSTR(name,1,1)),lower(SUBSTR(name,2)))) as name
from Users 
order by user_id