--�����л� ���� ������ ����� ���Եǵ���(�л� 20��, ���� �л��� ���� ���� 2��)
--ORACLE JOIN
EXPLAIN PLAN FOR
select s.name AS stu_name,
		p.name AS prof_name
  from student s, professor p
  where  s.profno(+) = p.profno;