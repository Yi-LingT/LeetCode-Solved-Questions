# Write your MySQL query statement below


select E.employee_id , E.name  ,count(*) as reports_count , round(avg(M.age),0) average_age 
from Employees E
join Employees M 
on E.employee_id =M.reports_to 
group by E.employee_id
order by E.employee_id