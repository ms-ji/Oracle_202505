SELECT sal,
		comm,
		sal/NULLIF(comm,0) 
  FROM emp;