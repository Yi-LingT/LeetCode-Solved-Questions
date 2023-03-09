# # Write your MySQL query statement below

# select 
# from Project 
# join Employee 
# using (employee_id)
# group by project_id,employee_id   
# order by experience_years 

with cte as 
(select *,dense_rank()over(partition by project_id order by experience_years desc ) rnk
from Employee  
join Project 
using (employee_id))

select project_id ,employee_id   
from cte
where rnk=1