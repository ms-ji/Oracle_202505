 col ename for a37

SELECT LPAD(ename,LEVEL*5,'*') AS ename,
		LEVEL
  FROM emp
  --WHERE CONNECT_BY_ISLEAF = 0 : ������ �� ����
  --WHERE CONNECT_BY_ISLEAF = 1
 START WITH empno = 7369 --SMITH
 CONNECT BY empno = prior mgr
;