SELECT deptno,ROUND(AVG(NVL(sal,0)),2) AS "��ձ޿�"
  FROM emp
 GROUP BY deptno
 HAVING AVG(NVL(sal,0))>=2500;