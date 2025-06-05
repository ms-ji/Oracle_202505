--부서 번호에 따른 부서명 출력
--10 = '관리부'
--20 = '연구부'
--30 = '영업부'
--'미정'

SELECT ename,
		deptno,
		 CASE deptno
			WHEN 10 THEN '관리부' 
			WHEN 20 THEN '연구부'
			WHEN 30 THEN '영업부'
			ELSE '미정'		
		END AS dept_name
  FROM emp;