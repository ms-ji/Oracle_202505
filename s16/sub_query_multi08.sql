SELECT s.name,s.grade,s.weight
FROM student s
where s.weight <ALL(SELECT weight
					FROM student
				   WHERE GRADE =2)
;