col DNAME for a12
col ENAME for a10
col "%R" for a10

SELECT d1.dname AS DNAME,
		e1.ename AS ENAME,
		TO_CHAR(e1.sal,'9,999') AS SAL,
		To_char(sum(e1.sal) over(PARTITION BY e1.deptno ORDER BY d1.dname),'9,999') AS
		SUM_DEPT,
		CASE 
		  WHEN ROUND(RATIO_TO_REPORT(e1.sal) OVER (PARTITION BY e1.deptno) * 100, 2) = 
			   TRUNC(RATIO_TO_REPORT(e1.sal) OVER (PARTITION BY e1.deptno) * 100) 
		  THEN 
			TO_CHAR(TRUNC(RATIO_TO_REPORT(e1.sal) OVER (PARTITION BY e1.deptno) * 100))
		  ELSE 
			TO_CHAR(ROUND(RATIO_TO_REPORT(e1.sal) OVER (PARTITION BY e1.deptno) * 100, 2))
		END AS "%R"
FROM emp e1 JOIN dept d1
ON e1.deptno = d1.deptno
ORDER BY d1.deptno
;
