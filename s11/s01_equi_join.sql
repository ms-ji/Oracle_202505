--emp�� dept ���̺��� �����Ͽ�, ������ �ش� �μ����� ����ϴ� ����
SELECT empno, ename, deptno
  FROM emp;
SELECT *
  FROM dept;
  
SELECT e.empno, 
		e.ename, 
		e.deptno,
		d.dname
  FROM emp e,dept d
 WHERE e.deptno = d.deptno;
  