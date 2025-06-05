--00.disable로 다시 바꾼 후
--ALTER TABLE t_enable
--disable CONSTRAINT te_name_nn;

--14:38:21 SCOTT@XE>@constraint17_enable.sql
--테이블이 변경되었습니다.

--01. te_name_nn을 ENABLE VALIDATE(모든 데이터 검사)바꿈
ALTER TABLE t_enable
ENABLE VALIDATE constraint te_name_nn;

--14:39:12 SCOTT@XE>@constraint17_enable.sql
--ENABLE VALIDATE constraint te_name_nn
--                           *
--2행에 오류:
--ORA-02293: (SCOTT.TE_NAME_NN)을 검증할 수 없습니다 - 잘못된 제약을 확인합니다