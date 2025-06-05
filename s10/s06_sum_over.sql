col ename FOR A10
SELECT ename,
		deptno,
		sal,
		sum(sal) OVER(PARTITION BY deptno ORDER BY sal)AS sal_sum_over
  FROM em