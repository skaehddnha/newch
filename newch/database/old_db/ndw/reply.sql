create table reply(
	replyno number(5),
	writer varchar2(30),
	id varchar2(20),
	content varchar2(3000),
	wDate date,
	repLevel number(3),
	no number(5),
	repGroup number(5),
	repNum number(5),
	delCheck number(1),
	constraint reply_no_fk foreign key(no) references board(no) on delete cascade,
	constraint reply_replyno_pk primary key(replyno)
);


create sequence reply_seq
start with 1
increment by 1
nocache;

/////////////////////////////////////////////
create table reply_notice(
	noticeNo number(5),
	repNo number(5),
	repPaNo number(5),
	writer varchar2(30),
	content varchar2(3000),
	wDate date,
	isDel VARCHAR2(5)
);




create sequence reply_notice_seq
start with 1
increment by 1
nocache;


create table reply_qna(
	replyno number(5),
	writer varchar2(30),
	id varchar2(20),
	content varchar2(3000),
	wDate date,
	repLevel number(3),
	no number(5),
	repGroup number(5),
	repNum number(5),
	delCheck number(1),
	constraint reply_qna_no_fk foreign key(no) references qna_board(no) on delete cascade,
	constraint reply_qna_replyno_pk primary key(replyno)
);


create sequence reply_qna_seq
start with 1
increment by 1
nocache;

create table reply_free(
	replyno number(5),
	writer varchar2(30),
	id varchar2(20),
	content varchar2(3000),
	wDate date,
	repLevel number(3),
	no number(5),
	repGroup number(5),
	repNum number(5),
	delCheck number(1),
	constraint reply_free_no_fk foreign key(no) references free_board(no) on delete cascade,
	constraint reply_free_replyno_pk primary key(replyno)
);


create sequence reply_free_seq
start with 1
increment by 1
nocache;
