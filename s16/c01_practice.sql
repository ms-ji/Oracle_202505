CREATE TABLE ICONS(
	no NUMBER(5) CONSTRAINT icons_no_pk PRIMARY KEY,
	name VARCHAR2(20) CONSTRAINT icons_name_nn NOT NULL,
	jumin VARCHAR2(13) CONSTRAINT icons_jumin_nn NOT NULL
						CONSTRAINT icons_jumin_uk UNIQUE,
	area NUMBER(1) CONSTRAINT lcons_area_ck CHECK(area>=1 AND area<=4),
	deptno VARCHAR2(6) CONSTRAINT lcons_deptno_fk REFERENCES dept2(dcode)
);