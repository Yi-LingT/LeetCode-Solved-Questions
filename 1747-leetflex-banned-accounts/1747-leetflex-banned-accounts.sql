select distinct (A.account_id)
from LogInfo A
join LogInfo B
on A.account_id=B.account_id and A.ip_address<>B.ip_address
and ((a.logout between b.login and b.logout) or (b.logout between a.login and a.logout))