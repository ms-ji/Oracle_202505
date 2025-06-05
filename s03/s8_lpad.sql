col lpad_name for a10
col job       for a20

SELECT LPAD(ename,10,'*') lpad_name,
		job
	FROM emp
  WHERE deptno = 10;