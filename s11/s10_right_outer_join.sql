--지도학생 없는 교수도 결과에 포함되도록
--ANSI JOIN
select s.name AS stu_name,
		p.name AS prof_name
  from student s right outer join professor p
  on s.profno = p.profno;