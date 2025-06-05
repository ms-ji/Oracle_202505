SELECT deptno,
		job,
		round(avg(nvl(sal,0)),2) AS AVL_SAL,
		count(*) AS EMP_CNT
  FROM emp
 GROUP BY ROLLUP(deptno,job)
 ORDER BY deptno,job;