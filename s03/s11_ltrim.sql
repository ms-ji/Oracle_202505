--LTRIM(컬럼 또는 문자열, ‘[TRIM_CHARTERS]’)

--컬럼 또는 문자열에서 왼쪽(시작)에서 지정된 문자를 제거 합니다. 
--이 함수는 주로 문자열에서 공백이나 다른 지정된 문자를 
--제거하는데 사용됩니다.
SELECT LTRIM(' hello, world ') "LTRIM",
		LTRIM('**hello, world**','*')"LTRIM2"
  FROM dual
;