
/* Drop Tables */

DROP TABLE CH_REPLY CASCADE CONSTRAINTS;
DROP TABLE CH_BOARD CASCADE CONSTRAINTS;
DROP TABLE CH_COURT CASCADE CONSTRAINTS;
DROP TABLE CH_FREE_MATCH_JOINERS CASCADE CONSTRAINTS;
DROP TABLE CH_FREE_MATCH_BOARD CASCADE CONSTRAINTS;
DROP TABLE CH_LETTER CASCADE CONSTRAINTS;
DROP TABLE CH_MATCH_ENTRY CASCADE CONSTRAINTS;
DROP TABLE CH_MATCH_RECORD CASCADE CONSTRAINTS;
DROP TABLE CH_PLAYER_RECORD CASCADE CONSTRAINTS;
DROP TABLE CH_REQUEST_JOIN_TEAM CASCADE CONSTRAINTS;
DROP TABLE CH_TEAM_RECORD CASCADE CONSTRAINTS;
DROP TABLE CH_TEAM CASCADE CONSTRAINTS;
DROP TABLE CH_MEMBER CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE CH_BOARD
(
	-- 기본키
	CH_BOARD_SEQ number NOT NULL,
	-- 제목
	TITLE varchar2(100),
	-- 글쓴이
	-- 
	WRITER varchar2(30),
	-- 작성일자
	WDATE date,
	-- 조회수
	COUNT number,
	-- 원본사진이름
	ORG_PHOTO varchar2(40),
	-- 사본사진경로
	NEW_PHOTO varchar2(40),
	-- 본문
	CONTEXT varchar2(3000),
	-- 추천수
	-- 
	RECMD number,
	-- 신고
	REPRT number,
	-- 01-공지사항
	-- 02-QNA
	-- 03-자유게시판
	BOARD_TYPE varchar2(300),
	-- 등록일
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (CH_BOARD_SEQ)
);


CREATE TABLE CH_COURT
(
	-- 기본키
	CH_COURT_SEQ number NOT NULL,
	-- 주제
	-- 
	TITLE varchar2(100),
	-- 글쓴이
	-- 
	WRITER varchar2(30),
	-- 지역구번호
	-- 
	GU_NUMBER number,
	-- 지역구이름
	-- 
	GU_NAME varchar2(12),
	-- 운동장주소
	COURT_ADDR varchar2(1000),
	-- 운동장홈페이지
	HOMEPAGE varchar2(1000),
	-- 전화번호
	-- 
	TEL varchar2(300),
	-- 개방유무
	-- 
	OPEN varchar2(300),
	-- 대관비용
	RENT_COST varchar2(800),
	-- 대관시간
	RENT_TIME varchar2(800),
	-- 코트장수
	COURT_QUANTITY varchar2(300),
	-- 원본사진파일
	-- 
	ORG_PHOTO varchar2(300),
	-- 사본사진파일
	-- 
	NEW_PHOTO varchar2(1000),
	-- 본문
	-- 
	CONTEXT varchar2(3000),
	-- 경도
	LATITUDE varchar2(300),
	-- 위도
	-- 
	LONGITUDE varchar2(300),
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (CH_COURT_SEQ)
);


CREATE TABLE CH_FREE_MATCH_BOARD
(
	-- 기본키
	CH_FREE_MATCH_BOARD_SEQ number NOT NULL,
	-- 제목
	TITLE varchar2(40),
	-- 글쓴이
	WRITER varchar2(40),
	-- 참석자수
	JOINER_CNT number,
	-- 경기장소
	ADDR varchar2(30),
	-- 회비
	COST number,
	-- 내용
	CONTENT varchar2(3000),
	-- 경기일
	-- 
	MATCH_DATE date,
	-- 등록일
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (CH_FREE_MATCH_BOARD_SEQ)
);


CREATE TABLE CH_FREE_MATCH_JOINERS
(
	-- 기본키
	CH_FREE_MATCH_SEQ number NOT NULL,
	-- 게시물번호
	NO number,
	-- 경기번호
	TITLE_NO number,
	-- 참가자
	-- 
	JOINER varchar2(20),
	-- 참가날짜
	JOIN_DATE date,
	-- 등록일
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (CH_FREE_MATCH_SEQ)
);


