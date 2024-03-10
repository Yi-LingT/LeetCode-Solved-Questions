SELECT LEFT(trans_date,7) AS MONTH, country ,COUNT(*) AS trans_count,
sum(if(state='approved',1,0)) AS approved_count,
sum(amount)  as trans_total_amount,
sum(amount)-sum(if(state='declined',amount,0)) as approved_total_amount 

FROM Transactions 
GROUP BY month, country  

  