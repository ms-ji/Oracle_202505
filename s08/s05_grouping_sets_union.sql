--학년별 학생 인원 수 합계
SELECT NULL DEPTNO1,grade,count(*)as grade_cnt
  FROM student
 GROUP BY grade
UNION 
 --학과별 인원수
 SELECT DEPTNO1,NULL grade,count(*)as grade_cnt
  FROM student
 GROUP BY DEPTNO1;
