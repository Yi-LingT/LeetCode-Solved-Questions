CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
RETURN
    (select distinct salary
    from
        (select salary, dense_rank() over (order by Salary desc) as rk
        from Employee) p
        where rk = N );
END


