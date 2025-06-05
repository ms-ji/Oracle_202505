COL name FORM A9
COL tel FORM A14
COL area_code FORM a9

SELECT name,
		tel,
		SUBSTR(tel,1,INSTR(tel,'-')-1) area_code
  FROM member
;  
	