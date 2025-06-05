col dept for 999
col prof_name for a25
col prof_name for a25

--안시 조인
SELECT  s.deptno1 AS dept,
		s.name AS stu_name,
		p.name AS prof_name
  FROM student s 
  JOIN Professor p ON s.profno = p.profno
  JOIN department d ON s.deptno1 = d.deptno
  WHERE s.deptno1 = 101;
  
--오라클 조인
SELECT 	s.deptno1 AS dept,
		s.name AS stu_name,
		p.name AS prof_name
  FROM student s ,Professor p,department d
 WHERE s.profno = p.profno
   AND s.deptno1 = d.deptno
   AND s.deptno1 = 101;