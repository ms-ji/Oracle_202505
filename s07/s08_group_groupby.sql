--부서별 평균 급여
SELECT deptno, 
		round(AVG(nvl(sal,0)),2) AS "평균급여"
  FROM emp
 GROUP BY deptno 
 ORDER BY deptno
;