--Kevin Bacon 직원의 부하 직원들의 명단을 출력하되 전체 경로까지 함께 나오도록 출력하세요.
col "ENAME AND POSITION" for a50
col PATH for a30


SELECT LPAD(name,level*20,'-')AS "ENAME AND POSITION",
		SYS_CONNECT_BY_PATH(name,'/') AS "PATH"
  FROM emp2
 START WITH pempno = 19966102 
 CONNECT BY PRIOR empno = pempno;
 