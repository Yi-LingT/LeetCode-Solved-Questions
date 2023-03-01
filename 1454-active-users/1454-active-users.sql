select distinct L1.id,A.name
from Logins L1
join Logins L2
on L1.id= L2.id and datediff(L1.login_date,L2.login_date) between 1 and 4
join Accounts A
on L1.id=A.id
group by L1.id,L1.login_date
having count(distinct L2.login_date)>=4
order by L1.id