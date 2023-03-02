with cte1 as
(select *,avg(occurences)over(partition by event_type) avg_act
from  Events )

select business_id 
from cte1
where occurences >avg_act
group by business_id
having count( event_type)>1