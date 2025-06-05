col empolyees for A60

SELECT deptno,
		LISTAGG(ename||'('||sal||')',',' ON OVERFLOW TRUNCATE '...') 
		WITHIN GROUP(ORDER BY sal DESC) 
		AS empolyees
  FROM emp
 GROUP BY deptno
 ORDER BY deptno
;