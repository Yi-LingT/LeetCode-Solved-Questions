# Write your MySQL query statement below

with cte1 as 
(select departure_airport,flights_count 
from Flights 
union all
select arrival_airport,flights_count 
from Flights )
,cte2 as
(select departure_airport as airport_id,sum(flights_count) as cnt
from cte1
group by 1)

select airport_id
from cte2
where cnt = (select max(cnt) frp from cte2)


