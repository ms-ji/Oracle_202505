--Kevin Bacon ������ ���� �������� ����� ����ϵ� ��ü ��α��� �Բ� �������� ����ϼ���.
col "ENAME AND POSITION" for a50
col PATH for a30


SELECT LPAD(name,level*20,'-')AS "ENAME AND POSITION",
		SYS_CONNECT_BY_PATH(name,'/') AS "PATH"
  FROM emp2
 START WITH pempno = 19966102 
 CONNECT BY PRIOR empno = pempno;
 