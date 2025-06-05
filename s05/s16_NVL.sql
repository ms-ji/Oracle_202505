--DESC professor;
			
SELECT name,
		pay,
		bonus,
		to_char((pay*12)+NVL(bonus,0),'99,999') AS anuual_pay
  FROM professor
 WHERE deptno = 201;
 
 