-- 제약 조건 이름 지정 없을 경우
CREATE TABLE ed_emp2_no_con(
	emp_no NUMBER(4)   PRIMARY KEY,
	name VARCHAR2(20)  NOT NULL,
	jumin CHAR(13)     UNIQUE NOT NULL,
	LOC_CODE NUMBER(1) CHECK(LOC_CODE<5),
	DEPTNO VARCHAR2(6) REFERENCES dept2(dcode)
);