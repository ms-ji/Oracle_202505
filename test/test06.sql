--안시 조인
SELECT s1.name AS STUD_NAME,
        s2.total AS TOTAL,
        h1.grade AS GRADE,
        p1.name AS PROF_NAME
  FROM student s1
  JOIN SCORE s2 ON s1.studno = s2.studno
  JOIN hakjum h1 ON s2.total >= h1.MIN_POINT AND s2.total<=h1.MAX_POINT
  JOIN PROFESSOR p1 ON s1.profno = p1.profno
  ;
  
--오라클 조인
SELECT s1.name AS STUD_NAME,
        s2.total AS TOTAL,
        h1.grade AS GRADE,
        p1.name AS PROF_NAME
  FROM student s1,SCORE s2,hakjum h1,professor p1
  WHERE s1.studno = s2.studno
  AND (s2.total >= h1.MIN_POINT AND s2.total<=h1.MAX_POINT)
  AND s1.profno = p1.profno
  ;