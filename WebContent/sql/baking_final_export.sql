--------------------------------------------------------
--  파일이 생성됨 - 수요일-2월-24-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CLS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CLS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LIKEPAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LIKEPAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PAYMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PAYMENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RESERVATION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "RESERVATION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEW_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEW_SEQ1"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ2
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEW_SEQ2"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CLS
--------------------------------------------------------

  CREATE TABLE "CLS" 
   (	"CLS_IDX" NUMBER(10,0), 
	"CLS_NAME" VARCHAR2(50 BYTE), 
	"CLS_CONTENT" CLOB, 
	"CLS_IMAGE1" VARCHAR2(100 BYTE), 
	"CLS_PRICE" NUMBER(10,0), 
	"CLS_STARTDATE" DATE, 
	"CLS_ENDDATE" DATE, 
	"TEACHER_ID" VARCHAR2(20 BYTE), 
	"CLS_LOCATION" VARCHAR2(50 BYTE), 
	"CLS_IMAGE2" VARCHAR2(100 BYTE), 
	"CLS_IMAGE3" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "CLS"."CLS_IDX" IS '클래스번호';
   COMMENT ON COLUMN "CLS"."CLS_NAME" IS '상품명';
   COMMENT ON COLUMN "CLS"."CLS_CONTENT" IS '상세정보';
   COMMENT ON COLUMN "CLS"."CLS_IMAGE1" IS '사진1';
   COMMENT ON COLUMN "CLS"."CLS_PRICE" IS '가격';
   COMMENT ON COLUMN "CLS"."CLS_STARTDATE" IS '시작 날짜';
   COMMENT ON COLUMN "CLS"."CLS_ENDDATE" IS '종료 날짜';
   COMMENT ON COLUMN "CLS"."TEACHER_ID" IS '강사 아이디';
   COMMENT ON COLUMN "CLS"."CLS_LOCATION" IS '장소';
   COMMENT ON COLUMN "CLS"."CLS_IMAGE2" IS '사진2';
   COMMENT ON COLUMN "CLS"."CLS_IMAGE3" IS '사진3';
   COMMENT ON TABLE "CLS"  IS '클래스 상세페이지';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PWD" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"PHONE" VARCHAR2(30 BYTE), 
	"ADDR" VARCHAR2(50 BYTE)
   ) ;

   COMMENT ON COLUMN "MEMBER"."ID" IS '아이디';
   COMMENT ON COLUMN "MEMBER"."PWD" IS '비밀번호';
   COMMENT ON COLUMN "MEMBER"."NAME" IS '이름';
   COMMENT ON COLUMN "MEMBER"."PHONE" IS '전화번호';
   COMMENT ON COLUMN "MEMBER"."ADDR" IS '주소';
   COMMENT ON TABLE "MEMBER"  IS '회원';
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"NOTICE_IDX" NUMBER(10,0), 
	"NOTICE_NAME" VARCHAR2(20 BYTE), 
	"NOTICE_TITLE" VARCHAR2(200 BYTE), 
	"NOTICE_CONTENT" CLOB, 
	"NOTICE_DATE" DATE, 
	"NOTICE_HIT" NUMBER(10,0), 
	"NOTICE_IMAGE" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "NOTICE"."NOTICE_IDX" IS '공지사항 글 번호';
   COMMENT ON COLUMN "NOTICE"."NOTICE_NAME" IS '작성자';
   COMMENT ON COLUMN "NOTICE"."NOTICE_TITLE" IS '제목';
   COMMENT ON COLUMN "NOTICE"."NOTICE_CONTENT" IS '내용';
   COMMENT ON COLUMN "NOTICE"."NOTICE_DATE" IS '날짜';
   COMMENT ON COLUMN "NOTICE"."NOTICE_HIT" IS '조회수';
   COMMENT ON COLUMN "NOTICE"."NOTICE_IMAGE" IS '이미지';
   COMMENT ON TABLE "NOTICE"  IS '공지사항';
