--SELECT SYSDATE FROM dual;
--���� SESSION ��¥ ���� ����
--ALTER SESSION SET NLS_DATE_FORMAT ='RRRR-MM-DD HH24:MI:ss';

-- 7�� ���� ��¥ : SYSDATE +7 -> ��¥
SELECT SYSDATE +7 as next_week FROM dual;

--3�� ���� ��¥
SELECT SYSDATE -3 AS three_day_ago FROM dual;

