--인덱스 생성
--CREATE INDEX IDX_WITH_PAY ON with_test1(PAY);

--인덱스 사용
SELECT max(pay)-min(pay)
from WITH_TEST1
where pay > 0; --pay 컬럼을 인덱스로 사용