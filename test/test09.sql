col "ENAME AND POSITION" for a30

select e1.empno,
        e1.ename ||'-'||d1.dname||'-'||e1.job AS "ENAME AND POSITION",
        (select count(*)
		FROM emp e2
		start with e2.empno = e1.empno
		connect By prior e2.empno = e2.mgr)-1 AS "COUNT"
  FROM emp e1,dept d1
where e1.deptno = d1.deptno
START WITH e1.mgr IS NULL
CONNECT BY prior e1.empno = e1.mgr
ORDER BY "COUNT" DESC
;