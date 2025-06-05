--SELECT deptno,job,sal,
--		sum(sal) over(PARTITION BY deptno) AS sum_no
--  FROM ex_emp
-- ;
 
col MANAGER   for 999999
col CLERK     for 999999
col PRESIDENT for 999999
col ANALYST   for 999999
col SALESMAN  for 999999
col TOTAL for 9,999,999
 

SELECT deptno,SUM(decode(job,'MANAGER',sal,0)) AS MANAGER  ,
			  SUM(decode(job,'CLERK',sal,0)) AS CLERK    ,
			  SUM(decode(job,'PRESIDENT',sal,0)) AS PRESIDENT,
			  SUM(decode(job,'ANALYST',sal,0)) AS ANALYST  ,
			  SUM(decode(job,'SALESMAN',sal,0)) AS SALESMAN ,
			  SUM(saL) AS TOTAL
  FROM ex_emp
  GROUP BY ROLLUP(deptno)
  ORDER BY deptno
;
 
  