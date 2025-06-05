col name for a10
col dept for a10
col loc for a8

SELECT e.empno, 
		e.ename AS name, 
		e.sal,
		d.deptno,
		d.dname AS dept,
		d.loc AS loc
  FROM dept d,emp e
 WHERE d.deptno = e.deptno(+)
   AND e.deptno(+) = 20;
   
   -- OUTER JOIN이 되는 칼럼들에 대해 모두 OUTER JOIN 연산자(+)를 붙여야 
   -- 정확한 정보를 추출할 수 있음.