--SEQUENCE �̸� : PCWK_SEQ
--���۰� : 100
--�� �� : 120
--���� �� : 1
--ĳ�� : 2
--��ȯ : NOCYCLE -- ��� ���� : CALL����
--�ݺ� �� ���۰� : 90

--CREATE SEQUENCE PCWK_SEQ
--INCREMENT BY 1 
--START WITH 100
--MAXVALUE 120 
--CACHE 2 --�޸𸮿� 2���� ����
--CYCLE  
--;

--CREATE TABLE PCWK_ORDER(
--	ORDER_NUMBER NUMBER(5),
--	ORDER_NAME VARCHAR2(20 CHAR),
--	PROD_NAME VARCHAR2(20 CHAR),
--	PROD_QTY NUMBER(5)
--);

--INSERT INTO PCWK_ORDER VALUES (PCWK_SEQ.NEXTVAL,'�̻�','�丶��',3);

--col ORDER_NAME for a7
--col PROD_NAME for a7
--col PROD_QTY for 999
--
--select * from pcwk_order;


--select pcwk_seq.currval from dual;

INSERT INTO PCWK_ORDER VALUES (PCWK_SEQ.NEXTVAL,'�̻�','TESLA',1);

col ORDER_NAME for a7
col PROD_NAME for a7
col PROD_QTY for 999

select * from pcwk_order;