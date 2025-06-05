--DESC emp;

SELECT empno,
		ename,
		hiredate
  FROM emp
WHERE TO_CHAR(hiredate,'MM')in('01','02','03');

