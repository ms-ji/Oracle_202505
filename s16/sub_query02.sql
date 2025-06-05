--Student 테이블과 department 테이블을 사용하여 'Anthony Hopkins' 학생과 
--1 전공(deptno1)이 동일한 학생들의 이름과 1 전공 이름을 출력하세요.
col name for a20
col dname for a20

SELECT s.name,s.deptno1, d.dname
 FROM Student s INNER JOIN department d
 ON s.deptno1 = d.deptno
WHERE deptno1=(
SELECT deptno1
  FROM Student
 WHERE name = 'Anthony Hopkins');
 

 