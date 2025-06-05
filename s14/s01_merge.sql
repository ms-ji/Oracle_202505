--DESC BOARD;

merge INTO board t1
USING (
SELECT  &seq AS seq,
		'&title' AS title,
		'&contents' AS contents,
		&read_cnt AS READ_CNT,
		'&reg_id' AS reg_id,
		'&mod_id' AS mod_id
  FROM dual
)t2
ON(t1.seq = t2.seq)
WHEN MATCHED THEN
  UPDATE set t1.TITLE  =  t2.TITLE,   
			t1.CONTENTS  =  t2.CONTENTS, 
			t1.READ_CNT  =  t2.READ_CNT, 
			t1.MOD_DT  =  SYSDATE, 
			t1.MOD_ID  =  t2.MOD_ID
WHEN NOT MATCHED THEN
  INSERT (seq,title,contents,read_cnt,reg_dt,reg_id,mod_dt,mod_id)
  VALUES (t2.seq,t2.title,t2.contents,t2.READ_CNT,SYSDATE,t2.reg_id,SYSDATE,t2.mod_id);