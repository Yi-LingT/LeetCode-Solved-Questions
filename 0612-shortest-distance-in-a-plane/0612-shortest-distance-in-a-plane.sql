# Write your MySQL query statement below

select ROUND(min(SQRT(POWER(P2.X-P1.X,2)+POWER(P2.y-P1.y,2))),2) as shortest
from Point2D P1
join Point2D P2
on P1.x<>P2.x or P1.y<>P2.y
