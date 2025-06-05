--emp, dept 테이블을 조회하여 사원 이름과 부서명을 출력 하세요. 
SELECT t1.ename,(SELECT dname
					FROM dept t2
					WHERE t1.deptno = t2.deptno) AS dname
  FROM emp t1
;