--누적합계, 현재 행 포함, 이전 모든 행
col ename FOR A10
SELECT ename,
		deptno,
		sal,
		SUM(sal) OVER (
		ORDER BY empno 
		ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
		)AS running_total
  FROM emp;