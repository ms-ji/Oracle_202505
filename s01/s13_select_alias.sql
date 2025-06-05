--별칭에 공백, 특수 문자가 있으면 큰 따옴표 사용
SELECT t1.ename AS "Employee Name",
		t1.sal AS "월 급여"
FROM emp t1
;