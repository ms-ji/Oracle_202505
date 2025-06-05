COLUMN name Format A10
COLUMN "TEL" Format A15

SELECT name,
		REPLACE(tel,SUBSTR(tel,INSTR(tel,'-',-1)+1),'****') "TEL"
  FROM MEMBER;