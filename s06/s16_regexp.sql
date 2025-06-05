col NO for 99

SELECT *
  FROM t_reg2
 WHERE REGEXP_LIKE(ip,'^[172]{3}\.[0-9]{2}\.[0-9]{3}')
;