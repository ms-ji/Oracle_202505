set null NULL
col name for a20
col CURR_POSITION for a25
col be_POSITION for a40

--ORACLE JOIN
SELECT e.name AS name,
		EXTRACT(YEAR FROM SYSDATE)-EXTRACT(YEAR FROM e.birthday) AS AGE,
		e.position AS CURR_POSITION,
		p.position AS be_POSITION
  FROM emp2 e, p_grade p
 WHERE EXTRACT(YEAR FROM SYSDATE)-EXTRACT(YEAR FROM e.birthday) 
 BETWEEN p.s_age(+) AND p.e_age(+)
 ORDER BY AGE desc;

--¹æ¹ý2 
--SELECT e.name AS name,
--		MONTHS_BETWEEN(SYSDATE,e.birthday)/12 AS AGE,
--		e.position AS CURR_POSITION,
--		p.position AS be_POSITION
--  FROM emp2 e, p_grade p
-- WHERE EXTRACT(YEAR FROM SYSDATE)-EXTRACT(YEAR FROM e.birthday) BETWEEN p.s_age(+) AND p.e_age(+)
-- ORDER BY AGE desc;
 
--ANSI JOIN
--SELECT e.name AS name,
--		EXTRACT(YEAR FROM SYSDATE)-EXTRACT(YEAR FROM e.birthday) AS AGE,
--		e.position AS CURR_POSITION,
--		p.position AS be_POSITION
--  FROM emp2 e left outer join p_grade p
--	ON EXTRACT(YEAR FROM SYSDATE)-EXTRACT(YEAR FROM e.birthday) BETWEEN p.s_age AND p.e_age
-- ORDER BY AGE desc;