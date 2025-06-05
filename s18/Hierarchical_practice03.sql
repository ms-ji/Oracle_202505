col "ENAME AND POSITION" for a60

SELECT e.empno,
		e.name||'-'||d.dname||'-'||NVL(e.position,'Worker') AS "ENAME AND POSITION",
		(select count(*)
		FROM emp2 e2
		start with e2.empno = e.empno
		connect By prior e2.empno = e2.pempno)-1 AS "COUNT"
  FROM emp2 e, dept2 d
  WHERE e.deptno = d.dcode
  ORDER BY 3 DESC;
