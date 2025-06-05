
col name for a20

SELECT LPAD(ename,LEVEL*4,'*') AS name
  FROM emp
 START WITH mgr IS NULL --PRESIDENT
 CONNECT BY prior empno = mgr
 ORDER SIBLINGS BY ename DESC;