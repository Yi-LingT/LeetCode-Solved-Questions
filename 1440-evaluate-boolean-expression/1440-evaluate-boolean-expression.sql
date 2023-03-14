select E.*,
( case when V1.value = V2.value and operator ="=" then "true"
       when V1.value > V2.value and operator =">" then "true"
       when V1.value < V2.value and operator ="<" then "true"
       else "false" End
) as value 
from Expressions E
join Variables V1
on E.left_operand  =V1.name 
join Variables V2
on E.right_operand =V2.name 