col NO for 99
col STUD_NAME for a16
col DEPTNO1 for 9999
col DNAME for a32
col BIRTHDAY for a16
col PROF_NAME for a20
  
select tt1.*
 from (
	select ROWNUM AS NO,t1.*
	from ( 
		  select s.name AS STUD_NAME,
				s.deptno1 AS DEPTNO1,
				TO_CHAR(s.birthday,'YYYY-MM-DD') AS BIRTHDAY,
				d.dname AS DNAME,
				p.name AS PROF_NAME
		  from student s 
		  JOIN department d ON s.deptno1 = d.deptno 
		  JOIN professor p ON s.profno = p.profno
		  ORDER BY DEPTNO1,STUD_NAME
		  ) t1
	WHERE ROWNUM <=10 
	) tt1
  WHERE ROWNUM >=1;