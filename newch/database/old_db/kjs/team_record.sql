CREATE TABLE TEAM_RECORD(
	TEAMNO NUMBER(4) NOT NULL,
	PLAYNO VARCHAR2(30) NOT NULL,
	PLAYDATE DATE NOT NULL,
	PLAYTEAM VARCHAR2(30) NOT NULL,
	OPPOSINGTEAM VARCHAR2(30) NOT NULL,
	DIRECTOR VARCHAR2(14) NOT NULL,
	SCORER VARCHAR2(14) NOT NULL,
	SUCCESS2P NUMBER(5),
	TRY2P NUMBER(5),
	SUCCESS3P NUMBER(5),
	TRY3P NUMBER(5),
	SUCCESS1P NUMBER(5),
	TRY1P NUMBER(5),
	REBOUND NUMBER(5),
	ASSIST NUMBER(5),
	BLOCKING NUMBER(5),
	STEAL NUMBER(5),
	FOUL NUMBER(5),
	MANNERPOINT NUMBER(5)
);