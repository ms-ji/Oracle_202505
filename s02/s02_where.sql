COL ename FOR A12
COL sal FOR $999,999

SELECT empno,
		ename,
		sal
  FROM emp
 WHERE sal > 1000
;