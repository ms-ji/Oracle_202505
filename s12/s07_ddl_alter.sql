--CREATE TABLE dapt2_01 AS
--SELECT dcode,dname
--  FROM dept2
-- WHERE dcode IN (1000,1001,1002);
 
--SELECT *
--FROM dapt2_01;

--loc 컬럼, 데이터 타입 VARCHAR(10)
--ALTER TABLE dapt2_01
--ADD(loc VARCHAR2(10));
--
--col dname for a30;
--col dcode for a10;
--
--SELECT * FROM dapt2_01;

ALTER TABLE dapt2_01
MODIFY (loc VARCHAR2(10) DEFAULT 'SEOUL');

SELECT * FROM dapt2_01;

