--DESC emp;

COLUMN "NAME AND JOB" FORMAT A38

SELECT ename||'(' ||job||q'[) , ]' ||ename||q'[']'||job||'''' AS "NAME AND JOB"
 FROM emp;
