col name for a20
col jumin for a20

SELECT name,
		jumin,
		DECODE(SUBSTR(jumin,7,1),1,'MEN',
							  2,'WOMEN',
							  3,'MEN',
							  4,'WOMEN')AS gender
 FROM student
where deptno1 = 101
;