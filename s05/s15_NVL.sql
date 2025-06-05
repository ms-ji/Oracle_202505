SELECT ename,
		comm,
		NVL(comm,0)+100 AS "NVL_0",
		NVL(comm,777) AS "NVL_777"
  FROM emp
;