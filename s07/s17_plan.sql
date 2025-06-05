EXPLAIN PLAN FOR
SELECT deptno,
		job,
		round(avg(nvl(sal,0)),2) AS AVL_SAL,
		count(*) AS EMP_CNT
  FROM emp
 GROUP BY ROLLUP(deptno,job)
 ORDER BY deptno,job;
 
 --plan_table_output Ãâ·Â FORMAT
--COL plan_table_output FOR A150;
--SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);