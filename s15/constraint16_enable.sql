--INSERT INTO t_enable VALUES(1,'AAA');
--INSERT INTO t_enable VALUES(2,'BBB');
--
--SELECT * from t_enable;

--TE_NAME_NN : not nullȮ��
--INSERT INTO t_enable VALUES(3,NULL);

--ALTER TABLE t_enable
--disable constraint te_name_nn;

--disable ������ �Է�
--INSERT INTO t_enable VALUES(3,NULL);

--�Է� Ȯ��
--SELECT * from t_enable;

--ENABLE NOVALIDATE : ���� �� �˻�, �űԸ� �˻�
--ALTER TABLE t_enable
--ENABLE NOVALIDATE constraint te_name_nn;

--�Է� Ȯ��
SELECT * from t_enable;

--�ű� ������ �Է�
INSERT INTO t_enable VALUES(4,NULL);