--Student ���̺�� department ���̺��� ����Ͽ� 'Anthony Hopkins' �л��� 
--1 ����(deptno1)�� ������ �л����� �̸��� 1 ���� �̸��� ����ϼ���.
col name for a20
col dname for a20

SELECT s.name,s.deptno1, d.dname
 FROM Student s INNER JOIN department d
 ON s.deptno1 = d.deptno
WHERE deptno1=(
SELECT deptno1
  FROM Student
 WHERE name = 'Anthony Hopkins');
 

 