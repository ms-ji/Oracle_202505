col "REPLACE" for a15
col name for a8

SELECT name,
		REPLACE(ssn,SUBSTR(ssn,7),'-/-/-/-') AS "REPLACE"
  FROM MEMBER
;