col ename FOR A10
SELECT ename,
		deptno,
		sal,
		RATIO_TO_REPORT(sal)OVER(PARTITION BY deptno) AS ratio
  FROM emp
 ORDER BY deptno,sal
 ;