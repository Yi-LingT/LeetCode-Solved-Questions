with cte as
(select *,
dense_rank() over (partition by student_id  order by grade desc,course_id asc) rk
from Enrollments 
)

select student_id,course_id,grade
from cte
where rk=1