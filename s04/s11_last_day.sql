--SELECT SYSDATE,
--		LAST_DAY(SYSDATE) AS ladt_day_of_month
--  FROM dual
--;

SELECT LAST_DAY(to_date('2024-02-01','YYYY-MM-DD')) AS ladt_day_of_month
  FROM dual
;