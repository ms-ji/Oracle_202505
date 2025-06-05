DESC student;
COLUMN STUDNO FORMAT 9999
col name for a20

SELECT studno,
		name,
		birthday
  FROM student
 WHERE TO_char(birthday,'MM') = '01';