CREATE TABLE CH_LETTER
(
	-- 기본키
	LETTER_SEQ number NOT NULL,
	-- 게시물번호
	NO number,
	-- 보낸이
	-- 
	FR_ID varchar2(30),
	-- 받는이
	-- 
	TO_ID varchar2(30),
	-- 제목
	TITLE varchar2(100),
	-- 내용
	CONTEXT varchar2(3000),
	-- 읽은날짜
	-- 
	-- 
	READ_DATE date,
	-- 등록일
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (LETTER_SEQ)
);


CREATE TABLE CH_MATCH_ENTRY
(
	-- 기본키
	CH_MATCH_ENTRY_SEQ  NOT NULL,
	-- 등록일
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 팀_경기_기록_기본키
	CH_MATCH_RECORD_SEQ ,
	-- 팀_기본키
	CH_TEAM_SEQ ,
	-- 삭제여부
	DEL_YN char,
	-- 기본키
	CH_MATCH_RECORD_SEQ number NOT NULL,
	PRIMARY KEY (CH_MATCH_ENTRY_SEQ)
);


CREATE TABLE CH_MATCH_RECORD
(
	-- 기본키
	CH_MATCH_RECORD_SEQ number NOT NULL,
	-- 신청팀_경기_상태
	R_PLAY_STATE ,
	-- 피신청팀_경기_상태
	ED_PLAY_STATE ,
	PLAY_DATE ,
	-- 경기장소
	PLAY_PLACE ,
	JUDGE ,
	-- 신청팀_번호
	REQUEST_TEAM_NO ,
	R_TEAM_DIRECTOR ,
	-- 신청팀_기록원
	R_TEAM_SCORER ,
	-- 피신청팀_번호
	ED_TEAM_NO ,
	-- 피신청팀_감독
	ED_TEAM_DIRECTOR ,
	-- 피신청팀_기록원
	ED_TEAM_SCORER ,
	-- 등록일
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (CH_MATCH_RECORD_SEQ)
);


CREATE TABLE CH_MEMBER
(
	-- 기본키
	CH_MEMBER_SEQ number NOT NULL,
	-- 아이디
	ID varchar2(20),
	-- 비밀번호
	PASS varchar2(14),
	-- 이름
	NAME varchar2(14),
	-- 닉네임
	-- 
	NICK_NAME varchar2(14),
	-- 성별
	GENDER number(5),
	-- 생년월일
	-- 
	BIRTH varchar2(15),
	-- 전화번호
	TEL varchar2(14),
	-- 이메일
	EMAIL varchar2(50),
	-- 주소
	ADDR varchar2(300),
	-- 상세주소
	ADDR_DT varchar2(300),
	-- 정보공개범위
	INFO_RANGE number(5),
	-- 원본프로필사진
	ORG_PHOTO varchar2(40),
	-- 사본프로필사진
	-- 
	NEW_PHOTO varchar2(40),
	-- 키
	-- 
	HEIGHT varchar2(10),
	-- 몸무게
	-- 
	WEIGHT varchar2(10),
	-- 선호지역
	FAVOR_ADDR1 varchar2(300),
	-- 선호지역2
	-- 
	FAVOR_ADDR2 varchar2(300),
	-- 선호지역3
	-- 
	FAVOR_ADDR3 varchar2(300),
	-- 선호 포지션
	-- 
	POSITION number(1),
	-- 코멘트
	COMENT varchar2(3000),
	-- 사용자 레벨
	STATEMENT number(1),
	-- 누적포인트
	-- 
	POINT number(10),
	-- 등록일
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (CH_MEMBER_SEQ)
);


CREATE TABLE CH_PLAYER_RECORD
(
	-- 기본키
	CH_PLAYER_RECORD_SEQ number NOT NULL,
	-- 경기자
	PLAY number,
	-- 상대자
	OPPS number,
	-- 점수_아이디
	POINT_ID varchar2(20),
	-- 1S-1점
	-- 2S-2점
	-- 3S-3점
	-- R-리바운드
	-- A-어시스트
	-- B-블로킹
	-- S-스틸
	-- F-파울
	POINT ,
	-- 등록일
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (CH_PLAYER_RECORD_SEQ)
);


