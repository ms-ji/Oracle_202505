SELECT a.*,b.*
FROM(
SELECT tt1.RNUM AS no,
		tt1.title AS title,
		tt1.read_cnt AS read_cnt,
		DECODE(TO_CHAR(SYSDATE,'YYYYMMDD'),TO_CHAR(tt1.mod_dt,'YYYYMMDD'),
		TO_CHAR(tt1.mod_dt,'HH24:MM'),TO_CHAR(tt1.mod_dt,'YYYY/MM/DD')) AS mod_dt,
		tt1.mod_id AS mod_id
FROM(
	SELECT ROWNUM AS RNUM,
			t1.title,
			t1.read_cnt,
			t1.mod_dt,
			t1.mod_id
	from (
		SELECT *
		  FROM board
		 ORDER BY mod_dt DESC
	)t1
)tt1
--1,11,21,31
WHERE RNUM BETWEEN 1 AND 10 --100만건 까지는 속도차이 크게 없음.
) A CROSS join (
SELECT count(*) total_cnt
  FROM board) B;