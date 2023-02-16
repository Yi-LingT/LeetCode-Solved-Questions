
with cte as
(select account_id
from Subscriptions
where end_date between "2021-1-1" and "2021-12-31")

select count(account_id)  accounts_count
from cte 
join Streams
using (account_id)
where stream_date not between "2021-1-1" and "2021-12-31"