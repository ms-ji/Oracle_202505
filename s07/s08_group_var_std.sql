SELECT VARIANCE(sal) AS "�л�",
		STDDEV(sal) AS "ǥ�� ����",
		avg(NVL(sal,0))
  FROM emp;