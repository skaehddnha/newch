CREATE table b_court (
	no number(5) primary key,
	title varchar2(100) not null,
	writer varchar2(30) not null,
	id varchar2(30) not null,
	guNum number(5),
	guName varchar2(12),
	courtName varchar2(1000),
	address varchar2(1000),
	homepage varchar2(1000),
	tel varchar2(300),
	open varchar2(300),
	rentCost varchar2(800),	
	rentTime varchar2(800),
	courtQuantity varchar2(300),
	orgfilename varchar2(1000),
	newfilename varchar2(1000),
	context varchar2(3000),
	latitude varchar2(300),
	longitude varchar2(300)
);

create sequence b_court_seq
start with 70
increment by 1
nocache;

ALTER TABLE b_court ADD (latitude varchar2(30)); 
ALTER TABLE b_court ADD (longitude varchar2(30)); 
