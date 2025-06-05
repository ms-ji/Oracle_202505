--emp와 dept 테이블을 조인하여, 직원과 해당 부서명을 출력하는 예제
SELECT empno, ename, deptno
  FROM emp;
SELECT *
  FROM dept;
  
SELECT e.empno, 
		e.ename, 
		e.deptno,
		d.dname
  FROM emp e,dept d
 WHERE e.deptno = d.deptno;
  