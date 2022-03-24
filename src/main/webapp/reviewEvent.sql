create sequence rv_seq;

drop table review;

create table review( -- 리뷰게시판
 rvNum NUMBER primary Key, --리뷰게시판번호
 rvTitle VARCHAR2(50), --리뷰게시판 제목
 rvContent VARCHAR2(1000), --리뷰게시판 내용
 id VARCHAR2(20), --사용자 id
 rvGrade NUMBER, -- 평점
 rvLike NUMBER, -- 좋아요
 rvDate DATE, -- 게시글 작성날짜
 rvDel VARCHAR2(2) default 'n', -- 게시글 삭제
 mvTitle VARCHAR2(500), -- 영화제목
 rvReadCount NUMBER -- 리뷰 조회수
);
select * from review;
<<<<<<< HEAD
=======

-- 테스트용 입니당 
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test1', '5', 0, sysdate, 'n', '씽2게더', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test2', '2', 0, sysdate, 'n', '더 배트맨', 0);
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test3', '4', 0, sysdate, 'n', '극장판 주술회전 0', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test4', '1', 0, sysdate, 'n', '이상한 나라의 수학자', 0);
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test5', '5', 0, sysdate, 'n', '씽2게더', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test6', '3', 0, sysdate, 'n', '더 배트맨', 0);
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test', '3', 0, sysdate, 'n', '이상한 나라의 수학자', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test7', '2', 0, sysdate, 'n', '이상한 나라의 수학자', 0);
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test8', '5', 0, sysdate, 'n', '씽2게더', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼','test9', '3', 0, sysdate, 'n', '극장판 주술회전 0', 0);
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test10', '5', 0, sysdate, 'n', '문폴', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test12', '1', 0, sysdate, 'n', '문폴', 0);
insert into REVIEW values(rv_seq.nextval, '잼', '잼', 'test13', '1', 0, sysdate, 'n', '씽2게더', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test14', '1', 0, sysdate, 'n', '문폴', 0);
insert into REVIEW values(rv_seq.nextval, '잼', '잼', 'test15', '1', 0, sysdate, 'n', '더 배트맨', 0);
insert into REVIEW values(rv_seq.nextval, '씨잼', '씨잼', 'test16', '1', 0, sysdate, 'n', '극장판 주술회전 0', 0);
-- 테스트용 입니당

-----------------------------------------------------------------------------------------------------------------------------
create sequence ev_seq;

drop table event;

create table event(	-- 이벤트게시판
evNum number(10) primary key,	-- 이벤트 게시판 번호
evTitle varchar(20),	-- 이벤트 게시판 제목
evContent varchar2(1000),	-- 이벤트 게시판 내용
id varchar2(20),	-- 사용자 id
evPhoto varchar2(100),	-- 이벤트 게시판 사진
evDate date,	--이벤트 게시글 작성날짜
evReadCount NUMBER -- 조회수
);
>>>>>>> branch 'master' of https://github.com/Boxoooo/boxOffice.git

<<<<<<< HEAD
-- 테스트용 입니당 
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test1', '5', 0, sysdate, 'n', '씽2게더', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test2', '2', 0, sysdate, 'n', '더 배트맨', 0);
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test3', '4', 0, sysdate, 'n', '극장판 주술회전 0', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test4', '1', 0, sysdate, 'n', '이상한 나라의 수학자', 0);
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test5', '5', 0, sysdate, 'n', '씽2게더', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test6', '3', 0, sysdate, 'n', '더 배트맨', 0);
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test', '3', 0, sysdate, 'n', '이상한 나라의 수학자', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test7', '2', 0, sysdate, 'n', '이상한 나라의 수학자', 0);
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test8', '5', 0, sysdate, 'n', '씽2게더', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼','test9', '3', 0, sysdate, 'n', '극장판 주술회전 0', 0);
insert into REVIEW values(rv_seq.nextval, '재밌음', '재밌음', 'test10', '5', 0, sysdate, 'n', '문폴', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test12', '1', 0, sysdate, 'n', '문폴', 0);
insert into REVIEW values(rv_seq.nextval, '잼', '잼', 'test13', '1', 0, sysdate, 'n', '씽2게더', 0);
insert into REVIEW values(rv_seq.nextval, '노잼', '노잼', 'test14', '1', 0, sysdate, 'n', '문폴', 0);
insert into REVIEW values(rv_seq.nextval, '잼', '잼', 'test15', '1', 0, sysdate, 'n', '더 배트맨', 0);
insert into REVIEW values(rv_seq.nextval, '씨잼', '씨잼', 'test16', '1', 0, sysdate, 'n', '극장판 주술회전 0', 0);
-- 테스트용 입니당
=======
select * from event;

-- 테스트용 입니당
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
-- 테스트용 입니당
---------------------------------------------------------------------------------------------------------------
>>>>>>> branch 'master' of https://github.com/Boxoooo/boxOffice.git
