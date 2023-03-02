
with cte as
(select *,datediff(lead(visit_date,1,'2021-01-01')over (partition by user_id order by visit_date),visit_date) as temp
from UserVisits )

select user_id,max(temp)as biggest_window
from cte
group by user_id
order by user_id