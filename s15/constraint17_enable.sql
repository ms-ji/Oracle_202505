--00.disable�� �ٽ� �ٲ� ��
--ALTER TABLE t_enable
--disable CONSTRAINT te_name_nn;

--14:38:21 SCOTT@XE>@constraint17_enable.sql
--���̺��� ����Ǿ����ϴ�.

--01. te_name_nn�� ENABLE VALIDATE(��� ������ �˻�)�ٲ�
ALTER TABLE t_enable
ENABLE VALIDATE constraint te_name_nn;

--14:39:12 SCOTT@XE>@constraint17_enable.sql
--ENABLE VALIDATE constraint te_name_nn
--                           *
--2�࿡ ����:
--ORA-02293: (SCOTT.TE_NAME_NN)�� ������ �� �����ϴ� - �߸��� ������ Ȯ���մϴ