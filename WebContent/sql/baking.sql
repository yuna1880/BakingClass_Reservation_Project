INSERT INTO MEMBER
VALUES ('yuna1880', '1234', '권유나', '010-5487-9848', '서울');

INSERT INTO MEMBER
VALUES ('bbogang', '1234', '김보경', '010-8388-1234', '경기');

INSERT INTO MEMBER
VALUES ('2sanghee', '1234', '이상희', '010-2244-4857', '서울');

INSERT INTO MEMBER
VALUES ('sunba', '1234', '김선바', '010-4578-7897', '서울');

INSERT INTO MEMBER
VALUES ('ans', '1234', '안스', '010-4877-1998', '서울');

INSERT INTO MEMBER
VALUES ('hong', '1234', '류제홍', '010-4578-9898', '서울');


INSERT INTO CLS
VALUES ('001', '미니타르트 클래스', '건강은 스스로 만든다! [디저트 베이킹 입문]', 'mini2.png',
        35000, '2021/03/01', '2021/07/31', 'bbogang', '달코코공방 102호', 'mini3.png', 'mini4.png');
        
INSERT INTO CLS
VALUES ('002', '마카롱 클래스', '매일을 달콤하게~ 간식용, 선물용 [취미반]', 'macarong1.png',
        32000, '2021/03/03', '2021/05/03', 'sunba', '달코코공방 203호', 'macarong2.png', 'macarong3.png');
        
INSERT INTO CLS
VALUES ('003', '초콜릿 클래스', '누구나 쉽고 재밌게 배우는 초콜릿 스타일링![취미반]', 'choco6.jpg',
        25000, '2021/03/05', '2021/06/30', 'yuna1880', '달코코공방 502호', 'choco2.PNG', 'choco5.png');
        
INSERT INTO CLS
VALUES ('004', '스콘 클래스', '고급 감성을 담고 자격증까지![디저트 베이킹 중급]', 'scon.png',
        30000, '2021/03/08', '2021/08/04', 'ans', '달코코공방 305호', 'scon2.png', 'scon3.png');
        
INSERT INTO CLS
VALUES ('005', '케이크 클래스', '특별한 날을 더 특별하게! 창업까지 [디저트 베이킹 마스터]', 'cake.png',
        40000, '2021/03/10', '2021/10/28', '2sanghee', '달코코공방 401호', 'cake2.png', 'cake4.png');
        
INSERT INTO CLS
VALUES ('006', '쿠키 클래스', '쿠키 위에 그려내는 동화, 아이싱부터 차근히![취미반]', 'cookie.png',
        20000, '2021/03/16', '2021/09/20', 'hong', '달코코공방 205호', 'cookie2.png', 'cookie3.png');


-- cls 컬럼명 수정 및 추가했습니다 (CLS_INAGE -> CLS_INAGE1 로 수정), CLS_IMAGE2, CLSIMAGE3 추가
-- CLS_IDX, CLS_NAME, CLS_CONTENT, CLS_IMAGE1, CLS_PRICE, CLS_STARTDATE, CLS_ENDDATE, TEACHER_ID, CLS_LOCATION, CLS_IMAGE2, CLS_IMAGE3


INSERT INTO TEACHER 
VALUES('bbogang', '김보경', ',', '미니타르트 클래스');

INSERT INTO TEACHER 
VALUES('sunba', '김선바', ',', '마카롱 클래스');

INSERT INTO TEACHER 
VALUES('yuna1880', '권유나', ',', '초콜릿 클래스');

INSERT INTO TEACHER 
VALUES('ans', '안스', ',', '스콘 클래스');

INSERT INTO TEACHER 
VALUES('2sanghee', '이상희', ',', '케이크 클래스');

INSERT INTO TEACHER 
VALUES('hong', '류제홍', ',', '쿠키 클래스');


commit;

