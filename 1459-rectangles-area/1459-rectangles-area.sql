#S1-
# with cte as
# (select P1.id P1, P2.id P2,
# (abs(P1.x_value-P2.x_value)*abs(P1.y_value-P2.y_value)) area
# from Points P1
# cross join Points P2
# )
# select *
# from cte
# where area<>0
# and p1<p2
# order by area desc,p1,p2

#S2-
SELECT  pt1.id as P1, pt2.id as P2,
		ABS(pt2.x_value - pt1.x_value)*ABS(pt2.y_value-pt1.y_value) as AREA
FROM Points pt1 JOIN Points pt2 
ON pt1.id<pt2.id
AND pt1.x_value!=pt2.x_value 
AND pt2.y_value!=pt1.y_value
ORDER BY AREA DESC, p1 ASC, p2 ASC;