--DESC student;
COLUMN "ID AND WEIGHT" FORMAT a50

SELECT name||'''s ID : ' ||id||', WEIGHT is ' ||weight||'kg' AS "ID AND WEIGHT"
FROM student ;