col "REPLACE" for a17
col email for a17

SELECT email,
		REPLACE(email,SUBSTR(email,3,2),'--')"REPLACE"
  FROM member;