
SELECT email
  FROM professor
-- WHERE regexp_like(email,'.\@\w+\.\w{2,}$')
 WHERE regexp_like(email,'[a-zA-Z0-0._%+1]+@[a-zA-Z0-0.-]+\.[A-Za-z]{2,}$')
;