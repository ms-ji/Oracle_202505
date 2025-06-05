SELECT deptno, job,SUM(sal) TOTAL_SAL
  FROM emp
 GROUP BY GROUPING SETS(
			(deptno, job), --부서별 직무별
			(deptno), --부서별
			() -- 전체			
 )
ORDER BY deptno, job
;