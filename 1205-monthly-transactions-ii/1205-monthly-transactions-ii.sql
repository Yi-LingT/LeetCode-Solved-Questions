with cte as
(select C.trans_id as id, T.country,"Chargeback" state,T.amount,C.trans_date
from Transactions  T
join Chargebacks  C
on T.id=C.trans_id 
union all
select *
from Transactions )

select left(trans_date,7) month, country, 
Sum(if(state="approved",1,0)) approved_count,
Sum(if(state="approved",amount,0)) approved_amount,
Sum(if(state="Chargeback",1,0)) chargeback_count,
Sum(if(state="Chargeback",amount,0))  chargeback_amount
from cte
group by 1,2
Having approved_count>0 or approved_amount>0 or chargeback_count>0 or chargeback_amount>0

#In your query, given the month and country, ignore rows with all zeros.
#having approved_count>0 or approved_amount>0 or chargeback_count>0 or chargeback_amount>0
