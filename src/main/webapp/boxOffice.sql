create sequence rv_seq;

create table review( -- 리뷰게시판
 rvNum NUMBER primary Key, --리뷰게시판번호
 rvTitle VARCHAR2(50), --리뷰게시판 제목
 rvContent VARCHAR2(1000), --리뷰게시판 내용
 id VARCHAR2(20), --사용자 id
 rvGrade NUMBER, -- 평점
 rsCode NUMBER, -- 예약번호
 rvLike NUMBER, -- 좋아요
 rvDate DATE, -- 게시글 작성날짜
 rvDel VARCHAR2(2) default 'n', -- 게시글 삭제
 movieTitle VARCHAR2(500), -- 영화제목
 rvReadCount NUMBER -- 리뷰 조회수
);
select * from review;
-----------------------------------------------------------------------------------------------------------------------------
create table event(	-- 이벤트게시판
evNum number(10) primary key,	-- 이벤트 게시판 번호
evTitle varchar(20),	-- 이벤트 게시판 제목
evContent varchar2(1000),	-- 이벤트 게시판 내용
id varchar2(20),	-- 사용자 id
evPhoto varchar2(100),	-- 이벤트 게시판 사진
evDate date,	--이벤트 게시글 작성날짜
evReadCount NUMBER -- 조회수
);

select * from event;

insert into event values(1, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(2, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(3, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(4, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(5, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(6, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(7, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(8, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(9, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(10, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(11, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(12, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(13, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(14, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
---------------------------------------------------------------------------------------------------------------
create table member(
	id varchar2(20) primary key, --아이디
	password varchar2(20), -- 패스워드
	name varchar2(20), --이름
	textcount number(10), -- 작성글 수
	ticketcount number(10), -- 예매 횟수 
	tel varchar2(100), -- 전화번호
	address varchar2(500), --주소
	reg_date date, --등록일
	memberDel varchar(2) default 'n' -- 삭제여부
);

select * from member;


insert into member values('test1','11','master',0,0,'010-0000-0000','없음',sysdate,'n');
