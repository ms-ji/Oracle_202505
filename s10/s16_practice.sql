--대출 코드와 대출 지점별 누적 합계
SELECT L_CODE AS "대출종목코드",
		L_STORE AS "대출지점",
		L_DATE AS "대출일자",
		L_QTY AS "대출건수",
		L_TOTAL AS "대출액",
		sum(L_TOTAL) 
		OVER(PARTITION BY L_CODE,L_STORE ORDER BY L_TOTAL) 
		AS "누적대출금액"
  FROM loan;