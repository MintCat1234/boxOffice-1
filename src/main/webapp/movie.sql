-- 영화
CREATE TABLE movie (
mvCode NUMBER PRIMARY KEY NOT NULL, -- 영화번호
mvTitle varchar2(300), -- 영화제목
mvTag NUMBER, -- 1이면 상영종료, 2- 상영중 3- 상영예정
openDate DATE, -- 개봉일
director VARCHAR2(30), -- 감독
majorActor VARCHAR2(50), -- 주역 배우
runniungTime VARCHAR2(500), -- 진행시간
genre VARCHAR2(10), -- 장르
poster VARCHAR2(1000), -- 포스터
mvInfo VARCHAR2(500), -- 영화 정보
mvContent VARCHAR2(4000), --줄거리
grade VARCHAR2(10) -- 평점
mvAge VARCHAR2(30) -- 관람 연령
);

-- 영화 DB
INSERT INTO movie
VALUES( 1, '스파이더맨 노 웨이 홈' , 2 , '2021.12.15' , '존 왓츠' , '톰 홀렌드', '148분', '액션', 'SpiderMan.jpg', '스파이더맨: 노 웨이 홈은 마블 시네마틱 유니버스의 27번째 장편 영화다. 스파이더맨 시리즈의 3번째 작품', '정체가 탄로난 스파이더맨 피터 파커(톰 홀랜드)가 문제를 해결하기 위해 닥터 스트레인지(베네딕트 컴버배치)의 
도움을 받던 중 뜻하지 않게 멀티버스가 열리게 되고, 이를 통해 닥터 옥토퍼스(알프리드 몰리나) 등 각기 다른 차원의 숙적들이 나타나며 사상 최악의 위기를 맞게 되는데....', '9.1점', '12세 이상 관람가');
INSERT INTO movie
VALUES( 2, '닥터 스트레인지 : 대혼돈의 멀티버스' , 3 , '2022.5.4' , '샘 레이미' , '베네딕트 컴버배치' , '미정' , '액션' , 'Doctor Strange.jpg' , '마블 시네마틱 유니버스 페이즈 4의 5번째 영화이자, 닥터 스트레인지 실사영화 시리즈이며 6년만에 개봉하는 2번째 작품이다.' , '스티븐 스트레인지 박사는 멀티버스의 문을 여는 금기의 주문을 시전하여 다른 차원의 스트레인지와 맞닥뜨린다. 다른 차원의 스트레인지에 대항하고자 힘을 모은다.
' , '미정', '15세 이상 관람가');
INSERT INTO movie
VALUES( 3, '반지의 제왕 : 감독판' , 1 , '2001.5.4' , '피터 잭슨' , '숀 애스틴' , '558분' , '판타지' , 'The Rord of the Ring.jpg' , 'J. R. R. 톨킨이 집필한 판타지 소설 《반지의 제왕》의 실사 영화 3부작.' , '절대 반지를 손에 넣게 된 프로도 베긴스는 반지를 파괴해 중간계를 구하기 위해, 반지 원정대와 같이 여정을 떠나는데... ' '9.36점', '12세 이상 관람가');
INSERT INTO movie
VALUES( 4, '극장판 주술회전 0' , 2 , '2021.12.24' , '박성후' , '오가타 메구미' , '105분' , '에니메이션' , 'Gekijouban Jujutsu Kaisen 0.jpg' , '아쿠타미 게게의 만화 주술회전 0권을 원작으로 하는 극장판이자 제작사 MAPPA의 이 세상의 한구석에 이후 5년만의 2번째 극장 애니메이션이다.' , '주술사만의 낙원을 만들려는 게토는 비술사를 섬멸하겠다면서, 신주쿠와 교토에 천의 저주를 내리는데…
과연 옷코츠는 게토를 막을 수 있을까? 그리고 리카의 저주를 풀 수 있을까?' , '8.1점', '15세 이상 관람가');
INSERT INTO movie
VALUES( 5, '이터널스' , 1 , '2021.11.3' , '클로이 자오' , '마동석' , '156분' , '액션' , 'Eternals.jpg' , '마블 시네마틱 유니버스에 등장하는 외계 종족 집단 이터널스의 이야기' , '외계에서 고대 지구에 도래한 존재들인 이터널스, 고대 인류를 이끌긴 해도, 셀레스티얼의 지시로 데비안츠와 관련된 사건 외에는 인류사에 직접적으로 개입하지는 않았던 이들에게 어느 순간 이변이 일어나는데...' '6.5점' , '12세 이상 관람가');
INSERT INTO movie
VALUES( 6, '더 배트맨' , 2 , '2022.3.1' , '맷 리브스' , '로버트 패틴슨' , '176분' , '스릴러' , 'The Batman.jpg', '《더 배트맨》은 2022년 개봉한 미국의 슈퍼히어로 영화이며, 맷 리브스가 감독과 공동각본을 맡았다. 영화 《배트맨》 시리즈 리부트 영화이다.', '무장강도에게 부모님을 잃은 브루스 웨인은 배트맨으로서 자경단으로서 활약하'고있다. '6.8점' , '15세 이상 관람가');
INSERT INTO movie
VALUES( 7, '조커 : 감독판' , 1 , '2019.10.2' , '토드 필립스' , '호아킨 피닉스' , '123분' , '범죄' , 'Joker.jpg' , '9점' , '15세 이상 관람가');
INSERT INTO movie
VALUES( 8, '덩케르트 : 감독판' , 1 , '2017.7.20' , '크리스토퍼 놀란' , '톰 하디' , '106분' , '전쟁' , 'Dunkerque.jpg' , '8점' , '12세 이상 관람가');
INSERT INTO movie
VALUES( 9, '씽2게더' , 2 , '2022.1.5' , '가스 제닝스' , '매튜 맥커너히' , '110분' , '음악' , 'Sing 2.jpg' , '7.5점' , '전체이용가');
INSERT INTO movie
VALUES( 10, '슈퍼 소닉 2' , 3 , '2022.4.6' , '제프 파울러' , '짐 캐리' , '110분 ', '액션' , 'Sonic 2.jpg' , '9.0점' , '전체이용가');
INSERT INTO movie
VALUES( 11, '잭 스나이더의 저스티스 리그 : 감독판' , 1 , '2021.3.18' , '잭 스나이더' , '벤 에플렉' , 'Justiceleague.jpg' , '362분' , '액션' , '7.0점' , '12세 이상 관람가');
INSERT INTO movie
VALUES( 12, '토르 : 러브 엔 썬더' , 3 , '2022.7.8' , '타이카 와이티티' , '크리스 헴스위스' , '액션' , 'Thor 4.jpg' , '미정' , '12세 이상 관람가');
INSERT INTO movie
VALUES( 13, '모비우스' , 3 , '2022.11.11' , '다니엘 에스피노사' , '자레도 레토' , '104분' , '액션' , 'Morbius.jpg' , '다니엘 에스피노사가 만든 스파이더맨과 세계관을 공유하는 영화' , '희귀혈액병을 앓고 있는 생화학자 ‘모비우스’(자레드 레토)는 동료인 ‘마르틴’(아드리아 아르호나)과 함께 치료제 개발에 몰두한다. 흡혈 박쥐를 연구하던 중 마침내 치료제 개발에 성공한 ‘모비우스’는 새 생명과 강력한 힘을 얻게 되지만, 동시에 흡혈을 하지 않고는 생명을 유지할 수 없게 된다. 그러던 중 ‘모비우스’와 같은 병을 앓고 있던 그의 친구 ‘마일로’(맷 스미스)도 ‘모비우스’와 같은 힘을 얻게 되는데… 세상을 구할 능력, 파괴할 본능! 마블 최강의 안티 히어로가 탄생한다!', '12세 이상 관람가');
INSERT INTO movie
VALUES( 14, '스텔라' , 3 , '2022.04.06' , '권수경' , '손호준' , '98분' , 'SF', 'scarlet.jpg' , '권수경 감독의 코미디 추적 드라마 영화' , '막다른 인생 제대로 한 번 달려본 적 없는 차량담보업계 에이스 ‘영배’(손호준). 보스 ‘서사장’(허성태)이 하룻밤 맡긴 슈퍼카가 절친 ‘동식’(이규형)과 함께 감쪽같이 사라지고 영배는 범인으로 몰려 서사장 일당에게 쫓기기 시작한다. 믿을 사람 하나 없고, 도망칠 곳도 없는 그의 앞에 나타난 건 바로 1987년식 오래된 자동차 ‘스텔라’. 최대 시속 50km, 남은 시간은 3시간… 유일한 희망인 스텔라와 함께 보스의 슈퍼카를 반드시 찾아야만 한다!' , '12세 이상 관람가');
INSERT INTO movie
VALUES( 15, '어벤져스 : 엔드게임 감독판' , 1 , '2019.4.24' , '앤서니 루소, 조 루소' , '로버트 다우니 주니어' , '249분' , '액션', 'AVENGERS.jpg' '8.63점', '12세 이상 관람가');
INSERT INTO movie
VALUES( 16, '이상한 나라의 수학자' , 2 , '2022.3.9' , '박동훈' , '최민식' , '117분' , '드라마', 'Mathematician.jpg' '8.6점' '12세 이상 관람가');
INSERT INTO movie
VALUES( 17, '뜨거운 피' , 3 , '2023.3.23' , '천명관' , '정우' , '119분' , '범죄', 'Boiled Blood.jpg' '미정', '15세 이상 관람가');
INSERT INTO movie
VALUES( 18, '문폴' , 2 , '2023.3.16' , '롤랜드 에머리히' , '할리 베리' , '130분' , 'SF', 'MOONFALL' , '5.2점', '12세 이상 관람가');
SELECT * FROM movie;

-- 영화 장르
CREATE TABLE genre (
genreCode NUMBER PRIMARY KEY NOT NULL,
genreTITLE varchar2(30)
);

-- 장르 DB
INSERT INTO genre
VALUES (1 , '액션');
INSERT INTO genre
VALUES (2 , '판타지');
INSERT INTO genre
VALUES (3 , '공포');
INSERT INTO genre
VALUES (4 , 'SF');
INSERT INTO genre
VALUES (5 , '멜로');
INSERT INTO genre
VALUES (6 , '전쟁');
INSERT INTO genre
VALUES (7 , '드라마');
INSERT INTO genre
VALUES (8 , '범죄');
INSERT INTO genre
VALUES (9 , '코미디');
INSERT INTO genre
VALUES (10 , '애니메이션');
INSERT INTO genre
VALUES (11 , '코미디');
INSERT INTO genre
VALUES (12 , '추리');
INSERT INTO genre
VALUES (13 , '스릴러');
INSERT INTO genre
VALUES (14 , '음악');
INSERT INTO genre
VALUES (15 , '스포츠');
SELECT * FROM genre;

-- 감독
CREATE TABLE director (
directorCode NUMBER PRIMARY KEY NOT NULL,
directorName VARCHAR2(300),
);

-- 감독 DB
INSERT INTO director
VALUES( 1, '존 왓츠');
INSERT INTO director
VALUES( 2, '샘 레이미');
INSERT INTO director
VALUES( 3, '피터 잭슨');
INSERT INTO director
VALUES( 4, '박성후');
INSERT INTO director
VALUES( 5, '클로이 자오');
INSERT INTO director
VALUES( 6, '맷 리브스');
INSERT INTO director
VALUES( 7, '토드 필립스');
INSERT INTO director
VALUES( 8, '크리스토퍼 놀란');
INSERT INTO director
VALUES( 9,'가스 제닝스');
INSERT INTO director
VALUES( 10, '제프 파울러');
INSERT INTO director
VALUES( 11, '잭 스나이더');
INSERT INTO director
VALUES( 12, '타이카 와이티티');
INSERT INTO director
VALUES( 13, '라이언 쿠글러');
INSERT INTO director
VALUES( 14, '페이턴 리드');
INSERT INTO director
VALUES( 15, '앤서니 루소, 조 루소');
INSERT INTO director
VALUES( 16, '박동훈');
INSERT INTO director
VALUES( 17, '천명관');
INSERT INTO director
VALUES( 18, '롤랜드 에머리히');
SELECT * FROM director;

-- 주역 배우
CREATE TABLE majorActor (
majorActor_CODE NUMBER PRIMARY KEY NOT NULL,
majorActor_NAME VARCHAR2(300)
);

-- 주역 배우 DB
INSERT INTO majorActor
VALUES( 1, '톰 홀렌드');
INSERT INTO majorActor
VALUES( 2,'베네딕트 컴버배치');
INSERT INTO majorActor
VALUES( 3, '숀 애스틴');
INSERT INTO majorActor
VALUES( 4, '오가타 메구미');
INSERT INTO majorActor
VALUES( 5, '마동석');
INSERT INTO majorActor
VALUES( 6, '로버트 패틴슨');
INSERT INTO majorActor
VALUES( 7, '호아킨 피닉스');
INSERT INTO majorActor
VALUES( 8, '톰 하디');
INSERT INTO majorActor
VALUES( 9, '매튜 맥커너히');
INSERT INTO majorActor
VALUES( 10, '짐 캐리');
INSERT INTO majorActor
VALUES( 11, '벤 에플렉');
INSERT INTO majorActor
VALUES( 12, '크리스 헴스위스');
INSERT INTO majorActor
VALUES( 13, '러티샤 라이트');
INSERT INTO majorActor
VALUES( 14,  '폴 러드');
INSERT INTO majorActor
VALUES( 15, '로버트 다우니 주니어');
INSERT INTO majorActor
VALUES( 16, '최민식');
INSERT INTO majorActor
VALUES( 17, '정우');
INSERT INTO major_Actor
VALUES( 18, '할리 베리');
SELECT * FROM majorActor;


-- 관람 연령
CREATE TABLE age (
ageCode NUMBER PRIMARY KEY NOT NULL,
ageName varchar2(300)
);

-- 관람 연령 DB
INSERT INTO age
VALUES (1 , '전체이용가');
INSERT INTO age
VALUES (2 , '12세 이상 관람가');
INSERT INTO age
VALUES (3 , '15세 이상 관람가');
INSERT INTO age
VALUES (4 , '청소년 관람불가');
INSERT INTO age
VALUES (5 , '제한상영가');
SELECT * FROM age;