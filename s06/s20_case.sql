ACCEPT sort_col CHAR PROMPT '���� ������ �Է��ϼ��� (name �Ǵ� member_id): '
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