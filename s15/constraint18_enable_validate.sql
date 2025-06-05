--1. EXCEPTION table 생성
--@C:\app\user\product\21c\dbhomeXE\rdbms\admin\utlexcpt.sql

--2.  tt550 테이블 생성
--CREATE TABLE tt550(
--	no NUMBER CONSTRAINT chk_tt550_no CHECK(no >5)
--);

--3.
--ALTER TABLE tt550
--DISABLE CONSTRAINT chk_tt550_no;

--INSERT INTO tt550 VALUES(6);
--INSERT INTO tt550 VALUES(7);
--
--INSERT INTO tt550 VALUES(1); --차후에 문제 발생
--
--COMMIT;
--SELECT * FROM tt550;

--5.
--ALTER TABLE tt550
--ENABLE VALIDATE CONSTRAINT chk_tt550_no
--EXCEPTIONS INTO scott.EXCEPTIONS;

--6.
--COL OWNER FOR A20
--COL table_name FOR A20
--
--SELECT row_id,
--		owner,
--		table_name
--  FROM EXCEPTIONS;
  
--7.
--SELECT rowid, no
--  FROM tt550
-- WHERE rowid IN(SELECT row_id FROM EXCEPTIONS);
 
 --8.
 --UPDATE tt550
 -- SET no = 8
 --WHERE rowid ='AAATIgAAHAAAAP+AAC';



