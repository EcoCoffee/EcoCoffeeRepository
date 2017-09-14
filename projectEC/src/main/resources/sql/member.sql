-- 중복되는 이름의 테이블 삭제 (참조키포함해서 지우기)
drop table admin CASCADE CONSTRAINTS;
drop table member CASCADE CONSTRAINTS;
drop table reservation CASCADE CONSTRAINTS;
drop table result CASCADE CONSTRAINTS;
drop sequence reservation_seq;

-- 관리자 테이블
CREATE TABLE ADMIN (
   id         varchar2(20) primary key,
   password   varchar2(20) not null
);

-- 관리자 저장
insert into admin(id, password) values('admin', 'admin');

-- 회원 정보 테이블
CREATE TABLE MEMBER (
   custid        varchar2(50) primary key,      -- 아이디
   password      varchar2(20) not null,         -- 비밀번호
   custname      varchar2(100) not null,         -- 소유자 이름
   name          varchar2(100) not null,         -- 가게 이름
   custtel       varchar2(30) not null,         -- 가입자 전화번호
   tel           varchar2(30) not null,         -- 업체 전화번호
   postcode      varchar2(30) not null,         -- 우편번호
   road          varchar2(100) not null,        -- 도로명 주소
   jibun         varchar2(100) not null,        -- 지번 주소
   idno          varchar2(100) unique,            -- 사업자 번호
   division      varchar2(20) not null,         -- 구분 : cafe(카페), business(수거업체)
   lat          varchar2(40) not null,         -- 주소의 위도
   lng          varchar2(40) not null         -- 주소의 경도
);

-- 예약 테이블
CREATE TABLE RESERVATION (
   resernum    number          primary key,                                            -- 예약 번호
   cafeid       varchar2(50)    not null       CONSTRAINT member_id_fk1 references member(custid),    -- 카페 아이디
   cafename      varchar2(30)    not null,                                                   -- 카페 이름
   cafetel       varchar2(30)    not null,                                               -- 카페 전화번호
   businessid   varchar2(50)                CONSTRAINT member_id_fk2 references member(custid),  -- 수거업체아이디
   businessname varchar2(30)   not null,                                              --   수거업체이름
   businesstel    varchar2(30)    not null,                                               -- 수거업체 전화번호
   reserDate    varchar2(30)    not null,                                                 -- 예약 날짜
   reserTime    varchar2(30)    not null,                                                 -- 예약 시간
   msg          varchar2(2)    default 'd'                                                   -- 쪽지
);

-- 예약 테이블 시퀀스
CREATE SEQUENCE reservation_seq;

-- 마일리지 테이블
CREATE TABLE MILEAGE (
   custid 		varchar2(20) 	not null CONSTRAINT member_id_fk3 references member(custid),	-- 아이디
   division		varchar2(20) 	not null,  														-- 구분 : cafe(카페), business(수거업체)
   totalamount 	number 			not null,  														-- 총량
   realdate 	date 			default sysdate													-- 실제 날짜
);

-- 결과 테이블
CREATE TABLE RESULT(
   resernum 	number 			not null CONSTRAINT reservation_num_fk references reservation(resernum),  -- 예약 번호
   custid 		varchar2(20) 	not null, 																  -- 아이디
   name 		varchar2(30) 	not null, 																  -- 가게 이름
   amount 		number 			not null, 																  -- 양
   realdate		date 			default sysdate, 														  -- 실제 날짜
   success 		varchar2(30) 	default '0',      															  -- 성공여부 
   sign 		varchar2(30) 	not null																  -- 사인 전송
);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('cafeMamas', 'aaa', '카페마마스 코엑스점', '카페마마스 코엑스점', '02-6002-3240', '02-6002-3240', 6164.0, '서울 강남구 영동대로 513 (삼성동) 코엑스몰 p105호', '서울 강남구 삼성동 159 코엑스몰 p105호', '02-6002-3240', 'cafe', 37.5118232810781, 127.059159721989);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('sopresso', 'aaa', '소프레소 코엑스몰점', '소프레소 코엑스몰점', '02-551-8030', '02-551-8030', 6164.0, '서울 강남구 봉은사로 524 (삼성동) 코엑스몰 B1 Q105', '서울 강남구 삼성동 159 코엑스몰 B1 Q105', '02-551-8030', 'cafe', 37.5125226294782, 127.058820948489);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('ronepelt', 'aaa', ' 로네펠트티하우스 코엑스점', ' 로네펠트티하우스 코엑스점', '02-551-1823', '02-551-1823', 6164.0, '서울 강남구 봉은사로 524 (삼성동) 코엑스전시홀 1층 E001', '서울 강남구 삼성동 159 코엑스전시홀 1층 E001', '02-551-1823', 'cafe', 37.5125226294782, 127.058820948489);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('eskimo_co', 'aaa', '에스키모 코엑스몰점', '에스키모 코엑스몰점', '02-562-9244', '02-562-9244', 6164.0, '서울 강남구 봉은사로 524 (삼성동) 코엑스몰 B1 I105', '서울 강남구 삼성동 159 코엑스몰 B1 I105', '02-562-9244', 'cafe', 37.5125226294782, 127.058820948489);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('tosome_pos', 'aaa', '투썸플레이스 포스코사거리점', '투썸플레이스 포스코사거리점', '02-568-2377', '02-568-2377', 6178.0, '서울 강남구 테헤란로 508 (대치동) 해성2빌딩 1층', '서울 강남구 대치동 942-10 해성2빌딩 1층', '02-568-2377', 'cafe', 37.5067097353902, 127.058038261172);


INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('citybakery', 'aaa', '씨티베이커리', '씨티베이커리', '02-563-9966', '02-563-9966', 6165.0, '서울 강남구 봉은사로86길 28 (삼성동)', '서울 강남구 삼성동 148-9', '02-563-9966', 'cafe', 37.5116730041283, 127.056938177658);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('cafeRumi', 'aaa', '카페루미', '카페루미', '02-556-9317', '02-556-9317', 6128.0, '서울 강남구 강남대로102길 30 (역삼동)', '서울 강남구 역삼동 618-16', '02-556-9317', 'cafe', 37.5028247730304, 127.027807523384);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('newkoficoffee', 'aaa', '뉴코피커피', '뉴코피커피', '02-552-8522', '02-552-8522', 6123.0, '서울 강남구 강남대로102길 13-5 (역삼동)', '서울 강남구 역삼동 813-15', '02-552-8522', 'cafe', 37.5022988332513, 127.026735205882);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('corsocomo', 'aaa', '10 꼬르소 꼬모 카페', '10 꼬르소 꼬모 카페', '02-547-3010', '02-547-3010', 6015.0, '서울 강남구 압구정로 416 (청담동)', '서울 강남구 청담동 79', '02-547-3010 ', 'cafe', 37.5269276919481, 127.042405745389);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('sulbingEun', 'aaa', '설빙 서울연신내점', '설빙 서울연신내점', '070-4259-8277', '070-4259-8277', 3330.0, '서울 은평구 통일로 855-8 (갈현동)', '서울 은평구 갈현동 396-12', '070-4259-8277', 'cafe', 37.6190693218367, 126.920239996314);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('havana', 'aaa', '하바나', '하바나', '070-8928-8105', '070-8928-8105', 3331.0, '서울 은평구 연서로27길 16-9 (갈현동)', '서울 은평구 갈현동 453-9', '070-8928-8105', 'cafe', 37.6185127388332, 126.917943498551);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('cafemate', 'aaa', '카페메이트', '카페메이트', '02-356-7972', '02-356-7972', 3404.0, '서울 은평구 진흥로 85 (역촌동)', '서울 은평구 역촌동 27-10', '02-356-7972', 'cafe', 37.6045066267124, 126.921564689908);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('B_ROAD', 'aaa', 'B ROAD ', 'B ROAD ', '070-7379-5976', '070-7379-5976', 3449.0, '서울 은평구 증산로23길 12 (신사동)', '서울 은평구 신사동 22-25', '070-7379-5976', 'cafe', 37.597697105954, 126.914039293952);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('gosenInco', 'aaa', '고센인코퍼레이티드 청담점', '고센인코퍼레이티드 청담점', '02-515-1863', '02-515-1863', 6014.0, '서울 강남구 선릉로158길 18 (청담동)', '서울 강남구 청담동 88-23', '02-515-1863', 'cafe', 37.5252089256423, 127.041431874652);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('heavenRi29', 'aaa', '헤븐리29', '헤븐리29', '02-565-0029', '02-565-0029', 6194.0, '서울 강남구 삼성로85길 26 (대치동) 지하 1층', '서울 강남구 대치동 891-46 지하 1층', '02-565-0029', 'cafe', 37.5050677635093, 127.054983364275);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('able', 'aaa', '에이블', '에이블', '02-3445-7335', '02-3445-7335', 6029.0, '서울 강남구 압구정로14길 12 (신사동)', '서울 강남구 신사동 547-6', '02-3445-7335', 'cafe', 37.5235128519267, 127.023045845779);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('hanyeong', 'aaa', '한경자원', '한경자원', '010-1111-2223', '010-1111-2223', 4793.0, '서울특별시 성동구 아차산로5길 26 골든모터스', '서울특별시 성동구 성수동2가 289-290', '010-1111-2223', 'business', 37.5490159978485, 127.044088550831);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('seongdong', 'aaa', '성동재활용센터', '성동재활용센터', '010-11111-2222', '010-11111-2222', 4766.0, '서울특별시 성동구 왕십리로 131 태용철강(주)', '서울특별시 성동구 성수동1가 656-854', '010-11111-2222', 'business', 37.5490159978485, 127.044088550831);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('jawon21', 'aaa', '자원21', '자원21', '070-8113-0741', '070-8113-0741', 6075.0, '서울특별시 강남구 영동대로142길 7 뉴현대리버빌', '서울특별시 강남구 영동대로142길 7 뉴현대리버빌', '070-8113-0741', 'business', 37.5241542369028, 127.055816401249);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('deahan', 'aaa', '대한자원', '대한자원', '02-483-9745', '02-483-9745', 4780.0, '서울특별시 성동구 뚝섬로 345 홈플러스 익스프레스', '서울특별시 성동구 뚝섬로 345 홈플러스 익스프레스', '02-483-9745', 'business', 37.540685129879, 127.049229753903);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('yoori', 'aaa', '우리자원', '우리자원', '02-465-7909', '02-465-7909', 4784.0, '서울특별시 성동구 뚝섬로13길 19 장안타운', '서울특별시 성동구 뚝섬로13길 19 장안타운', '02-465-7909', 'business', 37.5395676782072, 127.057660908091);

INSERT INTO member (CUSTID, PASSWORD, CUSTNAME, NAME, CUSTTEL, TEL, POSTCODE, ROAD, JIBUN, IDNO, DIVISION, LAT, LNG) 
VALUES ('goldjawon', 'aaa', '황금자원', '황금자원', '010-1111-2224', '010-1111-2224', 4774.0, '서울특별시 성동구 성덕정9길 15', '서울특별시 성동구 성수동1가 34-7', '010-1111-2224', 'business', 37.5395964296765, 127.049926038334);




-- 저장
commit;