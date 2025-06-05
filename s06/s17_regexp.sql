SELECT *
  FROM t_reg
 WHERE NOT regexp_like(text,'[A-Za-z0-9]')
;