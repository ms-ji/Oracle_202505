col DNAME for a26

SELECT d.dname AS DNAME, 
		e.name AS NAME, 
		TO_CHAR(NVL(e.pay,0),'$99,999,999') AS SALARY
  FROM emp2 e INNER JOIN DEPT2 d
  ON e.deptno = d.dcode
WHERE e.pay < ALL(SELECT NVL(AVG(PAY),0)
  FROM emp2
 GROUP BY DEPTNO)
 ORDER BY SALARY,NAME DESC;