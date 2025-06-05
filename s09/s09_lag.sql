SELECT empno,ename,sal,
	LAG(sal,2,null)OVER(ORDER BY empno) AS prev_sal
  FROM emp;