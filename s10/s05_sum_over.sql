col ename FOR A10
SELECT ename,
		deptno,
		sal,
		SUM(sal) OVER(ORDER BY sal)AS sal_sum_over
  FROM emp;