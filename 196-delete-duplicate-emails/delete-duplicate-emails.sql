with cte as
(select *,row_number() over (partition by email order by id) as r_num
from Person  )

delete from Person
where id in 
(select id
from cte 
where r_num <>1)