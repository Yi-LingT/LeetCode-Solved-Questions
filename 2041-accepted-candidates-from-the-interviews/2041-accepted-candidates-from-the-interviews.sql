# Write your MySQL query statement below

select  candidate_id 
from Candidates C
join Rounds R
using (interview_id)
where years_of_exp>=2
group by candidate_id
having sum(score)>15 
