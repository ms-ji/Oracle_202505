SELECT empno,
		ename,
		hiredate,
		LAST_DAY(hiredate) AS pay_date
  FROM emp
;
