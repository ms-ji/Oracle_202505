col SEQ for 99
col TITLE for a10
col DIV for a20
col REG_DT for 99
col REG_ID for a10
col MOD_DT for a20
col MOD_ID for a10

SELECT tt1.*
FROM (
	SELECT t1.seq AS SEQ,
			t1.title AS TITLE,
			CASE t1.div
			WHEN '10' THEN '10:자유게시판'
			WHEN '20' THEN '20:공지사항'
			END AS DIV,
			t1.read_cnt,
			TO_CHAR(t1.reg_dt,'YYYYMMDD') AS REG_DT,
			t1.reg_id AS REG_ID,
			TO_CHAR(t1.mod_dt,'YYYYMMDD HH24:MI:SS') AS MOD_DT,
			t1.mod_id AS MOD_ID
	FROM (
	SELECT *
	  from board_99
	  ORDER BY SEQ ) t1
	 WHERE SEQ <=20
	 ) tt1
 WHERE SEQ >=10 
;
	 