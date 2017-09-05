-- 중복되는 이름의 테이블 삭제 
drop table reservation;
drop table member;
drop sequence reservation_seq;


﻿-- 회원정보 테이블 생성 쿼리
CREATE TABLE MEMBER (
	custid varchar2(20) primary key, 
	password varchar2(20) not null, 
	custname varchar2(30) not null, 
	name varchar2(30) not null, 
	custtel varchar2(30) not null, 
	tel varchar2(30) not null, 
	postcode varchar2(30) not null, 
	road varchar2(100) not null, 	--이름 변동
	jibun varchar2(100) not null, 	--이름 변동
	idno varchar2(30) unique, 
	division varchar2(20) not null, 
	qrcafe varchar2(100) unique		
);

-- 예약 테이블 생성 쿼리 (카페에서 예약시 빈항목이 들어갈 수 있으므로 속성 수정 필요)
CREATE TABLE RESERVATION (
	resernum number primary key, 	--이름 변동, 속성 변동
	cafeid varchar2(20) not null CONSTRAINT member_id_fk1 references member(custid),
	businessid varchar2(20)  CONSTRAINT member_id_fk2 references member(custid),  --업체 id
	name varchar2(30) not null, 			 	--카페이름
	custtel varchar2(30) not null, 	--카페 전화번호
	tel varchar2(30) not null, 		--카페 점주 전화번호
	reserdate date not null,			--예약 날짜
	msg varchar2(2) not null 		--쪽지 관련 컬럼 추가 
);

--예약 테이블 시퀀스
CREATE SEQUENCE reservation_seq;


-- 마일리지 테이블 생성 쿼리
CREATE TABLE MILEAGE (
	custid varchar2(20) not null CONSTRAINT member_id_fk3 references member(custid),
	division varchar2(20) not null,  
	totalamount number not null,  
	realdate date default sysdate	--not null 조건삭제
);

--결과 테이블 생성 쿼리
CREATE TABLE RESULT(
	resernum number not null CONSTRAINT reservation_num_fk references reservation(resernum),  --이름 변동
	custid varchar2(20) not null, 
	name varchar2(30) not null, 
	amount number not null, 
	realdate date default sysdate, 		--속성 not null 삭제
	success varchar2(30) not null,		--이름 변경 check로 안만들어짐 
	sign varchar2(30) not null
);

commit;