with cte1 as
(select id,drink,row_number()over() sorting
from CoffeeShop),
    cte2 as(
    select *,sum(1-ISNULL(drink))over(order by sorting) grp
    from cte1)

    select id,first_value(drink)over(partition by grp) as drink            
    from cte2
    order by sorting
