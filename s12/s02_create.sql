CREATE TABLE pc_default(
  no NUMBER(3,1)    DEFAULT 0,
  name VARCHAR2(10) DEFAULT 'NO NAME',
--  hiredate DATE     DEFAULT SYSDATE
  HIREDATE TIMESTAMP DEFAULT SYSTIMESTAMP /* �Ի��� */
);

--Ư�� �÷��� �Է� �������� DEFAULT
INSERT INTO pc_default (no) VALUES (1);

--Ȯ��
COMMIT;


SELECT * FROM pc_default;
