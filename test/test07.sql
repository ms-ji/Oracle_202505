select *
FROM (
 SELECT d.dname AS dname,
         e.job AS job,
         e.sal AS sal
    FROM dept d, emp e
   WHERE d.deptno = e.deptno
	)
 pivot(
	min(sal)
	for job in ('ANALYST' AS ANALYST,
				'CLERK' AS CLERK,
				'MANAGER' AS MANAGER,
				'SALESMAN' AS SALESMAN)
	)
	;

