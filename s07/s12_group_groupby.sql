SELECT deptno,
		job,
		round(avg(nvl(sal,0)),2) AS "��ձ޿�"
  FROM emp
 GROUP BY deptno,job
 ORDER BY deptno,job
 ;