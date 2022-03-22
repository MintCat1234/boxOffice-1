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
 mvTitle VARCHAR2(500), -- 영화제목
 rvReadCount NUMBER -- 리뷰 조회수
);
select * from review;
-----------------------------------------------------------------------------------------------------------------------------
create sequence ev_seq;
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

insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
insert into event values(ev_seq.nextval, 'event test1', null, 'master', 'test.jpg',sysdate, 0);
---------------------------------------------------------------------------------------------------------------
