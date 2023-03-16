

select U.user_id, U.user_name,
IFNULL(sum(case when U.user_id=T.paid_by then -amount else amount end ),0)+U.credit as credit,
case when IFNULL(sum(case when U.user_id=T.paid_by then -amount else amount end ),0)+U.credit>0 then "No" Else "Yes" End as credit_limit_breached
from Users U
left join Transactions T
on U.user_id=T.paid_by
or U.user_id=T.paid_to
group by U.user_id    

