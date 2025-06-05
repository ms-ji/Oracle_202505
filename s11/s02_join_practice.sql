col position for a20
col "PAY" for A12
col "LOW PAY" for A12
col "HIGH PAY" for A12

--ORACLE JOIN
SELECT e.name AS NAME,
		e.position AS POSITION,
		TO_CHAR(e.pay,'999,999,999') AS "PAY",
		TO_CHAR(p.S_PAY,'999,999,999') AS "LOW PAY",
		TO_CHAR(p.e_pay,'999,999,999') AS "HIGH PAY"
  FROM emp2 e, p_grade p
 WHERE e.position = p.position;
 
--ANSI JOIN
SELECT e.name AS NAME,
		e.position AS POSITION,
		TO_CHAR(e.pay,'999,999,999') AS "PAY",
		TO_CHAR(p.S_PAY,'999,999,999') AS "LOW PAY",
		TO_CHAR(p.e_pay,'999,999,999') AS "HIGH PAY"
  FROM emp2 e JOIN p_grade p
	ON e.position = p.position;