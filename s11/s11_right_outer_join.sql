--지도학생 없는 교수도 결과에 포함되도록(학생 20명, 지도 학생이 없는 교수 2명)
--ORACLE JOIN
EXPLAIN PLAN FOR
select s.name AS stu_name,
		p.name AS prof_name
  from student s, professor p
  where  s.profno(+) = p.profno;