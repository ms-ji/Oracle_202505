 col "NAME AND POSITION" for a130

SELECT LPAD(e.name||'-'||d.dname||'-'||NVL(e.position,'Worker'),level*27,'-') AS  "NAME AND POSITION"
  FROM emp2 e , dept2 d
  WHERE e.deptno = d.dcode
 START WITH PEMPNO IS NULL
 CONNECT BY prior EMPNO = PEMPNO;