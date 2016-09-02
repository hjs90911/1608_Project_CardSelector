CREATE TABLE ssg01(	
	Mem_ID VARCHAR2(20) not null,
	Mem_PW VARCHAR2(20) not null,
	Mem_NAME VARCHAR2(20) not null,
	Mem_GENDER VARCHAR2(7) not null,
	Mem_JUMIN1 VARCHAR2(15) not null,
	Mem_JUMIN2 VARCHAR2(15) not null,
	Mem_PHONE1 VARCHAR2(6) not null,
	Mem_PHONE2 VARCHAR2(6) not null,
	Mem_PHONE3 VARCHAR2(6) not null,
	Mem_HOBBY VARCHAR2(100) not null,
	Mem_BANK VARCHAR2(15) not null,
	Mem_CARD VARCHAR2(150) not null,
	Mem_DONG VARCHAR2(15) not null,
	Mem_DATE DATE not null,
	PRIMARY KEY(Mem_ID)
);

drop table ssg01 purge;

create sequence ssg1_seq
start with 1
increment by 1
nocache;

select * from SSG01;
select * from seq;

delete from ssg01 where mem_num = 2;