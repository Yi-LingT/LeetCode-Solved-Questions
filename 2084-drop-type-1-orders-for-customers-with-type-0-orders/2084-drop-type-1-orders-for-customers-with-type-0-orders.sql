select *
from Orders 
where (customer_id, order_type) in
    (SELECT customer_id, MIN(order_type) 
        FROM Orders 
        GROUP BY customer_id)