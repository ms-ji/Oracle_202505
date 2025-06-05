
col ename for a37

SELECT LPAD(ename,LEVEL*4,'*') AS ename,
		LEVEL,
		prior ename as mgr_name
  FROM emp
 START WITH empno = 7839 --PRESIDENT
 CONNECT BY prior empno = mgr;