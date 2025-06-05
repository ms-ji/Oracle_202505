SELECT name,
		tel
  FROM student
 WHERE regexp_like(tel,'^[0-9]{2}\)[0-9]{4}')
 ORDER BY tel
;