CREATE TABLE CH_REPLY
(
	-- 기본키
	CH_REPLY_SEQ number NOT NULL,
	-- 게시물번호
	REPLY_NO number,
	-- 30
	-- 
	WRITER varchar2(20),
	-- 아이디
	-- 
	ID varchar2(20),
	-- 내용
	-- 
	CONTENT varchar2(3000),
	-- 작성일
	-- 
	WDATE date,
	-- 댓글레벨
	-- 
	REPLY_LEVEL number,
	-- 게시글번호
	-- 
	NO number,
	-- 리플그룹
	REPLY_GROUP number,
	-- 삭제여부
	-- 
	DELETE_CHECK number,
	-- 공지사항리플
	NOTICE_REPLY varchar2(300),
	-- QNA리플
	QNA_REPLY varchar2(300),
	-- 자유게시판리플
	FREE_REPLY varchar2(300),
	WRT_DATE date,
	-- 수정일
	UPD_DATE ,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (CH_REPLY_SEQ)
);


CREATE TABLE CH_REQUEST_JOIN_TEAM
(
	-- 기본키
	REQUEST_JOIN_TEAM_SEQ number NOT NULL,
	-- 아이디
	ID varchar2(30),
	-- 희망_팀_번호
	HOPE_TEAM_NO number,
	-- 연락처
	-- 
	CONTACT varchar2(30),
	-- 연락방법
	CONTACT_MATHOD number,
	-- 하고싶은말
	CONTEXT varchar2(300),
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (REQUEST_JOIN_TEAM_SEQ)
);


CREATE TABLE CH_TEAM
(
	-- 기본키
	CH_TEAM_SEQ number NOT NULL,
	-- 팀번호
	NO number NOT NULL,
	-- 팀이름
	NAME varchar2(20),
	-- 선호지역
	PRFR_GRND varchar2(40),
	-- 선호시간
	PRFR_TIME varchar2(30),
	-- 회비
	FEE number,
	-- 가입조건
	CNDTION varchar2(3000),
	-- 원본사진명
	ORG_PHOTO varchar2(100),
	-- 사본사진명
	NEW_PHOTO varchar2(100),
	-- 코멘트
	COMMENT varchar2(3000),
	-- 설립일
	FND_DATE varchar2(10),
	-- 등록일
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (CH_TEAM_SEQ)
);


CREATE TABLE CH_TEAM_RECORD
(
	-- 기본키
	CH_TEAM_RECORD_SEQ number NOT NULL,
	-- 경기_번호
	PLAY_NO number,
	-- 경기_날짜
	PLAY_DATE date,
	-- 신청팀_번호
	PLAY_TEAM_NO number,
	-- 상대팀_번호
	OPPS_TEAM_NO number,
	-- 포인트_아이디
	POINT_ID varchar2(20),
	-- 1S-1점
	-- 2S-2점
	-- 3S-3점
	-- R-리바운드
	-- A-어시스트
	-- B-블로킹
	-- S-스틸
	-- F-파울
	POINT number,
	-- 등록일
	WRT_DATE date,
	-- 수정일
	UPD_DATE date,
	-- 삭제여부
	DEL_YN char,
	PRIMARY KEY (CH_TEAM_RECORD_SEQ)
);



/* Create Foreign Keys */

ALTER TABLE CH_REPLY
	ADD FOREIGN KEY (CH_BOARD_SEQ)
	REFERENCES CH_BOARD (CH_BOARD_SEQ)
;


ALTER TABLE CH_REPLY
	ADD FOREIGN KEY (CH_COURT_SEQ)
	REFERENCES CH_COURT (CH_COURT_SEQ)
;


ALTER TABLE CH_FREE_MATCH_JOINERS
	ADD FOREIGN KEY (CH_FREE_MATCH_BOARD_SEQ)
	REFERENCES CH_FREE_MATCH_BOARD (CH_FREE_MATCH_BOARD_SEQ)
;


ALTER TABLE CH_MATCH_ENTRY
	ADD FOREIGN KEY (CH_MATCH_RECORD_SEQ)
	REFERENCES CH_MATCH_RECORD (CH_MATCH_RECORD_SEQ)
;


ALTER TABLE CH_BOARD
	ADD FOREIGN KEY (CH_MEMBER_SEQ)
	REFERENCES CH_MEMBER (CH_MEMBER_SEQ)
;


ALTER TABLE CH_COURT
	ADD FOREIGN KEY (CH_MEMBER_SEQ)
	REFERENCES CH_MEMBER (CH_MEMBER_SEQ)
