select user_id as buyer_id,join_date,sum(if(order_id is not null,1,0)) as orders_in_2019 
from Users U
left join Orders O
on U.user_id =O.buyer_id 
And YEAR(order_date) = '2019'
group by user_id,join_date


