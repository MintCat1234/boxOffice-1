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