 col ename for a37

SELECT LPAD(ename,LEVEL*5,'*') AS ename,
		LEVEL,
		CONNECT_BY_ROOT empno "ROOT_EMPNO"
  FROM emp
 START WITH mgr IS NULL
 CONNECT BY prior empno = mgr
;

SELECT * FROM emp;