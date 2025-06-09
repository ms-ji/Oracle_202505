SELECT e.ename,
       e.job,
       TO_CHAR(e.hiredate, 'YYYY/MM/DD') AS hiredate,
       TO_CHAR(e.sal, '$9,999') AS salary
FROM emp e
JOIN (
    SELECT job, MAX(sal) AS max_sal
    FROM emp
    GROUP BY job
	) m 
ON e.job = m.job AND e.sal = m.max_sal
ORDER BY salary;

