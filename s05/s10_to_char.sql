SELECT empno,
		ename,
		TO_CHAR((sal*12)+comm,'9,999,999') AS annual_sal
  FROM emp
 WHERE ename = 'ALLEN'; 