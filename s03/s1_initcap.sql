SELECT ename,
	INITCAP(ename),
	LOWER(ename),
	UPPER(LOWER(ename)) "UPPER"
  from emp
 WHERE deptno = 20
 ;