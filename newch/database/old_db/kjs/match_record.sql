create table match_record(
play_no varchar2(100) not null,
r_play_state number(3) not null,
ed_play_state number(3) not null,
play_Date date,
play_place varchar2(100),
judge varchar2(14),
request_Team_no number(5) not null, 
r_Team_Director varchar2(30), 
r_Team_scorer varchar2(30), 
ed_Team_no number(5) not null, 
ed_Team_Director varchar2(30), 
ed_Team_scorer varchar2(30)
);