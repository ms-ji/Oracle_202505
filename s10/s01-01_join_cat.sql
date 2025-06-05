-- oracle join

SELECT a.name, b.name
  FROM cat_a a, cat_b b
 WHERE a.no = b.no;