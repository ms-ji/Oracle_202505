SELECT MAX(sal+NVL(comm,0)) AS "MAX_TOTAL",
	   MIN(sal+NVL(comm,0)) AS "MIN_TOTAL",
	   ROUND(AVG(NVL(sal,0)+NVL(comm,0)),1) AS avg
  FROM emp
  ;
  
SELECT MAX(tot_sal),
		MIN(tot_sal),
		ROUND(AVG(tot_sal),1)
  FROM (
  select sal,
		comm,
		NVL(sal,0)+NVL(comm,0) tot_sal
		FROM emp
); 
		