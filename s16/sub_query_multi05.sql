--EMP2 ���̺�� DEPT2 ���̺��� �����Ͽ� �ٹ������� Pohang Main Office �� ��� ������� ����� �̸�, �μ� ��ȣ�� ���Ͻÿ�.
col area for a20

 SELECT e.empno, 
		e.name,
		e.deptno
  FROM EMP2 e
  WHERE e.DEPTNO IN (SELECT dcode
					FROM dept2
					WHERE = 'Pohang Main Office');