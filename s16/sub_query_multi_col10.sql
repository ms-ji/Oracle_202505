--Student 테이블을 조회하여 각 학년별로 최대 몸무게를 가진 학생들의 학년과 이름, 몸무게를 출력하세요.
SELECT grade, name, weight
  FROM Student
 WHERE (grade,weight) IN ( SELECT grade,MAX(weight)
							  FROM Student
							 GROUP BY grade)
 ORDER BY grade;