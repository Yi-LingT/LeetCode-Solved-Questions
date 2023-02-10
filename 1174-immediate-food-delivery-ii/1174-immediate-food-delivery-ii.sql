with cte as
(select 
customer_id,
(case when min(order_date)=min(customer_pref_delivery_date) then 1 else 0 End) I_Counts
from Delivery 
group by customer_id )

select  round((sum(I_Counts)/count(customer_id))*100,2) immediate_percentage
from cte