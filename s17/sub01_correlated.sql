--emp ���̺��� �� ������ �޿��� �μ��� ��� �޿����� ���� ������ ��ȸ�ϼ���. 
SELECT t1.ename, t1.sal, t1.deptno
  FROM emp t1 --main
  WHERE t1.sal < (SELECT AVG(t2.sal)
					FROM emp t2 --subquery
					WHERE t2.deptno = t1.deptno
  )
  ;