--------------------------------------------------------
--  DDL for Table PAYMENT
--------------------------------------------------------

  CREATE TABLE "PAYMENT" 
   (	"PAY_IDX" NUMBER(10,0), 
	"PAY_DATE" VARCHAR2(50 BYTE), 
	"PAY_PRICE" NUMBER, 
	"PAY_METHOD" VARCHAR2(100 BYTE), 
	"RESERV_IDX" NUMBER(10,0), 
	"PAY_CARD" VARCHAR2(100 BYTE), 
	"PAY_BANK" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "PAYMENT"."PAY_IDX" IS '결제번호';
   COMMENT ON COLUMN "PAYMENT"."PAY_DATE" IS '결제날짜';
   COMMENT ON COLUMN "PAYMENT"."PAY_PRICE" IS '결제금액';
   COMMENT ON COLUMN "PAYMENT"."PAY_METHOD" IS '결제수단';
   COMMENT ON COLUMN "PAYMENT"."RESERV_IDX" IS '예약번호';
   COMMENT ON COLUMN "PAYMENT"."PAY_CARD" IS '카드번호';
   COMMENT ON COLUMN "PAYMENT"."PAY_BANK" IS '(무통장)계좌번호';
   COMMENT ON TABLE "PAYMENT"  IS '결제';
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "RESERVATION" 
   (	"RESERV_IDX" NUMBER(10,0), 
	"RESERV_DATE" DATE, 
	"RESERV_TIME" VARCHAR2(20 BYTE), 
	"RESERV_PEOPLE" NUMBER(10,0), 
	"RESERV_PRICE" NUMBER(10,0), 
	"CLS_IDX" NUMBER(10,0), 
	"ID" VARCHAR2(20 BYTE), 
	"RESERV_STATUS" VARCHAR2(20 BYTE), 
	"RESERV_INPUTDATE" DATE
   ) ;

   COMMENT ON COLUMN "RESERVATION"."RESERV_IDX" IS '예약번호';
   COMMENT ON COLUMN "RESERVATION"."RESERV_DATE" IS '날짜';
   COMMENT ON COLUMN "RESERVATION"."RESERV_TIME" IS '시간';
   COMMENT ON COLUMN "RESERVATION"."RESERV_PEOPLE" IS '인원';
   COMMENT ON COLUMN "RESERVATION"."RESERV_PRICE" IS '결제 금액';
   COMMENT ON COLUMN "RESERVATION"."CLS_IDX" IS '클래스번호';
   COMMENT ON COLUMN "RESERVATION"."ID" IS '아이디';
   COMMENT ON COLUMN "RESERVATION"."RESERV_STATUS" IS '상태';
   COMMENT ON COLUMN "RESERVATION"."RESERV_INPUTDATE" IS '예약날짜';
   COMMENT ON TABLE "RESERVATION"  IS '수강(예약)정보';
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"REVIEW_IDX" NUMBER(10,0), 
	"REVIEW_TITLE" VARCHAR2(200 BYTE), 
	"REVIEW_CONTENT" CLOB, 
	"REVIEW_DATE" DATE, 
	"REVIEW_HIT" NUMBER(10,0), 
	"REVIEW_IMAGE" VARCHAR2(100 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"REVIEW_CLS" VARCHAR2(30 BYTE), 
	"REVIEW_STAR" VARCHAR2(30 BYTE), 
	"REVIEW_FILEPATH" VARCHAR2(200 BYTE)
   ) ;

   COMMENT ON COLUMN "REVIEW"."REVIEW_IDX" IS '후기 글 번호';
   COMMENT ON COLUMN "REVIEW"."REVIEW_TITLE" IS '제목';
   COMMENT ON COLUMN "REVIEW"."REVIEW_CONTENT" IS '내용';
   COMMENT ON COLUMN "REVIEW"."REVIEW_DATE" IS '날짜';
   COMMENT ON COLUMN "REVIEW"."REVIEW_HIT" IS '조회수';
   COMMENT ON COLUMN "REVIEW"."REVIEW_IMAGE" IS '이미지';
   COMMENT ON COLUMN "REVIEW"."ID" IS '아이디';
   COMMENT ON COLUMN "REVIEW"."REVIEW_CLS" IS '클래스 이름';
   COMMENT ON COLUMN "REVIEW"."REVIEW_STAR" IS '후기 별점';
   COMMENT ON COLUMN "REVIEW"."REVIEW_FILEPATH" IS '파일 경로';
   COMMENT ON TABLE "REVIEW"  IS '후기';
--------------------------------------------------------
--  DDL for Table TEACHER
--------------------------------------------------------

  CREATE TABLE "TEACHER" 
   (	"TEACHER_ID" VARCHAR2(20 BYTE), 
	"TEA_NAME" VARCHAR2(50 BYTE), 
	"TEA_INFO" CLOB, 
	"TEA_CLASS" VARCHAR2(50 BYTE), 
	"TEA_EMAIL" VARCHAR2(50 BYTE), 
	"TEA_IMAGE" VARCHAR2(50 BYTE), 
	"TEA_INFO2" CLOB
   ) ;

   COMMENT ON COLUMN "TEACHER"."TEACHER_ID" IS '강사 아이디';
   COMMENT ON COLUMN "TEACHER"."TEA_NAME" IS '이름';
   COMMENT ON COLUMN "TEACHER"."TEA_INFO" IS '강사 정보';
   COMMENT ON COLUMN "TEACHER"."TEA_CLASS" IS '담당 클래스';
   COMMENT ON COLUMN "TEACHER"."TEA_EMAIL" IS '강사 이메일';
   COMMENT ON COLUMN "TEACHER"."TEA_IMAGE" IS '강사이미지';
   COMMENT ON COLUMN "TEACHER"."TEA_INFO2" IS '강사 정보';
   COMMENT ON TABLE "TEACHER"  IS '강사 정보';
REM INSERTING into CLS
SET DEFINE OFF;
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (600,'미니타르트 클래스','mini2.png',35000,to_date('2021/03/01','YYYY/MM/DD'),to_date('2021/07/31','YYYY/MM/DD'),'bbogang','스위티공방 102호','mini3.png','mini4.png');
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (500,'마카롱 클래스','macarong1.png',32000,to_date('2021/03/03','YYYY/MM/DD'),to_date('2021/05/03','YYYY/MM/DD'),'sunba','스위티공방 203호','macarong2.png','macarong3.png');
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (400,'초콜릿 클래스','choco6.jpg',25000,to_date('2021/03/05','YYYY/MM/DD'),to_date('2021/06/30','YYYY/MM/DD'),'yuna1880','스위티공방 502호','choco2.PNG','choco5.png');
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (300,'스콘 클래스','scon.png',30000,to_date('2021/03/08','YYYY/MM/DD'),to_date('2021/08/04','YYYY/MM/DD'),'ans','스위티공방 305호','scon2.png','scon3.png');
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (200,'케이크 클래스','cake.png',40000,to_date('2021/03/10','YYYY/MM/DD'),to_date('2021/10/28','YYYY/MM/DD'),'2sanghee','스위티공방 401호','cake2.png','cake4.png');
Insert into CLS (CLS_IDX,CLS_NAME,CLS_IMAGE1,CLS_PRICE,CLS_STARTDATE,CLS_ENDDATE,TEACHER_ID,CLS_LOCATION,CLS_IMAGE2,CLS_IMAGE3) values (100,'쿠키 클래스','cookie.png',20000,to_date('2021/03/16','YYYY/MM/DD'),to_date('2021/09/20','YYYY/MM/DD'),'hong','스위티공방 205호','cookie2.png','cookie3.png');
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('cothis','1234','미노','010-8989-9090','서울');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('fresh1015','dbsk1880','프레쉬','000-0000-0000','서울');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('potato12','yuna1880','포테이토','010-5555-8888','서울');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('yuna1880','12345','권유나','010-0000-1111','경기');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('teacher','1234','티처','010-0000-0000','서울');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('bbogang','1234','김보경','010-8388-1234','경기');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('2sanghee','1234','이상희','010-2244-4857','서울');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('sunba','1234','김선바','010-4578-7897','서울');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('ans','1234','안스','010-4877-1998','서울');
Insert into MEMBER (ID,PWD,NAME,PHONE,ADDR) values ('hong','1234','류제홍','010-4578-9898','서울');
REM INSERTING into NOTICE
SET DEFINE OFF;
Insert into NOTICE (NOTICE_IDX,NOTICE_NAME,NOTICE_TITLE,NOTICE_DATE,NOTICE_HIT,NOTICE_IMAGE) values (1,'SWEETIE','결제수단 안내',to_date('2021/02/22','YYYY/MM/DD'),187,null);
Insert into NOTICE (NOTICE_IDX,NOTICE_NAME,NOTICE_TITLE,NOTICE_DATE,NOTICE_HIT,NOTICE_IMAGE) values (2,'SWEETIE','고객센터 문의 안내 (2021.02.22~)',to_date('2021/02/22','YYYY/MM/DD'),257,null);
Insert into NOTICE (NOTICE_IDX,NOTICE_NAME,NOTICE_TITLE,NOTICE_DATE,NOTICE_HIT,NOTICE_IMAGE) values (3,'SWEETIE','중복 결제 오류 안내',to_date('2021/02/22','YYYY/MM/DD'),346,null);
Insert into NOTICE (NOTICE_IDX,NOTICE_NAME,NOTICE_TITLE,NOTICE_DATE,NOTICE_HIT,NOTICE_IMAGE) values (4,'SWEETIE','코로나19 관련 달코코 클래스 환불 및 운영 안내',to_date('2021/02/22','YYYY/MM/DD'),675,null);
Insert into NOTICE (NOTICE_IDX,NOTICE_NAME,NOTICE_TITLE,NOTICE_DATE,NOTICE_HIT,NOTICE_IMAGE) values (5,'SWEETIE','개인정보 처리방침 변경 안내',to_date('2021/02/22','YYYY/MM/DD'),231,null);
REM INSERTING into PAYMENT
SET DEFINE OFF;
Insert into PAYMENT (PAY_IDX,PAY_DATE,PAY_PRICE,PAY_METHOD,RESERV_IDX,PAY_CARD,PAY_BANK) values (15,'21/02/24',50000,'카드',36,'3654 435234 2342/yuna/10/10/232','null');
Insert into PAYMENT (PAY_IDX,PAY_DATE,PAY_PRICE,PAY_METHOD,RESERV_IDX,PAY_CARD,PAY_BANK) values (13,'21/02/23',245000,'현금',34,'null','기업은행/010-3090-3748/이상희');
REM INSERTING into RESERVATION
SET DEFINE OFF;
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (28,to_date('2021/02/24','YYYY/MM/DD'),'14',2,50000,400,null,'결제기한',to_date('2021/02/23','YYYY/MM/DD'));
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (38,to_date('2021/02/10','YYYY/MM/DD'),'09',1,25000,400,'yuna1880','결제기한',to_date('2021/02/24','YYYY/MM/DD'));
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (32,to_date('2021/02/25','YYYY/MM/DD'),'09',2,50000,400,'yuna1880','결제기한',to_date('2021/02/23','YYYY/MM/DD'));
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (36,to_date('2021/02/18','YYYY/MM/DD'),'14',2,50000,400,'yuna1880','결제완료',to_date('2021/02/24','YYYY/MM/DD'));
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (30,to_date('2021/02/25','YYYY/MM/DD'),'09',2,50000,400,null,'결제기한',to_date('2021/02/23','YYYY/MM/DD'));
Insert into RESERVATION (RESERV_IDX,RESERV_DATE,RESERV_TIME,RESERV_PEOPLE,RESERV_PRICE,CLS_IDX,ID,RESERV_STATUS,RESERV_INPUTDATE) values (34,to_date('2021/02/10','YYYY/MM/DD'),'09',7,245000,600,'yuna1880','입금확인중',to_date('2021/02/23','YYYY/MM/DD'));
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (191,'마카롱 만드는거 넘 재밌어요 ㅎㅎ',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','마카롱 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (198,'ㅎㅎㅎ',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','4',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (200,'마카롱 만드는 게 이렇게 힘든지 몰랐어요 정말 ㅠ 근데 재밌고 뿌듯합니다',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','마카롱 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (212,'진짜 최고였어요 ㅠㅠㅠㅠㅠㅠ ??',to_date('2021/02/24','YYYY/MM/DD'),0,'6.jpg','yuna1880','스콘 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\6.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (214,'강력추천합니다?',to_date('2021/02/24','YYYY/MM/DD'),0,'7.jpg','yuna1880','스콘 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\7.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (217,'무엇보다도 맛이 너무나 달콤. 맛있습니다...!',to_date('2021/02/24','YYYY/MM/DD'),0,'10.jpg','yuna1880','쿠키 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\10.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (222,'부모님과 나를 위한 케이크 만들기였죠~!!',to_date('2021/02/24','YYYY/MM/DD'),0,'13.jpg','yuna1880','케이크 클래스','4','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\13.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (231,'8피스 정도 나와서 개별포장해서 주변에 나눠드리려구요.',to_date('2021/02/24','YYYY/MM/DD'),0,'22.jpg','yuna1880','쿠키 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\22.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (186,'친구들과 여럿이 가면 각자 한개씩 만들어서 교환하면 좋아요!',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','4',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (187,'잘 가르쳐주셔서 감사합니다~',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','마카롱 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (180,'타르트 최고',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (182,'여자친구랑 같이 들었습니다.',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','마카롱 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (192,'모양이랑 색도 딱 원하는대로 돼서 만족합니당',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (195,'선생님께서 엄청 친절하게 가르쳐주시고 좋았어요..',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (197,'너무좋아용',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (199,'정말 재밌었어요!???',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','제빵 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (201,'인생 첫 마카롱 클래스였는데 정말 너무 재밌었어요!! ',to_date('2021/02/24','YYYY/MM/DD'),0,'review1 (1).jpg','yuna1880','마카롱 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\review1 (1).jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (202,'마카롱 말고도 다른 클래스도 들어보고 싶어요??',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','마카롱 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (204,'마카롱 처음만들기??♀?엄마랑 함께했습니다!',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (205,'주변에 추천하려구용???',to_date('2021/02/24','YYYY/MM/DD'),0,'4.jpg','yuna1880','스콘 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\review1 (14).jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (206,'마카롱 색깔이 다양해서 좋았습니다?',to_date('2021/02/24','YYYY/MM/DD'),0,'2.jpg','yuna1880','마카롱 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\2.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (213,'스콘을 좋아하는 엄마를 위해....??',to_date('2021/02/24','YYYY/MM/DD'),0,'7.jpg','yuna1880','스콘 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\7.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (215,'초콜렛.. 아주 좋아요 선물했어요',to_date('2021/02/24','YYYY/MM/DD'),0,'8.jpg','yuna1880','미니타르트 클래스','3','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\8.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (223,'재밌고 너무너무 맛있어요 ?!!!!',to_date('2021/02/24','YYYY/MM/DD'),0,'14.jpg','yuna1880','케이크 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\14.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (226,'이게 머선 129...?',to_date('2021/02/24','YYYY/MM/DD'),0,'17.jpg','yuna1880','미니타르트 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\17.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (236,'마카롱 진짜 쫀득달달 최고에요 ??',to_date('2021/02/24','YYYY/MM/DD'),0,'30.jpg','yuna1880','미니타르트 클래스','4','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\30.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (237,'즐거운 경험이였고 마카롱이 잘 나와 만족스러웠습니다.?',to_date('2021/02/24','YYYY/MM/DD'),0,'31.jpg','yuna1880','마카롱 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\31.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (208,'마카롱 존맛 ㅠㅠ',to_date('2021/02/24','YYYY/MM/DD'),0,'1.jpg','yuna1880','마카롱 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\1.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (189,'또 방문할려구요 ^^',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','쿠키 클래스','4',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (193,'별로에요...',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','2',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (216,'초콜렛..생각보다',to_date('2021/02/24','YYYY/MM/DD'),0,'9.jpg','yuna1880','초콜릿 클래스','3','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\9.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (181,'타르트 클래스가 유명해서..',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','4',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (221,'초보자도 하기 쉽게 잘 설명해주시고....',to_date('2021/02/24','YYYY/MM/DD'),0,'12.jpg','yuna1880','케이크 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\12.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (190,'완전 왕왕초보도 즐길 수 있는 클래스에요',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','마카롱 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (196,'타르트 최고!',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (188,'만족도100!!',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','케이크 클래스','5',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (203,'동생이 마카롱 사온거냐고 물어봄 ㅋㅋㅋㅋㅋㅋㅋ 헤헤',to_date('2021/02/24','YYYY/MM/DD'),0,'review1 (3).jpg','yuna1880','마카롱 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\review1 (3).jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (207,'좋아요',to_date('2021/02/24','YYYY/MM/DD'),0,'3.jpg','yuna1880','초콜릿 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\review1 (1).png');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (211,' 재미있게 만들고 경험했던 시간이였습니다. ',to_date('2021/02/24','YYYY/MM/DD'),0,'5.jpg','yuna1880','스콘 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\5.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (224,'선생님 감사합니다.',to_date('2021/02/24','YYYY/MM/DD'),0,'15.jpg','yuna1880','케이크 클래스','3','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\15.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (229,'다른 클래스도 진행하시면 또 참여하고 싶어요?',to_date('2021/02/24','YYYY/MM/DD'),0,'21.jpg','yuna1880','쿠키 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\21.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (232,'마카롱 말고도 다른 클래스도 들어보고 싶어요??',to_date('2021/02/24','YYYY/MM/DD'),0,'24.jpg','yuna1880','마카롱 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\24.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (233,'초보자도 쉽게 할 수 있도록 설명도 완벽하게 해주셔요. ',to_date('2021/02/24','YYYY/MM/DD'),0,'23.jpg','yuna1880','마카롱 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\23.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (235,'제가 생각한것보다 훨씬 이쁘고 맛있고 선생님도 친절하세요',to_date('2021/02/24','YYYY/MM/DD'),0,'27.jpg','yuna1880','스콘 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\27.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (225,'클래스는 역시...스위티에 미만 잡.....',to_date('2021/02/24','YYYY/MM/DD'),0,'16.jpg','yuna1880','케이크 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\16.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (227,'다시 봐도  만드는 노고와 즐거움이 느껴지고~ 넘 이뻐요^^',to_date('2021/02/24','YYYY/MM/DD'),0,'18.jpg','yuna1880','케이크 클래스','4','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\18.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (228,'아주 잘 신청한거 같아 10000%만족합니다 ?',to_date('2021/02/24','YYYY/MM/DD'),0,'19.jpg','yuna1880','미니타르트 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\19.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (183,'데이트 코스로 좋습니다~~!!! 강력추천!!',to_date('2021/02/24','YYYY/MM/DD'),0,null,'yuna1880','미니타르트 클래스','4',null);
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (230,'이 맛에(?) 수업하는 것 같습니다ㅠㅠ 다시 한 번 너무나 감사합니다.',to_date('2021/02/24','YYYY/MM/DD'),0,'20.jpg','yuna1880','미니타르트 클래스','4','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\20.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (220,'너무너무재밋고 쉽게따라하기좋아요 다음엔 스콘 도전합니당??????',to_date('2021/02/24','YYYY/MM/DD'),0,'11.jpg','yuna1880','마카롱 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\11.jpg');
Insert into REVIEW (REVIEW_IDX,REVIEW_TITLE,REVIEW_DATE,REVIEW_HIT,REVIEW_IMAGE,ID,REVIEW_CLS,REVIEW_STAR,REVIEW_FILEPATH) values (234,'강력추천합니다??',to_date('2021/02/24','YYYY/MM/DD'),0,'26.jpg','yuna1880','마카롱 클래스','5','D:\MYSTUDY\60_web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Baking\upload\26.jpg');
REM INSERTING into TEACHER
SET DEFINE OFF;
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('yuna1880','권유나 쇼콜라티에','초콜릿 클래스','yuna@naver.com','tobi3.png');
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('sunba','김선바 제빵사','마카롱 클래스','sunba@naver.com','tobi1.png');
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('ans','안스 쇼콜라티에','스콘 클래스','ans@naver.com','tobi2.png');
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('2sanghee','이상희 제빵사','케이크 클래스','sang@naver.com','tobi.png');
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('hong','류제홍 제빵사','쿠키 클래스','hong@naver.com','tobi5.png');
Insert into TEACHER (TEACHER_ID,TEA_NAME,TEA_CLASS,TEA_EMAIL,TEA_IMAGE) values ('bbogang','김보경 파티쉐','미니타르트 클래스','bbo@naver.com','tobi6.png');
--------------------------------------------------------
--  DDL for Index CLS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLS_PK" ON "CLS" ("CLS_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEMBER_PK" ON "MEMBER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOTICE_PK" ON "NOTICE" ("NOTICE_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index PAYMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAYMENT_PK" ON "PAYMENT" ("PAY_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESERVATION_PK" ON "RESERVATION" ("RESERV_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REVIEW_PK" ON "REVIEW" ("REVIEW_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index TEACHER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEACHER_PK" ON "TEACHER" ("TEACHER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CLS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLS_PK" ON "CLS" ("CLS_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEMBER_PK" ON "MEMBER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOTICE_PK" ON "NOTICE" ("NOTICE_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index PAYMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAYMENT_PK" ON "PAYMENT" ("PAY_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESERVATION_PK" ON "RESERVATION" ("RESERV_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REVIEW_PK" ON "REVIEW" ("REVIEW_IDX") 
  ;
--------------------------------------------------------
--  DDL for Index TEACHER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEACHER_PK" ON "TEACHER" ("TEACHER_ID") 
  ;
--------------------------------------------------------
--  DDL for Trigger CLS_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CLS_AI_TRG" 
BEFORE INSERT ON CLS 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT CLS_SEQ.NEXTVAL
    INTO :NEW.cls_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "CLS_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOTICE_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOTICE_AI_TRG" 
BEFORE INSERT ON NOTICE 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT NOTICE_SEQ.NEXTVAL
    INTO :NEW.notice_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "NOTICE_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PAYMENT_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PAYMENT_AI_TRG" 
BEFORE INSERT ON PAYMENT 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT PAYMENT_SEQ.NEXTVAL
    INTO :NEW.pay_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "PAYMENT_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATION_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "RESERVATION_AI_TRG" 
BEFORE INSERT ON RESERVATION 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT RESERVATION_SEQ.NEXTVAL
    INTO :NEW.reserv_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "RESERVATION_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REVIEW_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "REVIEW_TRG" 
BEFORE INSERT ON REVIEW 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "REVIEW_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CLS_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CLS_AI_TRG" 
BEFORE INSERT ON CLS 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT CLS_SEQ.NEXTVAL
    INTO :NEW.cls_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "CLS_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOTICE_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOTICE_AI_TRG" 
BEFORE INSERT ON NOTICE 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT NOTICE_SEQ.NEXTVAL
    INTO :NEW.notice_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "NOTICE_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PAYMENT_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PAYMENT_AI_TRG" 
BEFORE INSERT ON PAYMENT 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT PAYMENT_SEQ.NEXTVAL
    INTO :NEW.pay_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "PAYMENT_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATION_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "RESERVATION_AI_TRG" 
BEFORE INSERT ON RESERVATION 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT RESERVATION_SEQ.NEXTVAL
    INTO :NEW.reserv_idx
    FROM DUAL;
END;

/
ALTER TRIGGER "RESERVATION_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REVIEW_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "REVIEW_TRG" 
BEFORE INSERT ON REVIEW 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "REVIEW_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table CLS
--------------------------------------------------------

  ALTER TABLE "CLS" ADD CONSTRAINT "CLS_PK" PRIMARY KEY ("CLS_IDX") ENABLE;
  ALTER TABLE "CLS" MODIFY ("CLS_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("PWD" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" ADD CONSTRAINT "NOTICE_PK" PRIMARY KEY ("NOTICE_IDX") ENABLE;
  ALTER TABLE "NOTICE" MODIFY ("NOTICE_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PAYMENT" ADD CONSTRAINT "PAYMENT_PK" PRIMARY KEY ("PAY_IDX") ENABLE;
  ALTER TABLE "PAYMENT" MODIFY ("PAY_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_PK" PRIMARY KEY ("RESERV_IDX") ENABLE;
  ALTER TABLE "RESERVATION" MODIFY ("RESERV_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" MODIFY ("REVIEW_STAR" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("REVIEW_CLS" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("REVIEW_IDX") ENABLE;
  ALTER TABLE "REVIEW" MODIFY ("REVIEW_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TEACHER
--------------------------------------------------------

  ALTER TABLE "TEACHER" ADD CONSTRAINT "TEACHER_PK" PRIMARY KEY ("TEACHER_ID") ENABLE;
  ALTER TABLE "TEACHER" MODIFY ("TEACHER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CLS
--------------------------------------------------------

  ALTER TABLE "CLS" ADD CONSTRAINT "FK_CLS_TEACHER_ID_MEMBER_ID" FOREIGN KEY ("TEACHER_ID")
	  REFERENCES "MEMBER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_PAYMENT_RESERV_IDX_RESERVAT" FOREIGN KEY ("RESERV_IDX")
	  REFERENCES "RESERVATION" ("RESERV_IDX") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "RESERVATION" ADD CONSTRAINT "FK_RESERVATION_CLS_IDX_CLS_CLS" FOREIGN KEY ("CLS_IDX")
	  REFERENCES "CLS" ("CLS_IDX") ON DELETE CASCADE ENABLE;
  ALTER TABLE "RESERVATION" ADD CONSTRAINT "FK_RESERVATION_ID_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "MEMBER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_REVIEW_ID_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "MEMBER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TEACHER
--------------------------------------------------------

  ALTER TABLE "TEACHER" ADD CONSTRAINT "FK_TEACHER_TEACHER_ID_MEMBER_I" FOREIGN KEY ("TEACHER_ID")
	  REFERENCES "MEMBER" ("ID") ON DELETE CASCADE ENABLE;
