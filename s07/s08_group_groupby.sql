--�μ��� ��� �޿�
SELECT deptno, 
		round(AVG(nvl(sal,0)),2) AS "��ձ޿�"
  FROM emp
 GROUP BY deptno 
 ORDER BY deptno
;