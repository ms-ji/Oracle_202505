SELECT empno,
		ename,
		sal,
		comm,
		NVL2(comm,sal+comm,sal) AS "TOTAL_INCOME",
		--sal+NVL(comm,0) AS "TOTAL_INCOME",
		NVL2(comm,'보너스 있음','보너스 없음') AS "BONUS_YN"
  FROM emp
;		