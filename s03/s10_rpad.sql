col "SUBSTR_LENGTH" for a10
col lpad_name for a10

SELECT ename,
		SUBSTR('123456789',length(ename)+1) "SUBSTR_LENGTH",
		RPAD(ename,9,SUBSTR('123456789',length(ename)+1)) lpad_name
  FROM emp
 WHERE deptno = 20;