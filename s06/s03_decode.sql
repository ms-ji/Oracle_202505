SELECT name,
		deptno,
		DECODE(deptno,
				101,decode(name,
							'Audie Murphy','BEST!',
							NULL)) AS ETC
  FROM professor;