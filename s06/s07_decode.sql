SELECT name,
		ssn,
		DECODE(substr(ssn,7,1),
				1,'害切',
				2,'食切',
				3,'害切',
				4,'食切') as gender
  FROM member;