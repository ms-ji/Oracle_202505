--ward 보다 conn 을 적게 받는 사람의 이름과 comm 출력
--SELECT comm
--  FROM emp
-- WHERE ename = 'WARD';
 
-- SELECT ename,comm
--   FROM emp
--  where comm <500;

SELECT ename,comm
  FROM emp
 where comm <(SELECT comm
                FROM emp
               WHERE ename = 'WARD');