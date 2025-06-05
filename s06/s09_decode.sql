SELECT empno,
		sal,
		--TRUNC(sal/1000),
		DECODE(FLOOR(sal/1000),
				'0','Àú¼Òµæ',
				'1','Áß°£¼Òµæ',
				'2','°í¼Òµæ',
				'°í¾×¿¬ºÀ') AS salary_grade
  FROM emp
 ORDER BY sal
;
