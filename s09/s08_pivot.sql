SELECT *
  FROM (
		SELECT deptno,job
		FROM emp
		)
  pivot( 
		count(job) 
		FOR job IN ('CLERK' AS CLERK,
		'MANAGER' AS MANAGER,
		'PRESIDENT' AS PRESIDENT,
		'ANALYST' AS ANALYST,
		'SALESMAN' AS SALESMAN
		)
	)
ORDER BY deptno;