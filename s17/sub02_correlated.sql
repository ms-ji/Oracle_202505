--emp ���̺��� �� ������ �޿��� �μ��� ��� �޿����� ���� ������ ��ȸ�ϼ���. 

  
SELECT t1.ename, t1.sal, t1.deptno
  FROM emp t1 JOIN (SELECT t2.deptno, AVG(t2.sal) AS dept_avg_sal
					FROM emp t2
					GROUP BY t2.deptno) tt2
			    ON t1.deptno = tt2.deptno
			WHERE t1.sal < tt2.dept_avg_sal;