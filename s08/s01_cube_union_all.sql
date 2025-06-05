--부서와 직급별 평균 급여 및 사원수

SELECT deptno
		, job
		, ROUND(AVG(NVL(sal,0)),2) avg_sal
		, COUNT(*) cnt_emp
  FROM emp
 GROUP BY deptno,job
UNION ALL
-- 부서별 평균 급여와 사원수
 SELECT deptno
		, NULL job
		, ROUND(AVG(NVL(sal,0)),2) avg_sal
		, COUNT(*) cnt_emp
  FROM emp
 GROUP BY deptno
UNION ALL
-- 직급별 평균 급여 및 사원수
  SELECT NULL deptno
		,  job
		, ROUND(AVG(NVL(sal,0)),2) avg_sal
		, COUNT(*) cnt_emp
  FROM emp
 GROUP BY job
 UNION ALL
 --전체 사원의 평균 급여와 사원수
   SELECT NULL deptno
		, NULL job
		, ROUND(AVG(NVL(sal,0)),2) avg_sal
		, COUNT(*) cnt_emp
  FROM emp;
