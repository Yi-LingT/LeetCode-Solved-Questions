# Write your MySQL query statement below

select Emp.name as Employee 
from Employee Emp
join Employee Mgr
on Emp.managerId=Mgr.id
where Emp.salary >Mgr.salary 
