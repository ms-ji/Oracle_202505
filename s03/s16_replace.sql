col name for a8
col "REPLACE" for a17

SELECT name,
		REPLACE(tel,SUBSTR(tel,INSTR(tel,'-',-1)+1),'****') AS "REPLACE"
  FROM member;