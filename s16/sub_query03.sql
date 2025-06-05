col prof_name for a30
col dept_name for a32

SELECT p.name AS prof_name, 
		TO_CHAR(p.hiredate,'YYYY-MM-SS') AS hiredate, 
		d.dname AS dept_name
FROM professor p  INNER JOIN department d
ON p.deptno = d.deptno 
WHERE hiredate > (
SELECT hiredate
  FROM professor   
  WHERE name = 'Meg Ryan');
  
