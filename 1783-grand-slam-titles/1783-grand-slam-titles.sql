with cte as
(select  Wimbledon as player_id 
from Championships 
union all
select  Fr_open as player_id 
from Championships 
union all
select  US_open as player_id 
from Championships 
union all
select Au_open as player_id 
from Championships )


select player_id,player_name, count(player_id)as grand_slams_count 
from cte
join Players 
using (player_id)
group by player_id
