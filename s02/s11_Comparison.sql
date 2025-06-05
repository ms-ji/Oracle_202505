--같지 않다
SELECT empno,
		ename,
		job,
		mgr,
		deptno
  FROM emp
 WHERE deptno <> 10
 ;