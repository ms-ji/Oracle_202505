SELECT deptno,
		job,
		round(avg(nvl(sal,0)),2) AS "Æò±Õ±Þ¿©"
  FROM emp
 GROUP BY deptno,job
 ORDER BY deptno,job
 ;