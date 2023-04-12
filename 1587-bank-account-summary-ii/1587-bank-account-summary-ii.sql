# Write your MySQL query statement below

select name,sum(amount) as balance
from Transactions 
join Users 
using (account)
group by name  
having sum(amount)>10000       