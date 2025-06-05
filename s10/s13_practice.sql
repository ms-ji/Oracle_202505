col total for a12
col seoul   for a12
col gyenggi for a12
col busan   for a12
col ulsan   for a12
col daegu   for a12
col gyeongnam for a12

select count(SUBSTR(tel,1,instr(tel,')')-1)) ||'('|| (count(decode(SUBSTR(tel,1,instr(tel,')')-1),'02',0)) /SUBSTR(tel,1,instr(tel,')')-1))*100 ||'%)' AS total,
		count(decode(SUBSTR(tel,1,instr(tel,')')-1),'02',0))  ||'('|| count(decode(SUBSTR(tel,1,instr(tel,')')-1),'02',0)) /count(SUBSTR(tel,1,instr(tel,')')-1)*100 ||'%)'AS seoul  ,
		count(decode(SUBSTR(tel,1,instr(tel,')')-1),'031',0)) ||'('|| count(decode(SUBSTR(tel,1,instr(tel,')')-1),'031',0))/count(SUBSTR(tel,1,instr(tel,')')-1)*100 ||'%)'AS gyenggi,
		count(decode(SUBSTR(tel,1,instr(tel,')')-1),'051',0)) ||'('|| count(decode(SUBSTR(tel,1,instr(tel,')')-1),'051',0))/count(SUBSTR(tel,1,instr(tel,')')-1)*100 ||'%)'AS busan  ,
		count(decode(SUBSTR(tel,1,instr(tel,')')-1),'052',0)) ||'('|| count(decode(SUBSTR(tel,1,instr(tel,')')-1),'052',0))/count(SUBSTR(tel,1,instr(tel,')')-1)*100 ||'%)'AS ulsan  ,
		count(decode(SUBSTR(tel,1,instr(tel,')')-1),'053',0)) ||'('|| count(decode(SUBSTR(tel,1,instr(tel,')')-1),'053',0))/count(SUBSTR(tel,1,instr(tel,')')-1)*100 ||'%)'AS daegu  ,
		count(decode(SUBSTR(tel,1,instr(tel,')')-1),'055',0)) ||'('|| count(decode(SUBSTR(tel,1,instr(tel,')')-1),'055',0))/count(SUBSTR(tel,1,instr(tel,')')-1)*100 ||'%)'AS gyeongnam
  FROM student
;