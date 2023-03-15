select company_id ,employee_id,employee_name,
Round((case when max(salary)over(partition by company_id)<1000 then salary
     when max(salary)over(partition by company_id) between 1000 and 10000 then salary-salary*.24
     else salary-salary*.49 end),0) salary 
from Salaries 

