col "XMLELEMENT" FOR A80

SELECT deptno, 
		XMLAGG(XMLELEMENT("name",ename) ORDER BY ename) "XMLELEMENT"
  FROM emp
 GROUP BY deptno;