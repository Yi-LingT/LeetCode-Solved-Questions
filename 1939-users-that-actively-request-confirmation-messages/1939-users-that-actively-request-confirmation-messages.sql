

select distinct C1.user_id 
from Confirmations C1
join Confirmations C2
on C1.user_id=C2.user_id
and C1.time_stamp<C2.time_stamp 
and timestampdiff(second,C1.time_stamp,C2.time_stamp)<=86400