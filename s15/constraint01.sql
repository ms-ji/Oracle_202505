CREATE TABLE ed_emp2(
	emp_no NUMBER(4)   CONSTRAINT pk_emp2 PRIMARY KEY,
	name VARCHAR2(20)  CONSTRAINT nn_emp2_name NOT NULL,
	jumin CHAR(13)     CONSTRAINT uq_emp2_jumin UNIQUE
				       CONSTRAINT nn_emp2_jumin NOT NULL,
	LOC_CODE NUMBER(1) CONSTRAINT cnk_emp2_loc_code CHECK(LOC_CODE<5),
	DEPTNO VARCHAR2(6) CONSTRAINT fk_emp2_dept2 REFERENCES dept2(dcode)
);
	