# Write your MySQL query statement below

select 
SUM(weekday(submit_date)>4) AS weekend_cnt ,
SUM(weekday(submit_date)<=4) AS working_cnt
from Tasks 


# 0 = Monday, 1 = Tuesday, 2 = Wednesday, 3 = Thursday, 4 = Friday, 5 = Saturday, 6 = Sunday.