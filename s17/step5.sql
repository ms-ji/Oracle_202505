--with A AS (SELECT /*+ index (w idx_with_pay)*/pay
--			FROM with_test1 w
--			WHERE pay > 0
--			AND ROWNUM = 1		
--)
--SELECT pay
--  FROM A
--;

--�ε����� ���� �ڿ��� ���� ���� -> �ִ�
with A AS (SELECT /*+ index_desc (w idx_with_pay)*/pay
			FROM with_test1 w
			WHERE pay > 0
			AND ROWNUM = 1		
),
B AS (SELECT /*+ index (w idx_with_pay)*/pay
			FROM with_test1 w
			WHERE pay > 0
			AND ROWNUM = 1		
)
SELECT A.pay - b.pay
  FROM A,B
;