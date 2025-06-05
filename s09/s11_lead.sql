SELECT empno,ename,sal,
	LEAD(sal,1,null)OVER(ORDER BY empno) AS prev_sal
  FROM emp;