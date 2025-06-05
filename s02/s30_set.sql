SELECT ename FROM emp WHERE deptno = 10
UNION
SELECT ename FROM emp WHERE job = 'CLERK';