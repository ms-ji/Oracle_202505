--LTRIM(�÷� �Ǵ� ���ڿ�, ��[TRIM_CHARTERS]��)

--�÷� �Ǵ� ���ڿ����� ����(����)���� ������ ���ڸ� ���� �մϴ�. 
--�� �Լ��� �ַ� ���ڿ����� �����̳� �ٸ� ������ ���ڸ� 
--�����ϴµ� ���˴ϴ�.
SELECT LTRIM(' hello, world ') "LTRIM",
		LTRIM('**hello, world**','*')"LTRIM2"
  FROM dual
;