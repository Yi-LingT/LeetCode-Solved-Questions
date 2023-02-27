# Write your MySQL query statement below

select followee as follower ,count(follower) num 
from Follow 
where followee in (select follower from Follow ) 
group by followee
order by follower 




