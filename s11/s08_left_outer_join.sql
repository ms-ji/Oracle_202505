--��� �л� + �������� + ���������� ������ NULL
--ANSI JOIN
select s.name AS stu_name,
		p.name AS prof_name
  from student s left outer join professor p
  on s.profno = p.profno;
  
