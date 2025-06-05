col job for a10
col deptno for 999
SELECT *
FROM (
		SELECT  deptno,job,round(avg(nvl(sal,0)),2) AS avg_sal,count(*) AS emp_cnt
		FROM emp
		GROUP BY deptno, job
		UNION ALL
		SELECT deptno,null job,round(avg(nvl(sal,0)),2),count(*)
		FROM emp
		GROUP BY deptno
		UNION ALL
		SELECT null deptno,null job,round(avg(nvl(sal,0)),2),count(*)
		FROM emp
  )
 ORDER BY deptno,job
;