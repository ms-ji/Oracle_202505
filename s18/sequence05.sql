--CREATE TABLE PW_ORDER (
--	ORDER_ID NUMBER GENERATED ALWAYS AS IDENTITY,
--	ORDER_DATE DATE DEFAULT SYSDATE,
--	CUST_ID NUMBER
--);

INSERT INTO PW_ORDER(CUST_ID) VALUES (101);
INSERT INTO PW_ORDER(CUST_ID)VALUES (102);
SELECT * FROM PW_ORDER;