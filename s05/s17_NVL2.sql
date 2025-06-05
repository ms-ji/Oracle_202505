SELECT ename,
		comm,
		deptno,
		NVL2(comm,'보너스 있음','보너스 없음') AS bonus_state
  FROM emp
;