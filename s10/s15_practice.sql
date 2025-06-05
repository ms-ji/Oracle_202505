col ename for A10
col deptno for 99

SELECT deptno,
		ename,
		sal,
		SUM(sal) OVER(PARTITION BY deptno) AS total,
		ROUND((RATIO_TO_REPORT(sal)over(PARTITION BY deptno))*100,2) AS "%"
  FROM ex_emp
 ORDER BY deptno,ename
 ;