
with t1 as
( select contest_id,gold_medal as user_id
  from Contests 
  union all
  select contest_id,silver_medal as user_id
  from Contests 
  union all
  select contest_id,bronze_medal as user_id
  from Contests )
,t2 as
( select contest_id,user_id,rank()over(partition by user_id order by contest_id) as rk
  from t1)
,t3 as 
( select user_id
  from t2
  group by user_id,contest_id-rk
  having count(*)>=3
  union all
  select gold_medal as user_id 
  from Contests 
  group by gold_medal
  having count(*)>=3
)

select distinct name, mail 
from t3
join Users 
using (user_id )