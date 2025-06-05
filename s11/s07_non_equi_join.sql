col name for a20

--ORACLE JOIN
SELECT st.studno, st.name AS name, sc.total, h.grade
  FROM student st,score sc,hakjum h
 WHERE st.studno = sc.studno 
  AND sc.total BETWEEN h.MIN_POINT AND h.MAX_POINT;
  
--ANSI JOIN
SELECT st.studno, st.name AS name, sc.total, h.grade
  FROM student st 
  JOIN score sc ON st.studno = sc.studno 
  JOIN hakjum h ON sc.total BETWEEN h.MIN_POINT AND h.MAX_POINT;
  
--ANSI JOIN
SELECT st.studno, st.name AS name, sc.total, h.grade
  FROM student st 
  JOIN score sc ON st.studno = sc.studno 
  JOIN hakjum h ON sc.total >= h.MIN_POINT AND sc.total <= h.MAX_POINT;