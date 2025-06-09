SELECT *
FROM (
  SELECT 
    CASE 
      WHEN ROUND(MONTHS_BETWEEN(SYSDATE, hiredate)/12) <= 10 THEN '10��'
      WHEN ROUND(MONTHS_BETWEEN(SYSDATE, hiredate)/12) <= 20 THEN '20��'
      WHEN ROUND(MONTHS_BETWEEN(SYSDATE, hiredate)/12) <= 30 THEN '30��'
      WHEN ROUND(MONTHS_BETWEEN(SYSDATE, hiredate)/12) <= 40 THEN '40��'
      ELSE '50��'
    END AS year_group
  FROM professor
)
PIVOT (
  COUNT(*) 
  FOR year_group IN (
    '10��' AS "10��",
    '20��' AS "20��",
    '30��' AS "30��",
    '40��' AS "40��",
    '50��' AS "50��"
  )
);