SELECT name,
		ssn,
		DECODE(substr(ssn,7,1),
				1,'����',
				2,'����',
				3,'����',
				4,'����') as gender
  FROM member;