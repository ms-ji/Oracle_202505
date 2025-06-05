SELECT ename,
		sal,
		sal+NVL(comm,0)
  FROM emp
;