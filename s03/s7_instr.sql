--INSTR(문자열 또는 컬럼,찾을 문자 ,(-)시작위치, 몇  번째인지(DEFAULT :1))
--시작위치가 음수 이면 오른쪽 부터 찾는다.
SELECT INSTR('2025-05-12','-')      "RESULT" ,
       INSTR('2025-05-12','-',1,2)  "RESULT2",
	   INSTR('2025-05-12','-',-1)   "RESULT3",
       INSTR('2025-05-12','-',-1,2) "RESULT4" 	   
  FROM dual
;