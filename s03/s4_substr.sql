--ssn�� ����ؼ� �̸�, �¾ ����, ���� �Ϸ� �� ��¥
col name for a12
col ssn  for a13
col "Birthday" for a13
col "Birthday -1"	   for 999999

SELECT name,
		ssn,
		SUBSTR(ssn,1,6) "Birthday",	  
		SUBSTR(ssn,1,6)-1 "Birthday-1"
  FROM member;