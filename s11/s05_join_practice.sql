SELECT p1.profno,
		p1.name,
		TO_CHAR(p1.hiredate,'YYYY/MM/DD') AS hiredate,
		count(p2.hiredate) AS count
  FROM professor p1,professor p2
 WHERE p1.hiredate > p2.hiredate(+)
 GROUP BY p1.profno,p1.name,p1.hiredate
 ORDER BY count(p2.hiredate);
  
