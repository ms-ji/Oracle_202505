--Student ���̺��� ��ȸ�Ͽ� �� �г⺰�� �ִ� �����Ը� ���� �л����� �г�� �̸�, �����Ը� ����ϼ���.
SELECT grade, name, weight
  FROM Student
 WHERE (grade,weight) IN ( SELECT grade,MAX(weight)
							  FROM Student
							 GROUP BY grade)
 ORDER BY grade;