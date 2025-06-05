col "XMLELEMENT" FOR A80

SELECT deptno, 
		SUBSTR(XMLAGG(XMLELEMENT("name",',',ename) 
		ORDER BY ename).EXTRACT('//text()').getClobval(),2) "XMLELEMENT"
  FROM emp
 GROUP BY deptno;