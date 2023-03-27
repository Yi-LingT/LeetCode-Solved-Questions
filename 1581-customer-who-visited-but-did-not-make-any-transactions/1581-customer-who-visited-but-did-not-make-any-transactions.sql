# Write your MySQL query statement below


select customer_id, count(ifnull(transaction_id,1)) as count_no_trans 
from Visits V
left join Transactions T 
using (visit_id)
where visit_id  is not null
and transaction_id is null
group by customer_id