CREATE table board (
no number(5) primary key,
title varchar2(100) not null,
writer varchar2(30) not null,
id varchar2(30) not null,
wDate date not null,
count number(10),
orgfilename varchar2(40),
newfilename varchar2(40),
context varchar2(3000) not null,
reCnt number(10),
recommand number(10),
report number(10)
);

create sequence board_seq;


////////////////////////////////////////////////
CREATE table b_notice (
no number(5) primary key,
title varchar2(100) not null,
writer varchar2(30) not null,
id varchar2(30) not null,
wDate date not null,
count number(10),
orgfilename varchar2(40),
newfilename varchar2(40),
context varchar2(3000) not null,
reCnt number(10),
recommand number(10),
report number(10)
);

create sequence b_notice_seq;

//////////////////////////////////////////////////

CREATE table qna_board (
no number(5) primary key,
title varchar2(100) not null,
writer varchar2(30) not null,
id varchar2(30) not null,
wDate date not null,
count number(10),
orgfilename varchar2(40),
newfilename varchar2(40),
context varchar2(3000) not null,
reCnt number(10),
recommand number(10),
report number(10)
);

create sequence qna_board_seq;

////////////////////////////////////////////////////
CREATE table free_board (
no number(5) primary key,
title varchar2(100) not null,
writer varchar2(30) not null,
id varchar2(30) not null,
wDate date not null,
count number(10),
orgfilename varchar2(40),
newfilename varchar2(40),
context varchar2(3000) not null,
reCnt number(10),
recommand number(10),
report number(10)
);

create sequence free_board_seq;


