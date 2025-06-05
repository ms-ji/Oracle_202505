col stu_name for a30
col prof_name for a30
col dapt_name for a32

--안시 조인
SELECT s.name AS stu_name,
		p.name AS prof_name,
		d.dname AS dapt_name
  FROM student s 
  JOIN Professor p
  ON s.profno = p.profno
  JOIN department d ON s.deptno1 = d.deptno;
--오라클 조인
SELECT s.name AS stu_name,
		p.name AS prof_name,
		d.dname AS dapt_name
  FROM student s ,Professor p,department d
 WHERE s.profno = p.profno
   AND s.deptno1 = d.deptno;