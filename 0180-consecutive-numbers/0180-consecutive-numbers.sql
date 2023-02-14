SELECT distinct l1.num ConsecutiveNums 
FROM
    Logs l1,
    Logs l2,
    Logs l3
WHERE
    l2.Id = l1.Id + 1
    AND l3.Id = l2.Id + 1
    and l1.num=l2.num
    and l2.num=l3.num

