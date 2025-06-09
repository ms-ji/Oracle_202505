SELECT *
FROM (
  SELECT 
    CASE 
      WHEN ROUND(MONTHS_BETWEEN(SYSDATE, hiredate)/12) <= 10 THEN '10년'
      WHEN ROUND(MONTHS_BETWEEN(SYSDATE, hiredate)/12) <= 20 THEN '20년'
      WHEN ROUND(MONTHS_BETWEEN(SYSDATE, hiredate)/12) <= 30 THEN '30년'
      WHEN ROUND(MONTHS_BETWEEN(SYSDATE, hiredate)/12) <= 40 THEN '40년'
      ELSE '50년'
    END AS year_group
  FROM professor
)
PIVOT (
  COUNT(*) 
  FOR year_group IN (
    '10년' AS "10년",
    '20년' AS "20년",
    '30년' AS "30년",
    '40년' AS "40년",
    '50년' AS "50년"
  )
);