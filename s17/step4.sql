--�ε��� ����
--CREATE INDEX IDX_WITH_PAY ON with_test1(PAY);

--�ε��� ���
SELECT max(pay)-min(pay)
from WITH_TEST1
where pay > 0; --pay �÷��� �ε����� ���