SELECT SUM(sal),
		COUNT(comm),
		SUM(comm)
  FROM emp
 WHERE deptno = 10;