select distinct (P1.user_id )
from Purchases P1
join Purchases P2
on P1.user_id =P2.user_id 
and p1.purchase_id<>p2.purchase_id
and abs(datediff(P1.purchase_date,P2.purchase_date))<=7
order by P1.user_id
