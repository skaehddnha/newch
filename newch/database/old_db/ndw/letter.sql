CREATE table letter(
no number(5) primary key,
from_id varchar2(30) not null,
to_id varchar2(30) not null,
title varchar2(100) not null,
write_time date not null,
read_time date,
context varchar2(3000) not null
);

create sequence letter_seq;