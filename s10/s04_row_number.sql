col ename FOR A10
SELECT ename,
		deptno,
		sal,
		ROW_NUMBER() OVER (order by sal DESC) AS rank_DESC,
		ROWID --½´µµ ÇÔ¼ö
  FROM emp;