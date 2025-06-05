SELECT empno,
		sal,
		CASE 
			WHEN sal < 1000 THEN '���ҵ�'
			WHEN sal < 2000 THEN '�߰��ҵ�'
			WHEN sal < 3000 THEN '��ҵ�'
			ELSE '��׿���'
		END AS salary_grade
  FROM emp
 ORDER BY 2;