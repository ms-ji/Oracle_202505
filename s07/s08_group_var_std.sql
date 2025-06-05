SELECT VARIANCE(sal) AS "분산",
		STDDEV(sal) AS "표준 편차",
		avg(NVL(sal,0))
  FROM emp;