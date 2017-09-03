-- 회원정보 테이블 생성 쿼리
create table members(
  id varchar2(20) primary key,
  password varchar2(20) not null,
  name varchar2(30) not null
);

-- 메모 테이블 생성 쿼리
create table memos(
  num number primary key,
  fromid varchar2(20) references members(id),
  toid varchar2(20) references members(id),
  title varchar2(50) not null,
  content varchar2(4000) not null,
  inputdate date default sysdate
);

-- 시퀀스 생성 쿼리
create sequence seq_memo;

-- 회원정보 인서트 쿼리(제공)
insert into members
values ('hgd01','aaa','홍길동');

insert into members
values ('kcs04','bbb','김철수');

insert into members
values ('syh05','ccc','송영희');

commit;