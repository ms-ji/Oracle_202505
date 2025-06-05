-- oracle join

SELECT a.name, b.name, c.name
  FROM cat_a a, cat_b b, cat_c c
 WHERE a.no = b.no
   AND b.no = c.no;