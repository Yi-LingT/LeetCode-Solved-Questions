

select dept_name,count(student_id )   student_number 
from  Department D
left join Student S
using (dept_id)
group by dept_name   
order by student_number desc, dept_name 