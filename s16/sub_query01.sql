--ward ���� conn �� ���� �޴� ����� �̸��� comm ���
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