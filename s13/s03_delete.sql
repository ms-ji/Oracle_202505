--DEPT2 ���̺��� �μ���ȣ(DCODE)��
--9000~9999�� ������ ������ ���� �ϼ���.
col dname for a10
col area for a10
 
DELETE FROM dept2
WHERE dcode BETWEEN 9000 AND 9999;

SELECT *
  FROM DEPT2
 WHERE dcode BETWEEN 9000 AND 9999;
 
 COMMIT;