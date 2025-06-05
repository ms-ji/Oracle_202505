--STEP 2. SCOTT.WITH_TEST1 테이블을 생성 후 데이터를 500만 건 입력
--SYS에서 SCOTT으로 계정 전환
--conn scott/pcwk
--DROP TABLE WITH_TEST1;
--
--CREATE TABLE WITH_TEST1(
--	no NUMBER,
--	name VARCHAR2(10),
--	pay NUMBER(7)
--)
--TABLESPACE USERS 
--;

--5000000
--BEGIN
--	for i IN 1..5000000 LOOP
--		INSERT INTO WITH_TEST1 
--		VALUES(i,DBMS_RANDOM.STRING('A',5),
--				DBMS_RANDOM.VALUE(7,9999999));
--	END LOOp;
--COMMIT;
--END;
--/

--SET SQLPROMPT '&_USER.@&_CONNECT_IDENTIFIER.>'
--SET PAGESIZE 50
--SET LINESIZE 200
--SET TIME ON 
--SET TIMING ON
--DEFINE_EDITOR = "C:\Program Files\Notepad++\notepad++.exe"

SELECT max(pay)-min(pay)
from WITH_TEST1;