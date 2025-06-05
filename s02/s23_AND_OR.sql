SELECT ename,
		sal,
		job
  FROM emp
 WHERE job = 'SALESMAN' 
--AND (sal >= 1500 AND sal<=3000)
   AND sal BETWEEN 1500 AND 3000
--AND (deptno = 30 OR deptno = 40)
   AND deptno IN(30,40)
   AND comm is NOT NULL
;