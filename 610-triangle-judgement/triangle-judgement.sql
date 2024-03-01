select *, (case 
when X+y>z  
and X+z>y  
and y+z>x  then "Yes" 
Else "No"
End
)  as triangle 
from Triangle 
