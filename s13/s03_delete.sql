--DEPT2 테이블에서 부서번호(DCODE)가
--9000~9999번 사이인 정보를 삭제 하세요.
col dname for a10
col area for a10
 
DELETE FROM dept2
WHERE dcode BETWEEN 9000 AND 9999;

SELECT *
  FROM DEPT2
 WHERE dcode BETWEEN 9000 AND 9999;
 
 COMMIT;