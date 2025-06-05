SELECT ename FROM emp WHERE deptno = 10
MINUS
SELECT ename FROM emp WHERE job = 'CLERK';