col JAN for A3
col FEB for A3
col MAR for A3
col APR for A3
col MAY for A3
col JUN for A3
col JUL for A3
col AUG for A3
col SEP for A3
col OCT for A3
col NOV for A3
col DEC for A3
col TOTAL for A5
	
SELECT  count(*) || 'EA' AS TOTAL,
    count(decode(birth_mon,'01',1)) || 'EA' AS JAN,
    count(decode(birth_mon,'02',1)) || 'EA' AS FEB,
    count(decode(birth_mon,'03',1)) || 'EA' AS MAR,
    count(decode(birth_mon,'04',1)) || 'EA' AS APR,
    count(decode(birth_mon,'05',1)) || 'EA' AS MAY,
    count(decode(birth_mon,'06',1)) || 'EA' AS JUN,
    count(decode(birth_mon,'07',1)) || 'EA' AS JUL,
    count(decode(birth_mon,'08',1)) || 'EA' AS AUG,
    count(decode(birth_mon,'09',1)) || 'EA' AS SEP,
    count(decode(birth_mon,'10',1)) || 'EA' AS OCT,
    count(decode(birth_mon,'11',1)) || 'EA' AS NOV,
    count(decode(birth_mon,'12',1)) || 'EA' AS DEC
  FROM (
		SELECT TO_CHAR(birthday,'MM') AS birth_mon
		FROM student
	);
