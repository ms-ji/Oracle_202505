-- 4 > 3 > 2 > 1
 col ename for a37

SELECT LPAD(ename,LEVEL*5,'*') AS ename,
		LEVEL
  FROM emp
 START WITH empno = 7369 --SMITH
 CONNECT BY empno = prior mgr;