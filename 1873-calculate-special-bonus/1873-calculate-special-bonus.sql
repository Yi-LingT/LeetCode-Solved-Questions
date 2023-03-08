# Write your MySQL query statement below

select employee_id,
(case when name like "M%" then 0 
when MOD(employee_id,2)<>0 then salary  
else 0 end) bonus 
from Employees 
order by employee_id
