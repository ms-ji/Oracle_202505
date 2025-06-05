--INSTR(문자열 또는 컬럼,찾을 문자 ,시작위치, 몇  번째인지(DEFAULT :1))
SELECT INSTR('2025-05-12','-') "RESULT",
	   INSTR('2025-05-12','-',1,2) "RESULT2" 
  FROM dual
;