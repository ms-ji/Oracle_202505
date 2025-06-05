col name for a19

SELECT deptno,
		name,
		DECODE(deptno,101,'Computer Engineering',NULL) AS "dname"
  FROM professor
;
  