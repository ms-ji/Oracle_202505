CREATE TABLE pc_default(
  no NUMBER(3,1)    DEFAULT 0,
  name VARCHAR2(10) DEFAULT 'NO NAME',
--  hiredate DATE     DEFAULT SYSDATE
  HIREDATE TIMESTAMP DEFAULT SYSTIMESTAMP /* 입사일 */
);

--특정 컬럼만 입력 나머지는 DEFAULT
INSERT INTO pc_default (no) VALUES (1);

--확정
COMMIT;


SELECT * FROM pc_default;
