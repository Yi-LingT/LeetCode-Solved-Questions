-- select customer_id , count(V.visit_id )-count(transaction_id ) as  count_no_trans
-- from Visits V
-- left join Transactions T
-- on V.visit_id =T.visit_id 
-- group by customer_id 
-- having count(V.visit_id )<>count(transaction_id )



SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans 
from Visits v 
LEFT JOIN Transactions t 
ON v.visit_id = t.visit_id  
WHERE t.transaction_id IS NULL 
GROUP BY v.customer_id; 