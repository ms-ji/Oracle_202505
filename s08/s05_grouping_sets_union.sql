--�г⺰ �л� �ο� �� �հ�
SELECT NULL DEPTNO1,grade,count(*)as grade_cnt
  FROM student
 GROUP BY grade
UNION 
 --�а��� �ο���
 SELECT DEPTNO1,NULL grade,count(*)as grade_cnt
  FROM student
 GROUP BY DEPTNO1;
