SELECT deptno1, grade,count(*)as stu_cnt
  FROM student
 GROUP BY GROUPING sets(grade,deptno1)
 ORDER BY grade;