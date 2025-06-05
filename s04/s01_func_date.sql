--SELECT SYSDATE FROM dual;
--현재 SESSION 날짜 형식 지정
--ALTER SESSION SET NLS_DATE_FORMAT ='RRRR-MM-DD HH24:MI:ss';

-- 7일 뒤의 날짜 : SYSDATE +7 -> 날짜
SELECT SYSDATE +7 as next_week FROM dual;

--3일 전의 날짜
SELECT SYSDATE -3 AS three_day_ago FROM dual;

