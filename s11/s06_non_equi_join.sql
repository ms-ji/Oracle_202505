--고객(customer) 포인트에 따른 사은품(gift) 조회
col cus_name for A20
col gift for A20
col point for 999,999

--oracle join
--SELECT c.gname AS cus_name,c.point AS point,g.gname AS gift
--  FROM customer c, gift g
--  where c.point between g.g_start AND g.g_end;
--  
--ANSI join
--SELECT c.gname AS cus_name,c.point,g.gname AS gift
--  FROM customer c INNER JOIN gift g
--  ON c.point between g.g_start AND g.g_end; 
  
--ANSI join
SELECT c.gname AS cus_name,c.point,g.gname AS gift
  FROM customer c INNER JOIN gift g
  ON c.point >= g.g_start AND c.point <= g.g_end; 