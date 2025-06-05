--step1 테이블 생성
--
--step2 10만건 테이블 삽입
--
--step3 테이블 딕셔너리 정보 조회(통계 갱신 전)
--
--step4 통계 정보 갱신
--
--step5 테이블 딕셔너리 정보 재조회(통계 갱신 후)

--step1 테이블 생성
--CREATE TABLE pc_table(
--		no NUMBER
--);

--step2 10만건 테이블 삽입
--BEGIN
--	FOR i IN 1..100000 LOOP
--		INSERT INTO pc_table VALUES(i);
--	END LOOP;
--END;
--/

--step3 테이블 딕셔너리 정보 조회(통계 갱신 전)
--SELECT no FROM pc_table; --10만건 조회할 때까지 끝나지 않음.

--col table_name for a20
--col num_rows for a20
--col blocks for a20

--SELECT table_name,num_rows,blocks
--  FROM user_tables
-- WHERE table_name = 'PC_TABLE';
 
 --step4 통계 정보 갱신
 ANALYZE TABLE pc_table COMPUTE statistics;
 
 --step5 테이블 딕셔너리 정보 재조회(통계 갱신 후)
 col table_name for a20
 col num_rows for 99999999
 col blocks for 99999999
 SELECT table_name,num_rows,blocks
   FROM user_tables
  WHERE table_name = 'PC_TABLE';