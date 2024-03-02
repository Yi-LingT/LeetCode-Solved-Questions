select customer_id , count(V.visit_id )-count(transaction_id ) as  count_no_trans
from Visits V
left join Transactions T
on V.visit_id =T.visit_id 
group by customer_id 
having count(V.visit_id )<>count(transaction_id )


