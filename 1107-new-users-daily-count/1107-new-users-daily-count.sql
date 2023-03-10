# Write your MySQL query statement below

with cte as
(select user_id ,activity ,min(activity_date)over(partition by user_id,activity ) login_date
from Traffic
where activity = "login")


select login_date, count(distinct user_id ) user_count  
from cte 
where login_date >= date_sub("2019-06-30",interval 90 day ) 
group by login_date 