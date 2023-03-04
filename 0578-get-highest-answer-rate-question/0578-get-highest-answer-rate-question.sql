
with cte as
(select question_id,sum(case when action="answer" then 1 else 0 End)/sum(case when action="show" then 1 else 0 End) as calculation
from SurveyLog 
group by question_id)

select question_id as survey_log 
from cte
order by calculation desc,question_id asc
limit 1
