SELECT deptno, job,SUM(sal) TOTAL_SAL
  FROM emp
 GROUP BY GROUPING SETS(
			(deptno, job), --�μ��� ������
			(deptno), --�μ���
			() -- ��ü			
 )
ORDER BY deptno, job
;