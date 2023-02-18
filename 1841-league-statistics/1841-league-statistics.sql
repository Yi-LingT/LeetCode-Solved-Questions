with cte as
(select home_team_id  as team_id, home_team_goals as home, away_team_goals as away
from Matches 
union all
select away_team_id   as team_id, away_team_goals as home, home_team_goals as away
from Matches )

select team_name, count(*)matches_played,
sum(case when home > away then 3
    when home = away then 1
    else 0 End
    )points,
sum(home) goal_for,  
sum(away) goal_against,
sum(home-away) goal_diff 
from cte
join Teams 
using(team_id)
group by team_name 
order by points desc,goal_diff desc,team_name 