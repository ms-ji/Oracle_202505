SELECT text
  FROM t_reg
 WHERE REGEXP_LIKE(text,'[A-Z]{3}')
;