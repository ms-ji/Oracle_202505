--�л��� ���� ���̺��� FULL OUTER JOIN(��ü ����)

select s.name AS stu_name,
		p.name AS prof_name
  from student s FULL OUTER JOIN professor p
  on s.profno = p.profno;