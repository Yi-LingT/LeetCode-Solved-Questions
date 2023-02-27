# S1-Subquery
select followee as follower ,count(follower) num 
from Follow 
where followee in (select follower from Follow ) 
group by followee
order by follower 




# S2- Self-Join
# select F1.follower as follower, count(distinct f2.follower) as num
# from Follow F1
# join Follow F2
# on F1.follower =F2.followee 
# group by F1.follower
# order by F1.follower
