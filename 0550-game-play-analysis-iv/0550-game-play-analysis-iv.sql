with A1 as
(select player_id,min(event_date) min_date
from Activity 
group by player_id)

select round(count(distinct A2.player_id) /count( A1.player_id),2) fraction  
from A1
left join Activity A2 
on A1.player_id=A2.player_id
and A1.min_date+1=A2.event_date
