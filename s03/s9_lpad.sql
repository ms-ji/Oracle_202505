col lpad_name for a10
col job       for a20

SELECT LPAD(ename,9,'123456789')lpad_name,
		job
  FROM emp
 WHERE deptno = 20
;