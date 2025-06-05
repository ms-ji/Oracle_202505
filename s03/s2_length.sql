SELECT ename,
	LENGTH(ename),
	LENGTHB(ename)
  FROM emp
 WHERE deptno = 10
 ;