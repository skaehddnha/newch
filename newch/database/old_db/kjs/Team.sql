team_no는 추후 시퀀스로

CREATE table team(
team_no number(4) primary key,
team_name varchar2(30),
director_id varchar2(30),
found_date varchar2(10),
tel varchar2(30),
email varchar2(50),
prefer_ground varchar2(40),
prefer_time varchar2(30),
membership_fee number(10),
join_condition varchar2(3000),
orgprofilephoto varchar2(100),
newprofilephoto varchar2(100),
context varchar2(3000),
statement number(1),
point number(10),
join_date date
);

CREATE sequence team_seq;

CREATE table teamsub(
applicant varchar2(20) not null,  
acceptor varchar2(20) not null, 
app_statement number(5), 
acc_statement number(5)
)