SELECT name,
		deptno,
		DECODE(deptno,
				101,decode(name,
							'Audie Murphy','BEST!',
							'GOOD'),'N/A') AS ETC
  FROM professor;