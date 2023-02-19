with cte as
(select log_id,row_number()over(order by log_id) as row_id,
       log_id-row_number()over(order by log_id)  as diff
from Logs )

select min(log_id) as start_id,
       max(log_id) as end_id
from cte
group by diff 