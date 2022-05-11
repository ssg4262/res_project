CREATE TABLE board(
	BOARD_NUM INT,
	BOARD_NAME VARCHAR(20) NOT NULL,
	BOARD_PASS VARCHAR(15) NOT NULL,
	BOARD_SUBJECT VARCHAR(50) NOT NULL,
	BOARD_CONTENT VARCHAR(2000) NOT NULL,
	BOARD_FILE BLOB NOT NULL,
	BOARD_RE_REF INT NOT NULL,
	BOARD_RE_LEV INT NOT NULL,
	BOARD_RE_SEQ INT NOT NULL,
	BOARD_READCOUNT INT DEFAULT 0,
	BOARD_DATE DATE,
	boardRating int not null,
	PRIMARY KEY(BOARD_NUM)
	
	
	
);

insert into BOARD values();


	SELECT * from  board
	
	
	drop table board;
	
	select max(board_num) from BOARD
	
	select BOARD_NAME,BOARD_SUBJECT,BOARD_CONTENT ,BOARD_DATE from  BOARD
	order by board_date desc limit 0,5;
	