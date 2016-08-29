CREATE TABLE CARD(
  CARD_NUM NUMBER,
	CARD_CONTENT VARCHAR2(20),
	CARD_AD VARCHAR2(300),
  CARD_IMAGE VARCHAR2(20),
  CARD_NAME VARCHAR2(300),
  PRIMARY KEY(CARD_NUM)
);

ALTER TABLE CARD DROP COLUMN CARD_CONTENT;

SELECT * FROM CARD;

SELECT * FROM tab;
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(1,'osv','shhipass.GIF','신한카드 하이패스(전용) 체크/하이패스 이용요금의 0.1% 적립!/출퇴근시간대 통행료 20%자동할인!');
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(2,'mos','shrpm.GIF','신한카드 RPM+/모든 주유소에서 최고 150P 적립!/강력한 주유할인에 쇼핑, 마트 할인까지!');     
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(3,'mst','zero.GIF','현대카드 ZERO/2~8월 C카드비교사이트 인기차트 1위/무조건 할인카드의 대표, 현대카드');   
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(4,'otv','m.GIF','현대카드M Edition2/어디서나 0.5~3% M포인트 적립/매월50% M포인트 Special 쇼핑'); 
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(5,'mst','taptap.GIF','삼성카드 taptap O/스타벅스 50%, 교통통신 10%/쇼핑 7% 월 2회 영화5천원 할인');   
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(6,'msv','s4.GIF','삼성카드 4/저렴한 연회비로 국내외 가맹점 확인/무이자 할부에 모든 영화관 할인!	');   
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(7,'mtv','kb_f.GIF','KB국민 FINETECH카드/스타벅스 50%, 교통 20% 할인/CGV, 통신비 5천원 할인까지');   
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(8,'mot','kb.GIF','KB국민 굿데이카드/대중교통, 통신, 주유 업종 청구할인/음식, 편의점, 학원 업종 청구할인');   
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(9,'mot','ltpass.GIF','Driving Pass카드/전국 모든 주유, 충전소 60원 할인/오늘신청 내일수령! 하이패스 30%할인');   
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(10,'mos','allmylt.GIF','올마이쇼핑카드(통신)/쇼핑업종 5%, 통신요금 10% 할인/오늘신청, 내일 수령!');   
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(11,'osv','newuri.GIF','NEW우리카드/모든 백화점, 대형마트, 주유소 할인/우리나라 카드의 기준 NEW우리V카드');   
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(12,'msv','lguuri.GIF','LG U+ 라서 THE 즐거운 카드/LGU+통신비최대 23,000원할인!/실속만점 생활서비스 혜택');   
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(13,'otv','citiclear.GIF','씨티 클리어 카드/영화30%, 대중카드 10%, 점심 5% 할인/온라인 신청시 첫해 연회비 1천원 할인');      
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(14,'stv','citipri.GIF','씨티 프리미어마일 카드(아시아나항공)/PP카드 무료제공/온라인 신청시 첫해연회비 10%할인');     
     
insert into	CARD(CARD_NUM,CARD_AD,CARD_IMAGE,CARD_NAME)
		 values(14,'stv','citipri.GIF','씨티 프리미어마일 카드(아시아나항공)/PP카드 무료제공/온라인 신청시 첫해연회비 10%할인');       
     
