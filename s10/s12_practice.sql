col total for 99
col seoul   for 99
col gyenggi for 99
col busan   for 99
col ulsan   for 99
col daegu   for 99
col gyeongnam for 99

select total,seoul,gyenggi,busan,ulsan,daegu,gyeongnam
 FROM (
	select SUBSTR(tel,1,instr(tel,')')-1) AS tel_no,
		 count(tel) over() total,
	FROM student
	)
 pivot (
		count(tel_no)
		for tel_no IN('02' AS seoul  ,
                      '031' AS gyenggi,
                      '051' AS busan  ,
                      '052' AS ulsan  ,
                      '053' AS daegu  ,
                      '055' AS gyeongnam
		)
	);