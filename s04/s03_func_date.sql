col name for a10
col reg_date for a30

SELECT name,
		reg_date,
		SYSDATE - reg_date AS "가입 경과일"
  FROM member
;