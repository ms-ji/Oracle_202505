INSERT INTO dept2(dcode,dname,pdept,area)
VALUES ('9001','TEMP_1','1006','TEMP AREA');

SELECT * FROM dept2
WHERE dcode = '9001';

COMMIT;