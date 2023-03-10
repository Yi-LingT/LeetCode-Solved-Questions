with cte as 
(select action_date,count(distinct R.post_id)/count(distinct A.post_id) removal_rate
from Actions A
left join Removals R
using (post_id)
where extra ="spam" 
and action = 'report'
group by action_date )

select round(avg(removal_rate)*100,2) as average_daily_percent 
from cte 

