--��ü ��� �޿��� ����
col ename FOR A10

SELECT ename,
		deptno,
		sal,
		--RANK() OVER (order by sal) AS rank_in,
		RANK() OVER (order by sal DESC) AS rank_DESC,
		RANK() OVER (order by sal) AS rank_in
  FROM emp;