col SUN FOR 99
col MON FOR 99
col TUE FOR 99
col WED FOR 99
col THU FOR 99
col FRI FOR 99
col SAT FOR 99

SELECT weekno,
		--tO_NUMBER(dayno)AS dayno,
		MAX(decode(DAY,'SUN',tO_NUMBER(dayno))) SUN,
		MAX(decode(DAY,'MON',tO_NUMBER(dayno))) MON,	
		MAX(decode(DAY,'TUE',tO_NUMBER(dayno))) TUE,	
		MAX(decode(DAY,'WED',tO_NUMBER(dayno))) WED,
		MAX(decode(DAY,'THU',tO_NUMBER(dayno))) THU,
		MAX(decode(DAY,'FRI',tO_NUMBER(dayno))) FRI,
		MAX(decode(DAY,'SAT',tO_NUMBER(dayno))) SAT	
  FROM ecal
 WHERE year = '2025'
 AND month = '1'
 GROUP BY weekno
 ORDER BY weekno;
 
 --SUN
 --MON
 --TUE
 --WED
 --THU
 --FRI
 --SAT