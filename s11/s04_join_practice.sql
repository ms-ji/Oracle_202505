col cust_name for a25
col gift_name for a25
col point for 999999
--ORACLE JOIN
SELECT c.gname AS cust_name,
		c.point AS point,
		g.gname AS gift_name
  FROM customer c, gift g
  WHERE c.point >= g.g_start
  AND g.gname = 'Notebook'
  ORDER BY cust_name 
;
--ANSI JOIN
SELECT c.gname AS cust_name,
		c.point AS point,
		g.gname AS gift_name
  FROM customer c JOIN gift g
  ON c.point >= g.g_start
  AND g.gname = 'Notebook'
  ORDER BY cust_name 
;
