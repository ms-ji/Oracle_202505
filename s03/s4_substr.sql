--ssn을 사용해서 이름, 태어난 월일, 생일 하루 전 날짜
col name for a12
col ssn  for a13
col "Birthday" for a13
col "Birthday -1"	   for 999999

SELECT name,
		ssn,
		SUBSTR(ssn,1,6) "Birthday",	  
		SUBSTR(ssn,1,6)-1 "Birthday-1"
  FROM member;