col ename FOR A10
SELECT ename,
		deptno,
		sal,
		DENSE_RANK() OVER (PARTITION by deptno order by sal DESC) AS rank_DESC
  FROM emp;