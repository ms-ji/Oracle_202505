--������ ��հ� ���߱� ���ؼ��� NULL�� ó���ؾ� ��.

SELECT COUNT(comm),
		SUM(comm),
		AVG(NVL(comm,0))
  FROM emp
; 