;


ALTER TABLE CH_FREE_MATCH_BOARD
	ADD FOREIGN KEY (CH_MEMBER_SEQ)
	REFERENCES CH_MEMBER (CH_MEMBER_SEQ)
;


ALTER TABLE CH_LETTER
	ADD FOREIGN KEY (CH_MEMBER_SEQ)
	REFERENCES CH_MEMBER (CH_MEMBER_SEQ)
;


ALTER TABLE CH_PLAYER_RECORD
	ADD FOREIGN KEY (CH_MEMBER_SEQ)
	REFERENCES CH_MEMBER (CH_MEMBER_SEQ)
;


ALTER TABLE CH_REQUEST_JOIN_TEAM
	ADD FOREIGN KEY (CH_MEMBER_SEQ)
	REFERENCES CH_MEMBER (CH_MEMBER_SEQ)
;


ALTER TABLE CH_TEAM
	ADD FOREIGN KEY (CH_MEMBER_SEQ)
	REFERENCES CH_MEMBER (CH_MEMBER_SEQ)
;


ALTER TABLE CH_MATCH_ENTRY
	ADD FOREIGN KEY (CH_TEAM_SEQ)
	REFERENCES CH_TEAM (CH_TEAM_SEQ)
;


ALTER TABLE CH_MATCH_RECORD
	ADD FOREIGN KEY (CH_TEAM_SEQ)
	REFERENCES CH_TEAM (CH_TEAM_SEQ)
;


ALTER TABLE CH_TEAM_RECORD
	ADD FOREIGN KEY (CH_TEAM_SEQ)
	REFERENCES CH_TEAM (CH_TEAM_SEQ)
;



/* Comments */

COMMENT ON COLUMN CH_BOARD.CH_BOARD_SEQ IS '기본키';
COMMENT ON COLUMN CH_BOARD.TITLE IS '제목';
COMMENT ON COLUMN CH_BOARD.WRITER IS '글쓴이
';
COMMENT ON COLUMN CH_BOARD.WDATE IS '작성일자';
COMMENT ON COLUMN CH_BOARD.COUNT IS '조회수';
COMMENT ON COLUMN CH_BOARD.ORG_PHOTO IS '원본사진이름';
COMMENT ON COLUMN CH_BOARD.NEW_PHOTO IS '사본사진경로';
COMMENT ON COLUMN CH_BOARD.CONTEXT IS '본문';
COMMENT ON COLUMN CH_BOARD.RECMD IS '추천수
';
COMMENT ON COLUMN CH_BOARD.REPRT IS '신고';
COMMENT ON COLUMN CH_BOARD.BOARD_TYPE IS '01-공지사항
02-QNA
03-자유게시판';
COMMENT ON COLUMN CH_BOARD.WRT_DATE IS '등록일';
COMMENT ON COLUMN CH_BOARD.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_BOARD.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_BOARD.CH_MEMBER_SEQ IS '기본키';
COMMENT ON COLUMN CH_COURT.CH_COURT_SEQ IS '기본키';
COMMENT ON COLUMN CH_COURT.TITLE IS '주제
';
COMMENT ON COLUMN CH_COURT.WRITER IS '글쓴이
';
COMMENT ON COLUMN CH_COURT.GU_NUMBER IS '지역구번호
';
COMMENT ON COLUMN CH_COURT.GU_NAME IS '지역구이름
';
COMMENT ON COLUMN CH_COURT.COURT_ADDR IS '운동장주소';
COMMENT ON COLUMN CH_COURT.HOMEPAGE IS '운동장홈페이지';
COMMENT ON COLUMN CH_COURT.TEL IS '전화번호
';
COMMENT ON COLUMN CH_COURT.OPEN IS '개방유무
';
COMMENT ON COLUMN CH_COURT.RENT_COST IS '대관비용';
COMMENT ON COLUMN CH_COURT.RENT_TIME IS '대관시간';
COMMENT ON COLUMN CH_COURT.COURT_QUANTITY IS '코트장수';
COMMENT ON COLUMN CH_COURT.ORG_PHOTO IS '원본사진파일
';
COMMENT ON COLUMN CH_COURT.NEW_PHOTO IS '사본사진파일
';
COMMENT ON COLUMN CH_COURT.CONTEXT IS '본문
';
COMMENT ON COLUMN CH_COURT.LATITUDE IS '경도';
COMMENT ON COLUMN CH_COURT.LONGITUDE IS '위도
';
COMMENT ON COLUMN CH_COURT.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_COURT.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_COURT.CH_MEMBER_SEQ IS '기본키';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.CH_FREE_MATCH_BOARD_SEQ IS '기본키';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.TITLE IS '제목';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.WRITER IS '글쓴이';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.JOINER_CNT IS '참석자수';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.ADDR IS '경기장소';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.COST IS '회비';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.CONTENT IS '내용';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.MATCH_DATE IS '경기일
';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.WRT_DATE IS '등록일';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_FREE_MATCH_BOARD.CH_MEMBER_SEQ IS '기본키';
COMMENT ON COLUMN CH_FREE_MATCH_JOINERS.CH_FREE_MATCH_SEQ IS '기본키';
COMMENT ON COLUMN CH_FREE_MATCH_JOINERS.NO IS '게시물번호';
COMMENT ON COLUMN CH_FREE_MATCH_JOINERS.TITLE_NO IS '경기번호';
COMMENT ON COLUMN CH_FREE_MATCH_JOINERS.JOINER IS '참가자
';
COMMENT ON COLUMN CH_FREE_MATCH_JOINERS.JOIN_DATE IS '참가날짜';
COMMENT ON COLUMN CH_FREE_MATCH_JOINERS.WRT_DATE IS '등록일';
COMMENT ON COLUMN CH_FREE_MATCH_JOINERS.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_FREE_MATCH_JOINERS.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_FREE_MATCH_JOINERS.CH_FREE_MATCH_BOARD_SEQ IS '기본키';
COMMENT ON COLUMN CH_LETTER.LETTER_SEQ IS '기본키';
COMMENT ON COLUMN CH_LETTER.NO IS '게시물번호';
COMMENT ON COLUMN CH_LETTER.FR_ID IS '보낸이
';
COMMENT ON COLUMN CH_LETTER.TO_ID IS '받는이
';
COMMENT ON COLUMN CH_LETTER.TITLE IS '제목';
COMMENT ON COLUMN CH_LETTER.CONTEXT IS '내용';
COMMENT ON COLUMN CH_LETTER.READ_DATE IS '읽은날짜

