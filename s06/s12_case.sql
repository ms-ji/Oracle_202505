SELECT name,
		jumin,
		substr(jumin,3,2) AS mm,
		CASE
			WHEN substr(jumin,3,2) in('01','02','03') THEN '1/4'
			WHEN substr(jumin,3,2) in('04','05','06') THEN '2/4'
			WHEN substr(jumin,3,2) in('07','08','09') THEN '3/4'
			WHEN substr(jumin,3,2) in('10','11','12') THEN '4/4'
		END AS quarter
  FROM student
;