SELECT empno,
		sal,
		--TRUNC(sal/1000),
		DECODE(FLOOR(sal/1000),
				'0','���ҵ�',
				'1','�߰��ҵ�',
				'2','��ҵ�',
				'��׿���') AS salary_grade
  FROM emp
 ORDER BY sal
;
