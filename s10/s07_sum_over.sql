--�����հ�, ���� �� ����, ���� ��� ��
col ename FOR A10
SELECT ename,
		deptno,
		sal,
		SUM(sal) OVER (
		ORDER BY empno 
		ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
		)AS running_total
  FROM emp;