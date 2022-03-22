-- 영화
CREATE TABLE movie (
movie_Code NUMBER PRIMARY KEY NOT NULL, -- 영화번호
title varchar2(300), -- 영화제목
movie_Tag NUMBER, -- 1이면 상영종료, 2- 상영중 3- 상영예정
open_Date DATE, -- 개봉일
director VARCHAR2(30), -- 감독
major_Actor VARCHAR2(50), -- 주역 배우
runniung_Time NUMBER(20), -- 진행시간
genre VARCHAR2(10), -- 장르
grade NUMBER(10) -- 평점
age VARCHAR2(30) -- 관람 연령
);

-- 영화 DB
INSERT INTO movie
VALUES( '1', '스파이더맨 노 웨이 홈' , '2' , '2021.12.15' , '존 왓츠' , '톰 홀렌드', '2:28', '액션', '9.1', '12세 이상 관람가');
INSERT INTO movie
VALUES( '2', '닥터 스트레인지 : 대혼돈의 멀티버스' , '3' , '2022.5.4' , '샘 레이미' , '베네딕트 컴버배치' , '0:00' , '액션' , '0.0', '15세 이상 관람가');
INSERT INTO movie
VALUES( '3', '반지의 제왕 : 감독판' , '1' , '2001.5.4' , '피터 잭슨' , '숀 애스틴' , '0:00' , '판타지' , '9.36', '12세 이상 관람가');
INSERT INTO movie
VALUES( '4', '극장판 주술회전 0' , '2' , '2021.12.24' , '박성후' , '오가타 메구미' , '1:45' , '에니메이션' , '8.1', '15세 이상 관람가');
INSERT INTO movie
VALUES( '5', '이터널스' , '1' , '2021.11.3' , '클로이 자오' , '마동석' , '2:36' , '액션' , '6.5', '12세 이상 관람가');
INSERT INTO movie
VALUES( '6', '더 배트맨' , '2' , '2022.3.1' , '맷 리브스' , '로버트 패틴슨' , '2:56' , '스릴러' , '6.8', '15세 이상 관람가');
INSERT INTO movie
VALUES( '7', '조커 : 감독판' , '1' , '2019.10.2' , '토드 필립스' , '호아킨 피닉스' , '2:03' , '범죄' , '9', '15세 이상 관람가');
INSERT INTO movie
VALUES( '8', '덩케르트 : 감독판' , '1' , '2017.7.20' , '크리스토퍼 놀란' , '톰 하디' , '1:46' , '전쟁' , '8', '12세 이상 관람가');
INSERT INTO movie
VALUES( '9', '씽2게더' , '2' , '2022.1.5' , '가스 제닝스' , '매튜 맥커너히' , '1:50' , '음악' , '7.5', '전체이용가');
INSERT INTO movie
VALUES( '10', '슈퍼 소닉 2' , '3' , '2022.4.6' , '제프 파울러' , '짐 캐리' , '1:50' , '액션' , '9.0', '전체이용가');
INSERT INTO movie
VALUES( '11', '잭 스나이더의 저스티스 리그 : 감독판' , '1' , '2021.3.18' , '잭 스나이더' , '벤 에플렉' , '4:02' , '액션' , '7.0', '12세 이상 관람가');
INSERT INTO movie
VALUES( '12', '토르 : 러브 엔 썬더' , '3' , '2022.7.8' , '타이카 와이티티' , '크리스 헴스위스' , '0:00' , '액션' , '0', '12세 이상 관람가');
INSERT INTO movie
VALUES( '13', '블랙 팬서 : 와칸다 포에버' , '3' , '2022.11.11' , '라이언 쿠글러' , '러티샤 라이트' , '0:00' , '액션' , '9.0', '12세 이상 관람가');
INSERT INTO movie
VALUES( '14', '앤트맨과 와스프 : 퀀턴매니아' , '3' , '2023.7.28' , '페이턴 리드' , '폴 러드' , '0:00' , 'SF', '0', '12세 이상 관람가');
INSERT INTO movie
VALUES( '15', '어벤져스 : 엔드게임 감독판' , '1' , '2019.4.24' , '앤서니 루소, 조 루소' , '로버트 다우니 주니어' , '3:09' , '액션', '7.62', '12세 이상 관람가');
INSERT INTO movie
VALUES( '16', '이상한 나라의 수학자' , '2' , '2022.3.9' , '박동훈' , '최민식' , '1:57' , '드라마', '8.6', '12세 이상 관람가');
INSERT INTO movie
VALUES( '17', '뜨거운 피' , '3' , '2023.3.23' , '천명관' , '정우' , '1:59' , '범죄', '0', '15세 이상 관람가');
INSERT INTO movie
VALUES( '18', '문폴' , '2' , '2023.3.16' , '롤랜드 에머리히' , '할리 베리' , '2:10' , 'SF', '5.2', '12세 이상 관람가');
SELECT * FROM movie;

