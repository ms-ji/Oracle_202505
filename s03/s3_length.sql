--한글 한자 : 3byte
SELECT '이상무' name,
	LENGTH('이상무') "LENGTH",
	LENGTHB('이상무') "LENGTHB"
  from dual
  ;
  