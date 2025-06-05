col name for a10
col dept for a10
col loc for a8

SELECT e.empno, 
		e.ename AS name, 
		e.sal,
		d.deptno,
		d.dname AS dept,
		d.loc AS loc
  FROM dept d,emp e
 WHERE d.deptno = e.deptno(+)
   AND e.deptno(+) = 20;
   
   -- OUTER JOIN�� �Ǵ� Į���鿡 ���� ��� OUTER JOIN ������(+)�� �ٿ��� 
   -- ��Ȯ�� ������ ������ �� ����.