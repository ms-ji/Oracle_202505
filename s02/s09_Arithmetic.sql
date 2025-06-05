SELECT ename,
		sal,
		comm,
		comm/sal*100 AS comm_percentage
  FROM emp
  WHERE comm IS NOT NULL
;