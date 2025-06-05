EXPLAIN PLAN FOR
SELECT deptno
		, job
		, ROUND(AVG(NVL(sal,0)),2) avg_sal
		, COUNT(*) cnt_emp
  FROM emp
 GROUP BY CUBE(deptno,job)
 ORDER BY deptno,job;