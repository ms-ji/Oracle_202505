--���� 1��, ���� 1��, ���� 1���� ���
col ename FOR A10
SELECT ename,
		deptno,
		sal,
		ROUND(AVG(sal) OVER (
		ORDER BY empno 
		ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
		),2)AS running_AVG
  FROM emp;