SELECT ename,
		comm,
		deptno,
		NVL2(comm,'���ʽ� ����','���ʽ� ����') AS bonus_state
  FROM emp
;