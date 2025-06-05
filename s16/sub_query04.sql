col sal for $9,999
col ename for a8
col dname for a14

SELECT e.ename AS ename, 
		e.sal AS sal,
		d.dname AS dname
FROM emp e INNER JOIN dept d
ON e.deptno =d.deptno
WHERE sal > (SELECT avg(sal)
  FROM emp
 WHERE deptno = 10);