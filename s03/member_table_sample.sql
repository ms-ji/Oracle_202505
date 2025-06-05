DROP TABLE member;
-- member 테이블 생성


-- 1. 회원(member)
CREATE TABLE member (
    member_id      VARCHAR2(20)     PRIMARY KEY,
    name           VARCHAR2(100)    NOT NULL,
    email          VARCHAR2(300)    UNIQUE,
    tel            VARCHAR2(14),
    mobile         VARCHAR2(13),
    ssn            VARCHAR2(13),
    reg_date       DATE             DEFAULT SYSDATE
);

-- 샘플 데이터 5건 입력
INSERT INTO member (member_id, name, email, tel, mobile, ssn)
VALUES (1, '홍길동', 'hong@test.com', '02-345-6789', '010-1234-5678', '9001011234567');

INSERT INTO member (member_id, name, email, tel, mobile, ssn)
VALUES (2, '김영희', 'kim@test.com', '031-222-3333', '010-2345-6789', '9205052345678');

INSERT INTO member (member_id, name, email, tel, mobile, ssn)
VALUES (3, '이철수', 'lee@test.com', '051-2111-9999', '010-3456-7890', '8803031456789');

INSERT INTO member (member_id, name, email, tel, mobile, ssn)
VALUES (4, '박민수', 'park@test.com', '042-4987-6543', '010-4567-8901','9107071678901');

INSERT INTO member (member_id, name, email, tel, mobile, ssn)
VALUES (5, '최지우', 'choi@test.com', '053-333-7777', '010-5678-9012', '9502022890123');

COMMIT;