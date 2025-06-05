SELECT ename FROM emp WHERE deptno = 10
UNION ALL
SELECT ename FROM emp WHERE deptno = 20
UNION ALL
SELECT 'KING' FROM dual;