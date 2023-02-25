with cte as
(select passenger_id,min(B.arrival_time) as minbusarr
from Buses B
join Passengers P
on P.arrival_time<=B.arrival_time
group by passenger_id)

select bus_id,count(passenger_id) as passengers_cnt 
from Buses B
left join cte C
on B.arrival_time = C.minbusarr
group by bus_id
order by bus_id