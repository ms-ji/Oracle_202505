--���� �ڵ�� ���� ������ ���� �հ�
SELECT L_CODE AS "���������ڵ�",
		L_STORE AS "��������",
		L_DATE AS "��������",
		L_QTY AS "����Ǽ�",
		L_TOTAL AS "�����",
		sum(L_TOTAL) 
		OVER(PARTITION BY L_CODE,L_STORE ORDER BY L_TOTAL) 
		AS "��������ݾ�"
  FROM loan;