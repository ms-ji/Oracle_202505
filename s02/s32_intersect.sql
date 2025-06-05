SELECT ename FROM emp WHERE deptno = 10
INTERSECT
SELECT ename FROM emp WHERE job = 'CLERK';