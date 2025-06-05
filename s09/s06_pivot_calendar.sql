SELECT SUN, MON, TUE, WED, THU, FRI, SAT
  FROM(
	SELECT weekno,TO_NUMBER(dayno) AS dayno,day
	FROM ecal
	WHERE year = '2025' AND month = '5'
	)
  PIVOT(
		min(TO_NUMBER(dayno))-- �� ���Ϻ� ���� ���� ä���ֱ� ���� ���� �������� ���� �Լ�
		FOR day IN ('SUN' AS SUN,
					'MON' AS  MON,
					'TUE' AS  TUE,
					'WED' AS  WED,
					'THU' AS  THU,
					'FRI' AS  FRI,
					'SAT' AS  SAT			
		)            
	)	
;

