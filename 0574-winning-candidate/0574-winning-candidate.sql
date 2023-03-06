# Write your MySQL query statement below

select name
from Candidate C
join Vote V
on C.id=V.candidateId 
group by name
order by count(candidateId) desc
limit 1 
