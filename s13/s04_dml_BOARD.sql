DROP INDEX PK_BOARD;

/* �Խ��� */
DROP TABLE BOARD 
	CASCADE CONSTRAINTS;

/* �Խ��� */
CREATE TABLE BOARD (
	SEQ NUMBER(8) NOT NULL, /* ���� */
	TITLE VARCHAR2(200 CHAR) NOT NULL, /* ���� */
	CONTENTS CLOB, /* ���� */
	READ_CNT NUMBER(6) DEFAULT 0, /* ��ȸ�� */
	REG_DT DATE DEFAULT SYSDATE, /* ����� */
	REG_ID VARCHAR2(20), /* ����� */
	MOD_DT DATE DEFAULT SYSDATE, /* ������ */
	MOD_ID VARCHAR2(20) /* ������ */
);

COMMENT ON TABLE BOARD IS '�Խ���';

COMMENT ON COLUMN BOARD.SEQ IS '����';

COMMENT ON COLUMN BOARD.TITLE IS '����';

COMMENT ON COLUMN BOARD.CONTENTS IS '����';

COMMENT ON COLUMN BOARD.READ_CNT IS '��ȸ��';

COMMENT ON COLUMN BOARD.REG_DT IS '�����';

COMMENT ON COLUMN BOARD.REG_ID IS '�����';

COMMENT ON COLUMN BOARD.MOD_DT IS '������';

COMMENT ON COLUMN BOARD.MOD_ID IS '������';

CREATE UNIQUE INDEX PK_BOARD
	ON BOARD (
		SEQ ASC
	);

ALTER TABLE BOARD
	ADD
		CONSTRAINT PK_BOARD
		PRIMARY KEY (
			SEQ
		);
		
sql.append("SELECT                                                  \n");
sql.append("    seq,                                                \n");
sql.append("    title,                                              \n");
sql.append("    contents,                                           \n");
sql.append("    read_cnt,                                           \n");
sql.append("    TO_CHAR(reg_dt,'YYYY/MM/DD')AS reg_dt,              \n");
sql.append("    reg_id,                                             \n");
sql.append("    TO_CHAR(mod_dt,'YYYY/MM/DD HH24:MI:SS')AS mod_dt,   \n");
sql.append("    mod_id                                              \n");
sql.append("FROM                                                    \n");
sql.append("    board                                               \n");
sql.append("WHERE seq = ?;                                          \n");