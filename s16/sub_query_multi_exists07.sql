col position for a25

SELECT name, position, TO_CHAR(pay,'$999,999,999') AS salary
FROM emp2
WHERE pay > ANY(SELECT pay
				FROM emp2
				WHERE POSITION = 'Section head');
