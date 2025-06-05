col dept_name for a32
col hiredate for a12
col prof_name for a20

SELECT p.profno, 
		p.name AS prof_name,
		TO_CHAR(p.hiredate,'YYYY-MM-DD') AS hiredate, 
		d.dname AS dept_name
FROM professor p INNER JOIN department d
ON p.deptno = d.deptno
where (p.deptno,p.hiredate) IN (SELECT deptno,MIN(hiredate)
  FROM professor
 GROUP BY deptno)
 ORDER BY  hiredate;