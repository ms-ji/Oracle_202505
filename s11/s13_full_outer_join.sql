select s.name AS stu_name,
		p.name AS prof_name
  from student s , professor p
  WHERE s.profno = p.profno(+)
UNION
select s.name AS stu_name,
		p.name AS prof_name
  from student s , professor p
  WHERE s.profno(+) = p.profno;