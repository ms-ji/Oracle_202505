col stu_name for a30
col prof_name for a30

--오라클 조인  
SELECT s.name AS stu_name,p.name AS prof_name
  FROM student s , Professor p
  WHERE s.profno = p.profno;