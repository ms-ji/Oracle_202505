--학생과 교수 테이블의 FULL OUTER JOIN(전체 조인)

select s.name AS stu_name,
		p.name AS prof_name
  from student s FULL OUTER JOIN professor p
  on s.profno = p.profno;