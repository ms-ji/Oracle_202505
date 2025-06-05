SELECT empno,
		sal,
		CASE 
			WHEN sal < 1000 THEN 'Àú¼Òµæ'
			WHEN sal < 2000 THEN 'Áß°£¼Òµæ'
			WHEN sal < 3000 THEN '°í¼Òµæ'
			ELSE '°í¾×¿¬ºÀ'
		END AS salary_grade
  FROM emp
 ORDER BY 2;