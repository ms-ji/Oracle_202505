SELECT *
 FROM dept d1
WHERE EXISTS (SELECT 1
				FROM dept d2
				WHERE d2.deptno = &deptno);


