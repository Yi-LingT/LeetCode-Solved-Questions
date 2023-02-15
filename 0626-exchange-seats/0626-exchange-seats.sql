SELECT  row_number() over() as id, student
FROM seat
ORDER BY IF(MOD(id, 2) = 0, id-1, id+1) 

