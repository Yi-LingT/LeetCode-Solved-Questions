
WITH cte AS
(SELECT first_col, ROW_NUMBER() OVER (ORDER BY first_col ASC) row1 
FROM Data),
cte2 AS
(SELECT second_col, ROW_NUMBER() OVER (ORDER BY second_col DESC) row2 
FROM Data)

SELECT first_col, second_col
FROM cte 
JOIN cte2
ON cte.row1=cte2.row2