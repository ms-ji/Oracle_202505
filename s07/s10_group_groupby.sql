SELECT job,
	count(*) AS "ÀÎ¿ø¼ö"
  FROM emp
 GROUP BY job
 ORDER BY job
; 