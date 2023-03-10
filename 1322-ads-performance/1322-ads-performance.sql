# Write your MySQL query statement below


select ad_id,IFNULL(round((sum(if(action="Clicked",1,0))/sum(if(action="Clicked" or action="Viewed",1,0)))*100,2),0) as ctr   
from Ads 
group by ad_id 
order by ctr desc,ad_id asc