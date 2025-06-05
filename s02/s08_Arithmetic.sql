COLUMN sal_after_tax FOR $9,999.00 --형식

SELECT ename,
		sal,
		sal*0.9 AS sal_after_tax
  FROM emp
;