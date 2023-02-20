# Write your MySQL query statement below


WITH CTE AS
(SELECT concat(lat,",",lon) location
FROM Insurance 
GROUP BY lat,lon
having count(*)>1
),
cte2 as
(select distinct I1.tiv_2015, I1.tiv_2016  as tiv_2016
from Insurance I1
join Insurance I2
on I1.pid<>I2.pid 
and  I1.tiv_2015=I2.tiv_2015
where concat(I1.lat,",",I1.lon) not in (select location from cte))

select round(sum(tiv_2016),2) tiv_2016
from cte2