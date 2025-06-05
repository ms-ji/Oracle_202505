--BEGIN
--	FOR i IN 1.. 1002 LOOP
--	INSERT INTO board (seq,title,contents,read_cnt,reg_dt,reg_id, mod_dt,mod_id)
--		VALUES ( i,'제목_'||i,'내용_'||i,0,SYSDATE-i,'ADMIN',SYSDATE-i,'ADMIN');
--	END LOOP;
-- COMMIT;
--END;
--/

--col title for a20
--col mod_id for a20
--
--SELECT tt1.RNUM AS no,
--		tt1.title AS title,
--		tt1.read_cnt AS read_cnt,
--		DECODE(TO_CHAR(SYSDATE,'YYYYMMDD'),TO_CHAR(tt1.mod_dt,'YYYYMMDD'),
--		TO_CHAR(tt1.mod_dt,'HH24:MM'),TO_CHAR(tt1.mod_dt,'YYYY/MM/DD')) AS mod_dt,
--		tt1.mod_id AS mod_id
--FROM(
--	SELECT ROWNUM AS RNUM,
--			t1.title,
--			t1.read_cnt,
--			t1.mod_dt,
--			t1.mod_id
--	from (
--		SELECT *
--		  FROM board
--		 ORDER BY mod_dt DESC
--	)t1
--	WHERE ROWNUM <= &page_size*(&page_no-1)+ &page_size
--)tt1
----1,11,21,31
--WHERE RNUM >=&page_size*(&page_no-1)+1;

--paging no : 1,2,3,..,10

--SELECT count(*) total_cnt
--  FROM board;

--cross join
sql.append("SELECT a.*,b.*                                                                        \n");
sql.append("FROM(                                                                                 \n");
sql.append("SELECT tt1.RNUM AS no,                                                                \n");
sql.append("		tt1.title AS title,                                                           \n");
sql.append("		tt1.read_cnt AS read_cnt,                                                     \n");
sql.append("		DECODE(TO_CHAR(SYSDATE,'YYYYMMDD'),TO_CHAR(tt1.mod_dt,'YYYYMMDD'),            \n");
sql.append("		TO_CHAR(tt1.mod_dt,'HH24:MM'),TO_CHAR(tt1.mod_dt,'YYYY/MM/DD')) AS mod_dt,    \n");
sql.append("		tt1.mod_id AS mod_id                                                          \n");
sql.append("FROM(                                                                                 \n");
sql.append("	SELECT ROWNUM AS RNUM,                                                            \n");
sql.append("			t1.title,                                                                 \n");
sql.append("			t1.read_cnt,                                                              \n");
sql.append("			t1.mod_dt,                                                                \n");
sql.append("			t1.mod_id                                                                 \n");
sql.append("	from (                                                                            \n");
sql.append("		SELECT *                                                                      \n");
sql.append("		  FROM board                                                                  \n");
sql.append("		 ORDER BY mod_dt DESC                                                         \n");
sql.append("	)t1                                                                               \n");
sql.append("	WHERE ROWNUM <=10                                                                 \n");
sql.append(")tt1                                                                                  \n");
sql.append("--1,11,21,31                                                                          \n");
sql.append("WHERE RNUM>=1                                                                         \n");
sql.append(") A CROSS join (                                                                      \n");
sql.append("  SELECT count(*) total_cnt                                                           \n");
sql.append(" 		 FROM board) B                                                                \n");