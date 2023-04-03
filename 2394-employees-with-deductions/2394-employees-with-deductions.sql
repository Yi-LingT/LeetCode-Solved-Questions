with cte as
(select *,sum(CEIL(timestampdiff(second,in_time,out_time)/60)) as total
from Logs 
group by employee_id )


select employee_id 
from Employees E 
left join cte C
using (employee_id)
where needed_hours*60>ifnull(total,0)