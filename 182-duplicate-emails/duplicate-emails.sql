with cte as (
select *,count(email)>1 as count1
from Person 
group by email )

select email
from cte 
where count1=1