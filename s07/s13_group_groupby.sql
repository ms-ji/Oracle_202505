SELECT deptno AS NO,
		MAX(sal)
  FROM emp
 GROUP BY NO
;