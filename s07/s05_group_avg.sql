--전사적 평균과 맞추기 위해서는 NULL을 처리해야 함.

SELECT COUNT(comm),
		SUM(comm),
		AVG(NVL(comm,0))
  FROM emp
; 