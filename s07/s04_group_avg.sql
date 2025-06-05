SELECT sum(sal),
		count(*),
		AVG(sal),
		sum(sal)/count(sal)
  FROM emp
; 