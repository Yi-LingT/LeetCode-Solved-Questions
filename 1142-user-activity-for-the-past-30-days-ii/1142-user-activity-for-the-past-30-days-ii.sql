# Write your MySQL query statement below

select ifnull(round(count(distinct session_id )/count(distinct user_id),2),0) as average_sessions_per_user 
from Activity 
where activity_date > date_sub("2019-07-27", interval 30 day)