--step1 ���̺� ����
--
--step2 10���� ���̺� ����
--
--step3 ���̺� ��ųʸ� ���� ��ȸ(��� ���� ��)
--
--step4 ��� ���� ����
--
--step5 ���̺� ��ųʸ� ���� ����ȸ(��� ���� ��)

--step1 ���̺� ����
--CREATE TABLE pc_table(
--		no NUMBER
--);

--step2 10���� ���̺� ����
--BEGIN
--	FOR i IN 1..100000 LOOP
--		INSERT INTO pc_table VALUES(i);
--	END LOOP;
--END;
--/

--step3 ���̺� ��ųʸ� ���� ��ȸ(��� ���� ��)
--SELECT no FROM pc_table; --10���� ��ȸ�� ������ ������ ����.

--col table_name for a20
--col num_rows for a20
--col blocks for a20

--SELECT table_name,num_rows,blocks
--  FROM user_tables
-- WHERE table_name = 'PC_TABLE';
 
 --step4 ��� ���� ����
 ANALYZE TABLE pc_table COMPUTE statistics;
 
 --step5 ���̺� ��ųʸ� ���� ����ȸ(��� ���� ��)
 col table_name for a20
 col num_rows for 99999999
 col blocks for 99999999
 SELECT table_name,num_rows,blocks
   FROM user_tables
  WHERE table_name = 'PC_TABLE';