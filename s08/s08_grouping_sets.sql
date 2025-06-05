col empolyees for A30

SELECT deptno,
		LISTAGG(ename,',') WITHIN GROUP(ORDER BY ename DESC) AS empolyees
  FROM emp
 GROUP BY deptno
 ORDER BY deptno
;