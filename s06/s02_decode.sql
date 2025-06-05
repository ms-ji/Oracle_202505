--�μ� ��ȣ�� ���� �μ��� ���
--10 = ACCOUNTING
--20 = RESEARCH
--30 = SALES
--40 = OPERATINS
--UNKNOWN

SELECT ename,
		deptno,
		DECODE(deptno,10,'ACCOUNTING',
				20,'RESEARCH',
				30,'SALES',
				40,'OPERATINS',
				'UNKNOWN') AS department_name
  from emp
 ORDER BY deptno;