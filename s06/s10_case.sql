--�μ� ��ȣ�� ���� �μ��� ���
--10 = '������'
--20 = '������'
--30 = '������'
--'����'

SELECT ename,
		deptno,
		 CASE deptno
			WHEN 10 THEN '������' 
			WHEN 20 THEN '������'
			WHEN 30 THEN '������'
			ELSE '����'		
		END AS dept_name
  FROM emp;