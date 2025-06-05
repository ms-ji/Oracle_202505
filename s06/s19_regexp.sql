col only_number for a12

SELECT regexp_replace(tel,'[^0-9]','') AS only_number
  FROM student;