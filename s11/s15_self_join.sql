--ORACLE JOIN
select e1.ename AS emp_name,
		e2.ename AS mrg_name,
		e1.empno,
		e1.mgr
  FROM emp e1,emp e2
 WHERE e1.mgr = e2.empno;