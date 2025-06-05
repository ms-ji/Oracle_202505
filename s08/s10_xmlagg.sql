col "XMLELEMENT" FOR A20

SELECT deptno, 
		XMLELEMENT("name",ename) "XMLELEMENT"
  FROM emp
 ORDER BY deptno,ename
;