';
COMMENT ON COLUMN CH_LETTER.WRT_DATE IS '등록일';
COMMENT ON COLUMN CH_LETTER.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_LETTER.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_LETTER.CH_MEMBER_SEQ IS '기본키';
COMMENT ON COLUMN CH_MATCH_ENTRY.CH_MATCH_ENTRY_SEQ IS '기본키';
COMMENT ON COLUMN CH_MATCH_ENTRY.WRT_DATE IS '등록일';
COMMENT ON COLUMN CH_MATCH_ENTRY.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_MATCH_ENTRY.CH_MATCH_RECORD_SEQ IS '팀_경기_기록_기본키';
COMMENT ON COLUMN CH_MATCH_ENTRY.CH_TEAM_SEQ IS '팀_기본키';
COMMENT ON COLUMN CH_MATCH_ENTRY.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_MATCH_ENTRY.CH_MATCH_RECORD_SEQ IS '기본키';
COMMENT ON COLUMN CH_MATCH_ENTRY.CH_TEAM_SEQ IS '기본키';
COMMENT ON COLUMN CH_MATCH_RECORD.CH_MATCH_RECORD_SEQ IS '기본키';
COMMENT ON COLUMN CH_MATCH_RECORD.R_PLAY_STATE IS '신청팀_경기_상태';
COMMENT ON COLUMN CH_MATCH_RECORD.ED_PLAY_STATE IS '피신청팀_경기_상태';
COMMENT ON COLUMN CH_MATCH_RECORD.PLAY_PLACE IS '경기장소';
COMMENT ON COLUMN CH_MATCH_RECORD.REQUEST_TEAM_NO IS '신청팀_번호';
COMMENT ON COLUMN CH_MATCH_RECORD.R_TEAM_SCORER IS '신청팀_기록원';
COMMENT ON COLUMN CH_MATCH_RECORD.ED_TEAM_NO IS '피신청팀_번호';
COMMENT ON COLUMN CH_MATCH_RECORD.ED_TEAM_DIRECTOR IS '피신청팀_감독';
COMMENT ON COLUMN CH_MATCH_RECORD.ED_TEAM_SCORER IS '피신청팀_기록원';
COMMENT ON COLUMN CH_MATCH_RECORD.WRT_DATE IS '등록일';
COMMENT ON COLUMN CH_MATCH_RECORD.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_MATCH_RECORD.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_MATCH_RECORD.CH_TEAM_SEQ IS '기본키';
COMMENT ON COLUMN CH_MEMBER.CH_MEMBER_SEQ IS '기본키';
COMMENT ON COLUMN CH_MEMBER.ID IS '아이디';
COMMENT ON COLUMN CH_MEMBER.PASS IS '비밀번호';
COMMENT ON COLUMN CH_MEMBER.NAME IS '이름';
COMMENT ON COLUMN CH_MEMBER.NICK_NAME IS '닉네임
';
COMMENT ON COLUMN CH_MEMBER.GENDER IS '성별';
COMMENT ON COLUMN CH_MEMBER.BIRTH IS '생년월일
';
COMMENT ON COLUMN CH_MEMBER.TEL IS '전화번호';
COMMENT ON COLUMN CH_MEMBER.EMAIL IS '이메일';
COMMENT ON COLUMN CH_MEMBER.ADDR IS '주소';
COMMENT ON COLUMN CH_MEMBER.ADDR_DT IS '상세주소';
COMMENT ON COLUMN CH_MEMBER.INFO_RANGE IS '정보공개범위';
COMMENT ON COLUMN CH_MEMBER.ORG_PHOTO IS '원본프로필사진';
COMMENT ON COLUMN CH_MEMBER.NEW_PHOTO IS '사본프로필사진
';
COMMENT ON COLUMN CH_MEMBER.HEIGHT IS '키
';
COMMENT ON COLUMN CH_MEMBER.WEIGHT IS '몸무게
';
COMMENT ON COLUMN CH_MEMBER.FAVOR_ADDR1 IS '선호지역';
COMMENT ON COLUMN CH_MEMBER.FAVOR_ADDR2 IS '선호지역2
';
COMMENT ON COLUMN CH_MEMBER.FAVOR_ADDR3 IS '선호지역3
';
COMMENT ON COLUMN CH_MEMBER.POSITION IS '선호 포지션
';
COMMENT ON COLUMN CH_MEMBER.COMENT IS '코멘트';
COMMENT ON COLUMN CH_MEMBER.STATEMENT IS '사용자 레벨';
COMMENT ON COLUMN CH_MEMBER.POINT IS '누적포인트
';
COMMENT ON COLUMN CH_MEMBER.WRT_DATE IS '등록일';
COMMENT ON COLUMN CH_MEMBER.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_MEMBER.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_PLAYER_RECORD.CH_PLAYER_RECORD_SEQ IS '기본키';
COMMENT ON COLUMN CH_PLAYER_RECORD.PLAY IS '경기자';
COMMENT ON COLUMN CH_PLAYER_RECORD.OPPS IS '상대자';
COMMENT ON COLUMN CH_PLAYER_RECORD.POINT_ID IS '점수_아이디';
COMMENT ON COLUMN CH_PLAYER_RECORD.POINT IS '1S-1점
2S-2점
3S-3점
R-리바운드
A-어시스트
B-블로킹
S-스틸
F-파울';
COMMENT ON COLUMN CH_PLAYER_RECORD.WRT_DATE IS '등록일';
COMMENT ON COLUMN CH_PLAYER_RECORD.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_PLAYER_RECORD.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_PLAYER_RECORD.CH_MEMBER_SEQ IS '기본키';
COMMENT ON COLUMN CH_REPLY.CH_REPLY_SEQ IS '기본키';
COMMENT ON COLUMN CH_REPLY.REPLY_NO IS '게시물번호';
COMMENT ON COLUMN CH_REPLY.WRITER IS '30
';
COMMENT ON COLUMN CH_REPLY.ID IS '아이디
';
COMMENT ON COLUMN CH_REPLY.CONTENT IS '내용
';
COMMENT ON COLUMN CH_REPLY.WDATE IS '작성일
';
COMMENT ON COLUMN CH_REPLY.REPLY_LEVEL IS '댓글레벨
';
COMMENT ON COLUMN CH_REPLY.NO IS '게시글번호
';
COMMENT ON COLUMN CH_REPLY.REPLY_GROUP IS '리플그룹';
COMMENT ON COLUMN CH_REPLY.DELETE_CHECK IS '삭제여부
';
COMMENT ON COLUMN CH_REPLY.NOTICE_REPLY IS '공지사항리플';
COMMENT ON COLUMN CH_REPLY.QNA_REPLY IS 'QNA리플';
COMMENT ON COLUMN CH_REPLY.FREE_REPLY IS '자유게시판리플';
COMMENT ON COLUMN CH_REPLY.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_REPLY.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_REPLY.CH_COURT_SEQ IS '기본키';
COMMENT ON COLUMN CH_REPLY.CH_BOARD_SEQ IS '기본키';
COMMENT ON COLUMN CH_REQUEST_JOIN_TEAM.REQUEST_JOIN_TEAM_SEQ IS '기본키';
COMMENT ON COLUMN CH_REQUEST_JOIN_TEAM.ID IS '아이디';
COMMENT ON COLUMN CH_REQUEST_JOIN_TEAM.HOPE_TEAM_NO IS '희망_팀_번호';
COMMENT ON COLUMN CH_REQUEST_JOIN_TEAM.CONTACT IS '연락처
';
COMMENT ON COLUMN CH_REQUEST_JOIN_TEAM.CONTACT_MATHOD IS '연락방법';
COMMENT ON COLUMN CH_REQUEST_JOIN_TEAM.CONTEXT IS '하고싶은말';
COMMENT ON COLUMN CH_REQUEST_JOIN_TEAM.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_REQUEST_JOIN_TEAM.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_REQUEST_JOIN_TEAM.CH_MEMBER_SEQ IS '기본키';
COMMENT ON COLUMN CH_TEAM.CH_TEAM_SEQ IS '기본키';
COMMENT ON COLUMN CH_TEAM.NO IS '팀번호';
COMMENT ON COLUMN CH_TEAM.NAME IS '팀이름';
COMMENT ON COLUMN CH_TEAM.PRFR_GRND IS '선호지역';
COMMENT ON COLUMN CH_TEAM.PRFR_TIME IS '선호시간';
COMMENT ON COLUMN CH_TEAM.FEE IS '회비';
COMMENT ON COLUMN CH_TEAM.CNDTION IS '가입조건';
COMMENT ON COLUMN CH_TEAM.ORG_PHOTO IS '원본사진명';
COMMENT ON COLUMN CH_TEAM.NEW_PHOTO IS '사본사진명';
COMMENT ON COLUMN CH_TEAM.COMMENT IS '코멘트';
COMMENT ON COLUMN CH_TEAM.FND_DATE IS '설립일';
COMMENT ON COLUMN CH_TEAM.WRT_DATE IS '등록일';
COMMENT ON COLUMN CH_TEAM.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_TEAM.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_TEAM.CH_MEMBER_SEQ IS '기본키';
COMMENT ON COLUMN CH_TEAM_RECORD.CH_TEAM_RECORD_SEQ IS '기본키';
COMMENT ON COLUMN CH_TEAM_RECORD.PLAY_NO IS '경기_번호';
COMMENT ON COLUMN CH_TEAM_RECORD.PLAY_DATE IS '경기_날짜';
COMMENT ON COLUMN CH_TEAM_RECORD.PLAY_TEAM_NO IS '신청팀_번호';
COMMENT ON COLUMN CH_TEAM_RECORD.OPPS_TEAM_NO IS '상대팀_번호';
COMMENT ON COLUMN CH_TEAM_RECORD.POINT_ID IS '포인트_아이디';
COMMENT ON COLUMN CH_TEAM_RECORD.POINT IS '1S-1점
2S-2점
3S-3점
R-리바운드
A-어시스트
B-블로킹
S-스틸
F-파울';
COMMENT ON COLUMN CH_TEAM_RECORD.WRT_DATE IS '등록일';
COMMENT ON COLUMN CH_TEAM_RECORD.UPD_DATE IS '수정일';
COMMENT ON COLUMN CH_TEAM_RECORD.DEL_YN IS '삭제여부';
COMMENT ON COLUMN CH_TEAM_RECORD.CH_TEAM_SEQ IS '기본키';



