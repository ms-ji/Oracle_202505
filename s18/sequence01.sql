--SEQUENCE 이름 : PCWK_SEQ
--시작값 : 100
--끝 값 : 120
--증가 값 : 1
--캐시 : 2
--순환 : NOCYCLE -- 사용 예시 : CALL센터
--반복 시 시작값 : 90

--CREATE SEQUENCE PCWK_SEQ
--INCREMENT BY 1 
--START WITH 100
--MAXVALUE 120 
--CACHE 2 --메모리에 2개씩 생성
--CYCLE  
--;

--CREATE TABLE PCWK_ORDER(
--	ORDER_NUMBER NUMBER(5),
--	ORDER_NAME VARCHAR2(20 CHAR),
--	PROD_NAME VARCHAR2(20 CHAR),
--	PROD_QTY NUMBER(5)
--);

--INSERT INTO PCWK_ORDER VALUES (PCWK_SEQ.NEXTVAL,'이상무','토마토',3);

--col ORDER_NAME for a7
--col PROD_NAME for a7
--col PROD_QTY for 999
--
--select * from pcwk_order;


--select pcwk_seq.currval from dual;

INSERT INTO PCWK_ORDER VALUES (PCWK_SEQ.NEXTVAL,'이상무','TESLA',1);

col ORDER_NAME for a7
col PROD_NAME for a7
col PROD_QTY for 999

select * from pcwk_order;