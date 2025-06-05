--부서 번호에 따른 부서명 출력
--10 = ACCOUNTING
--20 = RESEARCH
--30 = SALES
--40 = OPERATINS
--UNKNOWN

SELECT ename,
		deptno,
		DECODE(deptno,10,'ACCOUNTING','UNKNOWN') AS "부서명"
  from emp
 ORDER BY deptno;