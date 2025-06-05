--emp 테이블에서 각 직원의 급여가 부서의 평균 급여보다 낮은 직원을 조회하세요. 
SELECT t1.ename, t1.sal, t1.deptno
  FROM emp t1 --main
  WHERE t1.sal < (SELECT AVG(t2.sal)
					FROM emp t2 --subquery
					WHERE t2.deptno = t1.deptno
  )
  ;