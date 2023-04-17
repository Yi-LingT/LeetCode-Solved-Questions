# Write your MySQL query statement below

with cte as
(select *,rank()over (partition by user_id order by time_stamp desc) as rnk
from Logins 
where year(time_stamp)=2020)

select  user_id,time_stamp as last_stamp          
from cte
where rnk =1


# SELECT
#     user_id,
#     MAX(time_stamp) AS last_stamp #obtaining latest login for all users
# FROM Logins
# WHERE YEAR(time_stamp) = 2020 #filtering for login dates with year 2020 in timestamp
# GROUP BY user_id;