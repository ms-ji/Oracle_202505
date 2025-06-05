--ORACLE JOIN
select s.name AS stu_name,
		p.name AS prof_name
  from student s , professor p
  WHERE s.profno = p.profno(+); --오른쪽 테이블에 (+)표시