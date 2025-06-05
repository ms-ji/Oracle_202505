col stu_name for A20
col deptno for 99999
col dept_name for A32


--ORACLE JOIN
SELECT s.name AS stu_name, 
		s.deptno1 AS deptno,
		d.dname AS dept_name
  FROM student s, department d
 WHERE s.deptno1 = d.deptno;
 
--ANSI JOIN
SELECT s.name AS stu_name, 
		s.deptno1 AS deptno,
		d.dname AS dept_name
  FROM student s JOIN department d
	ON s.deptno1 = d.deptno;