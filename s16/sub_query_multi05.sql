--EMP2 테이블과 DEPT2 테이블을 참조하여 근무지역이 Pohang Main Office 인 모든 사원들의 사번과 이름, 부서 번호를 구하시오.
col area for a20

 SELECT e.empno, 
		e.name,
		e.deptno
  FROM EMP2 e
  WHERE e.DEPTNO IN (SELECT dcode
					FROM dept2
					WHERE = 'Pohang Main Office');