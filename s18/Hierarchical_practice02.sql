col name for a22
col MGR_NAME for a22


SELECT name,
		prior name AS MGR_NAME
  FROM emp2
START WITH PEMPNO IS NULL
 CONNECT BY prior EMPNO = PEMPNO;