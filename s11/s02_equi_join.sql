--student 테이블과 Professor테이블 조인

SELECT profno, name
  FROM student;

SELECT profno,name
  FROM professor;

col stu_name for a30
col prof_name for a30

--안시 조인
SELECT s.name AS stu_name,p.name AS prof_name
  FROM student s JOIN Professor p
  ON s.profno = p.profno;
