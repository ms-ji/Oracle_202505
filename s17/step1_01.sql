--col tablespace_name for a20
--col file_name for a60
--
--SELECT tablespace_name,
--		bytes/(1024*1024) MB,
--		file_name
--  FROM dba_data_files;
  
--���ϵ��� �뷮�� �ڵ� ����
ALTER DATABASE datafile 'C:\APP\USER\PRODUCT\21C\ORADATA\XE\USERS01.DBF'
AUTOEXTEND ON;