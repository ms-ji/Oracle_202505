SELECT name,
		tel,
		DECODE(SUBSTR(tel,1,instr(tel,'-',1)-1),
				'02','서울',
				'031','경기도',
				'042','대전광역시',
				'051','부산광역시',
				'053','대구') AS LOC
  FROM member;