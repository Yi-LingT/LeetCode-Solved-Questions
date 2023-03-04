with cte as
(select R1.user_id as user1_id ,R2.user_id as user2_id,count(R1.follower_id) cnt
from Relations R1
join Relations R2
on R1.user_id<R2.user_id
and R1.follower_id=R2.follower_id 
group by R1.user_id,R2.user_id)
 
select user1_id,user2_id
from cte
where cnt in (select max(cnt) from cte)