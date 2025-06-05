SELECT empno,
	   ename,
	   sal,
	   comm,
	   deptno
  FROM emp
 ORDER BY 
	   CASE deptno
		WHEN 20 then 1
		WHEN 10 then 2
		WHEN 30 then 3
	   END
;