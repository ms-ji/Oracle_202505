SELECT weekno,
		tO_NUMBER(dayno)AS dayno,
		DAY
  FROM ecal
 WHERE year = '2025'
  AND month ='5'
 ORDER BY weekno,dayno;