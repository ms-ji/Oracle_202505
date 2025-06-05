--ANSI JOIN
select e1.ename AS emp_name,
		e2.ename AS mrg_name
  FROM emp e1 JOIN emp e2
    ON e1.mgr = e2.empno;