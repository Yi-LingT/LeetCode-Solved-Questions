# Write your MySQL query statement below

select id, 
sum(if(month="Jan",revenue,null))Jan_Revenue,
sum(if(month="Feb",revenue,null))Feb_Revenue ,
sum(if(month="Mar",revenue,null))Mar_Revenue ,
sum(if(month="Apr",revenue,null))Apr_Revenue,
sum(if(month="May",revenue,null))May_Revenue,
sum(if(month="Jun",revenue,null))Jun_Revenue,
sum(if(month="Jul",revenue,null))Jul_Revenue,
sum(if(month="Aug",revenue,null))Aug_Revenue,
sum(if(month="Sep",revenue,null))Sep_Revenue,
sum(if(month="Oct",revenue,null))Oct_Revenue,
sum(if(month="Nov",revenue,null))Nov_Revenue,
sum(if(month="Dec",revenue,null))Dec_Revenue
from Department
group by id