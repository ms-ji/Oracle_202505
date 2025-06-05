-- 급여 기준 부서별, 직무별 순위
col ename FOR A10

SELECT ename,
		job,
		deptno,
		sal,
		RANK() OVER (PARTITION BY deptno,job ORDER BY sal) AS rank_in
  FROM emp;