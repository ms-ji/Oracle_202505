SELECT name,
		tel,
		DECODE(SUBSTR(tel,1,instr(tel,'-',1)-1),
				'02','����',
				'031','��⵵',
				'042','����������',
				'051','�λ걤����',
				'053','�뱸') AS LOC
  FROM member;