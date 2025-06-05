SELECT ename,job FROM emp WHERE deptno = 10
UNION
SELECT ename,sal FROM emp WHERE job = 'CLERK'
ORDER BY sal DESC
;