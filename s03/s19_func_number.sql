SELECT ABS(-100) AS ABS_VAL,
		CEIL(10.1) AS CEIL_VAL,
		FLOOR(9.9) AS FLOOR_VAL,
		MOD(17,4) AS MOD_VAL,
		POWER(3,3) AS POWER_VAL,
		ROUND(123.456,1) AS ROUND_VAL,
		TRUNC(123.456,1) AS TRUNC_VAL,
		SIGN(-20)AS SIGN_VAL,
		SQRT(16) AS SQRT_VAL
  FROM dual
  ;