-- 영화 장르
CREATE TABLE genre (
genre_Code NUMBER PRIMARY KEY NOT NULL,
genre_TITLE varchar2(30)
);

-- 장르 DB
INSERT INTO genre
VALUES ('1' , '액션');
INSERT INTO genre
VALUES ('2' , '판타지');
INSERT INTO genre
VALUES ('3' , '공포');
INSERT INTO genre
VALUES ('4' , 'SF');
INSERT INTO genre
VALUES ('5' , '멜로');
INSERT INTO genre
VALUES ('6' , '전쟁');
INSERT INTO genre
VALUES ('7' , '드라마');
INSERT INTO genre
VALUES ('8' , '범죄');
INSERT INTO genre
VALUES ('9' , '코미디');
INSERT INTO genre
VALUES ('10' , '애니메이션');
INSERT INTO genre
VALUES ('11' , '코미디');
INSERT INTO genre
VALUES ('12' , '추리');
INSERT INTO genre
VALUES ('13' , '스릴러');
INSERT INTO genre
VALUES ('14' , '음악');
INSERT INTO genre
VALUES ('15' , '스포츠');
SELECT * FROM genre;

-- 감독
CREATE TABLE director (
director_CODE NUMBER PRIMARY KEY NOT NULL,
director_NAME VARCHAR2(300),
);

-- 감독 DB
INSERT INTO director
VALUES( '1', '존 왓츠');
INSERT INTO director
VALUES( '2', '샘 레이미');
INSERT INTO director
VALUES( '3', '피터 잭슨');
INSERT INTO director
VALUES( '4', '박성후');
INSERT INTO director
VALUES( '5', '클로이 자오');
INSERT INTO director
VALUES( '6', '맷 리브스');
INSERT INTO director
VALUES( '7', '토드 필립스');
INSERT INTO director
VALUES( '8', '크리스토퍼 놀란');
INSERT INTO director
VALUES( '9','가스 제닝스');
INSERT INTO director
VALUES( '10', '제프 파울러');
INSERT INTO director
VALUES( '11', '잭 스나이더');
INSERT INTO director
VALUES( '12', '타이카 와이티티');
INSERT INTO director
VALUES( '13', '라이언 쿠글러');
INSERT INTO director
VALUES( '14', '페이턴 리드');
INSERT INTO director
VALUES( '15', '앤서니 루소, 조 루소');
INSERT INTO director
VALUES( '16', '박동훈');
INSERT INTO director
VALUES( '17', '천명관');
INSERT INTO director
VALUES( '18', '롤랜드 에머리히');
SELECT * FROM director;

-- 주역 배우
CREATE TABLE major_Actor (
major_Actor_CODE NUMBER PRIMARY KEY NOT NULL,
major_Actor_NAME VARCHAR2(300)
);

-- 주역 배우 DB
INSERT INTO major_Actor
VALUES( '1', '톰 홀렌드');
INSERT INTO major_Actor
VALUES( '2','베네딕트 컴버배치');
INSERT INTO major_Actor
VALUES( '3', '숀 애스틴');
INSERT INTO major_Actor
VALUES( '4', '오가타 메구미');
INSERT INTO major_Actor
VALUES( '5', '마동석');
INSERT INTO major_Actor
VALUES( '6', '로버트 패틴슨');
INSERT INTO major_Actor
VALUES( '7', '호아킨 피닉스');
INSERT INTO major_Actor
VALUES( '8', '톰 하디');
INSERT INTO major_Actor
VALUES( '9', '매튜 맥커너히');
INSERT INTO major_Actor
VALUES( '10', '짐 캐리');
INSERT INTO major_Actor
VALUES( '11', '벤 에플렉');
INSERT INTO major_Actor
VALUES( '12', '크리스 헴스위스');
INSERT INTO major_Actor
VALUES( '13', '러티샤 라이트');
INSERT INTO major_Actor
VALUES( '14',  '폴 러드');
INSERT INTO major_Actor
VALUES( '15', '로버트 다우니 주니어');
INSERT INTO major_Actor
VALUES( '16', '최민식');
INSERT INTO major_Actor
VALUES( '17', '정우');
INSERT INTO major_Actor
VALUES( '18', '할리 베리');
SELECT * FROM major_Actor;


-- 관람 연령
CREATE TABLE age (
age_Code NUMBER PRIMARY KEY NOT NULL,
age_NAME varchar2(300)
);

-- 관람 연령 DB
INSERT INTO age
VALUES ('1' , '전체이용가');
INSERT INTO age
VALUES ('2' , '12세 이상 관람가');
INSERT INTO age
VALUES ('3' , '15세 이상 관람가');
INSERT INTO age
VALUES ('4' , '청소년 관람불가');
INSERT INTO age
VALUES ('5' , '제한상영가');
SELECT * FROM age;
