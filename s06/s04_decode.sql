SELECT name,
		deptno,
		DECODE(deptno,
				101,decode(name,
							'Audie Murphy','BEST!',
							'GOOD')) AS ETC
  FROM professor;