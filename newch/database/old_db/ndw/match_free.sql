CREATE TABLE match_free_board(
no number(5) primary key ,
header varchar2(30) ,
writer varchar2(30) ,
title varchar2(40) ,
s_date date ,
c_date date ,
current_cnt number(5),
joiner_cnt number(5) ,
g_address varchar2(30) ,
cost number(20) ,
content varchar2(4000)
);

CREATE sequence match_free_board_seq;

CREATE TABLE match_free_joiners(
no number(5) primary key,
title_no number(5) ,
joiner varchar2(20) ,
join_date date ,
attend_date date
);

create sequence match_free_joiners_seq;


DROP TABLE match_free_board purge;

DROP SEQUENCE match_free_board_seq;

DROP TABLE match_free_joiners purge;

DROP SEQUENCE match_free_joiners_seq;