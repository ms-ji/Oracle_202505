--ename에서 마지막 글자가 'R'이 있는 경우 제거
SELECT ename,
		RTRIM(ename,'R') "RTRIM"
  FROM emp;