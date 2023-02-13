
/**
Why  p1.id < p2.id ??
e.g. (2,3) and (3,2) are the same pair, and we only want one of them. Since these two combinations have the same area, we are asked to order them by p1.id ascending -> p1.id should be smaller than p2.id when there is a tie in area.
*/

select P1.id P1,P2.id P2,abs(P1.x_value-P2.x_value) *abs(P1.y_value-P2.y_value) as area
from Points P1
join Points P2
on P1.id<P2.id
and P1.x_value <>P2.x_value 
and P1.y_value <>P2.y_value 
order by area desc, p1,p2