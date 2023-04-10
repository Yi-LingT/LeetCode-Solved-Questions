# # Write your MySQL query statement below

select distinct seller_name 
from Seller 
left join Orders
using (seller_id)
where seller_id NOT IN 
    (select distinct seller_id 
    from Orders     
    where year(sale_date) = 2020 )
order by seller_name 

