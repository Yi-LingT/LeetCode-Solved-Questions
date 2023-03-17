# Write your MySQL query statement below

with post as
(select distinct sub_id as post_id
from Submissions 
where parent_id is null
group by sub_id),

comment as
(select distinct parent_id as post_id, count(distinct sub_id) as count1
from Submissions
where parent_id is not null
group by parent_id 
)

select post_id,IFNULL(count1,0) as number_of_comments 
from post P
left join comment C
using (post_id)
order by post_id 

