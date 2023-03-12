# Write your MySQL query statement below
with cte as
(select host_team as team_id , sum(case when host_goals> guest_goals then 3 
when  host_goals= guest_goals then 1 else 0 end) as num_points    
from Matches 
group by host_team
union all 
select guest_team as team_id, sum(case when guest_goals >host_goals then 3 
when  host_goals= guest_goals then 1 else 0 end) as num_points    
from Matches 
group by guest_team)

select team_id, team_name, IFNULL(sum(num_points),0) num_points
from cte
right join Teams 
using (team_id)
group by  team_id
order by num_points desc,team_id  asc