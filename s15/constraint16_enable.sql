--INSERT INTO t_enable VALUES(1,'AAA');
--INSERT INTO t_enable VALUES(2,'BBB');
--
--SELECT * from t_enable;

--TE_NAME_NN : not null확인
--INSERT INTO t_enable VALUES(3,NULL);

--ALTER TABLE t_enable
--disable constraint te_name_nn;

--disable 데이터 입력
--INSERT INTO t_enable VALUES(3,NULL);

--입력 확인
--SELECT * from t_enable;

--ENABLE NOVALIDATE : 기존 비 검사, 신규만 검사
--ALTER TABLE t_enable
--ENABLE NOVALIDATE constraint te_name_nn;

--입력 확인
SELECT * from t_enable;

--신규 데이터 입력
INSERT INTO t_enable VALUES(4,NULL);