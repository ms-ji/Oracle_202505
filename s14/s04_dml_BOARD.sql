DROP INDEX PK_BOARD;

/* 게시판 */
DROP TABLE BOARD 
	CASCADE CONSTRAINTS;

/* 게시판 */
CREATE TABLE BOARD (
	SEQ NUMBER(8) NOT NULL, /* 순번 */
	TITLE VARCHAR2(200 CHAR) NOT NULL, /* 제목 */
	CONTENTS CLOB, /* 내용 */
	READ_CNT NUMBER(6) DEFAULT 0, /* 조회수 */
	REG_DT DATE DEFAULT SYSDATE, /* 등록일 */
	REG_ID VARCHAR2(20), /* 등록자 */
	MOD_DT DATE DEFAULT SYSDATE, /* 수정일 */
	MOD_ID VARCHAR2(20) /* 수정자 */
);

COMMENT ON TABLE BOARD IS '게시판';

COMMENT ON COLUMN BOARD.SEQ IS '순번';

COMMENT ON COLUMN BOARD.TITLE IS '제목';

COMMENT ON COLUMN BOARD.CONTENTS IS '내용';

COMMENT ON COLUMN BOARD.READ_CNT IS '조회수';

COMMENT ON COLUMN BOARD.REG_DT IS '등록일';

COMMENT ON COLUMN BOARD.REG_ID IS '등록자';

COMMENT ON COLUMN BOARD.MOD_DT IS '수정일';

COMMENT ON COLUMN BOARD.MOD_ID IS '수정자';

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