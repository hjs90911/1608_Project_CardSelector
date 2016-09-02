select * from tab;
select * from REVIEW;

CREATE TABLE REVIEW(
	REVIEW_NUM NUMBER,
	REVIEW_ID VARCHAR2(20),
	REVIEW_SUBJECT VARCHAR2(50),
	REVIEW_CONTENT VARCHAR2(2000),
	REVIEW_DATE DATE,
	CARD_NUM NUMBER,
	STAR_RATE NUMBER,
	PRIMARY KEY(REVIEW_NUM)
);

create sequence review_seq
start with 1
increment by 1
nocache;

