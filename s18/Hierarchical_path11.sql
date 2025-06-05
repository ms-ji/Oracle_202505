col name for a20
col ename_list for a30

SELECT LPAD(ename,LEVEL*4,'*') AS name,	
		level,
		SUBSTR(SYS_CONNECT_BY_PATH(ename,'<-'),3) AS ename_list
  FROM emp
 START WITH mgr IS NULL --PRESIDENT
 CONNECT BY prior empno = mgr
 ORDER SIBLINGS BY ename DESC;