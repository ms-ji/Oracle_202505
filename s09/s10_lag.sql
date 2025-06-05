SELECT deptno, 
		empno,
		ename,
		sal,
	LAG(sal,1,null)OVER(PARTITION BY deptno ORDER BY empno) AS prev_sal,
	sal - LAG(sal,1,null)OVER(PARTITION BY deptno ORDER BY empno) AS diff
  FROM emp;