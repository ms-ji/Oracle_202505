ACCEPT sort_col CHAR PROMPT '정렬 기준을 입력하세요 (name 또는 member_id): '
col name for a10

SELECT member_id,
		name
  FROM member
  ORDER BY 
	CASE '&sort_col'
		WHEN 'name' THEN name
		WHEN 'member_id' THEN member_id
		ELSE NULL 
	END
;