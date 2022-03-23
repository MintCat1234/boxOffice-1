drop table reservation cascade constraints;
CREATE table RESERVATION
(
rsCode NUMBER PRIMARY KEY NOT NULL, -- 예약 코드               					rscode
nsCode NUMBER, 						-- 상영 코드                                  nscode
movieCode NUMBER, 					-- 영화코드									movieCode
seats VARCHAR2(20), 				--좌석										seats
id VARCHAR2(20), 					-- 아이디										id
ticketCode NUMBER, 					-- 티켓코드									ticketCode
finalPrice NUMBER(10), 				-- 최종 영화값									finalPrice
rsCheck VARCHAR2(2) default 'n', 	-- 예약 확인									rsCheck
shCheck VARCHAR2(2) default 'n', 	-- 시청 확인									shCheck
rvCheck VARCHAR2(2) default 'n' 	-- 리뷰 확인									rvCheck
);

select * from reservation;


delete from RESERVATION;


delete from review;

insert into RESERVATION values(1,2,01,'A1','shyun',1,10000,'y','y','y');
insert into RESERVATION values(2,10,02,'A1','shyun',2,12000,'y','y','y');
insert into RESERVATION values(3,13,03,'A1','shyun',3,9000,'y','y','y');
insert into RESERVATION values(4,18,04,'A1','shyun',4,10000,'y','y','y');
insert into RESERVATION values(5,88,05,'A1','shyun',5,8000,'y','y','y');
insert into RESERVATION values(6,133,06,'A1','shyun',6,9000,'y','y','y');
insert into RESERVATION values(7,2,01,'A2','shyun',7,10000,'y','y','y');
insert into RESERVATION values(8,2,01,'A3','shyun',7,10000,'y','y','y');
insert into RESERVATION values(9,2,01,'A4','shyun',7,10000,'y','y','y');
insert into RESERVATION values(10,10,02,'A2','shyun',8,12000,'y','y','y');
insert into RESERVATION values(11,888,26,'A1','shyun',9,10000,'y','y','y');
insert into RESERVATION values(12,889,27,'A1','shyun',10,10000,'y','y','y');
insert into RESERVATION values(13,878,28,'A1','shyun',11,11000,'y','y','y');
insert into RESERVATION values(14,874,30,'A1','shyun',12,12000,'y','y','y');
insert into RESERVATION values(15,999,21,'A1','shyun',13,15000,'y','y','y');


drop table theater cascade constraints;
CREATE table THEATER
(
theaterCode NUMBER PRIMARY KEY NOT NULL, -- 영화관 코드
theaterLoc  VARCHAR2(20),				 -- 영화관 위치
theaterName VARCHAR2(20) 				 -- 영화관 이름
);

delete from theater;
insert into THEATER values(01,'강남','CGV');
insert into THEATER values(02,'강남','메가박스');
insert into THEATER values(03,'위례','CGV');
insert into THEATER values(04,'위례','메가박스');
insert into THEATER values(05,'의정부','메가박스');
insert into THEATER values(06,'의정부','cgv');
insert into THEATER values(07,'용인','메가박스');
insert into THEATER values(08,'용인','cgv');


drop table screen cascade constraints;
CREATE table SCREEN
(
screenCode NUMBER PRIMARY KEY NOT NULL, -- 상영관코드
screenTime VARCHAR2(10), 				-- 상영 시간 
screenNum NUMBER 						-- 몇관인지 
);

delete from screen;
insert into SCREEN values(01,'08:00',01);
insert into SCREEN values(02,'11:00',01);
insert into SCREEN values(03,'14:00',01);
insert into SCREEN values(04,'17:00',01);
insert into SCREEN values(05,'20:00',01);
insert into SCREEN values(06,'08:00',02);
insert into SCREEN values(07,'11:00',02);
insert into SCREEN values(08,'14:00',02);
insert into SCREEN values(09,'17:00',02);
insert into SCREEN values(10,'20:00',02);
insert into SCREEN values(11,'08:00',03);
insert into SCREEN values(12,'11:00',03);
insert into SCREEN values(13,'14:00',03);
insert into SCREEN values(14,'17:00',03);
insert into SCREEN values(15,'20:00',03);
insert into SCREEN values(16,'08:00',04);
insert into SCREEN values(17,'11:00',04);
insert into SCREEN values(18,'14:00',04);
insert into SCREEN values(19,'17:00',04);
insert into SCREEN values(20,'20:00',04); --강남cgv

insert into SCREEN values(21,'08:00',01);
insert into SCREEN values(22,'11:00',01);
insert into SCREEN values(23,'14:00',01);
insert into SCREEN values(24,'17:00',01);
insert into SCREEN values(25,'20:00',01);
insert into SCREEN values(26,'08:00',02);
insert into SCREEN values(27,'11:00',02);
insert into SCREEN values(28,'14:00',02);
insert into SCREEN values(29,'17:00',02);
insert into SCREEN values(30,'20:00',02); --강남 메가박스

insert into SCREEN values(31,'08:30',01);
insert into SCREEN values(32,'11:30',01);
insert into SCREEN values(33,'14:30',01);
insert into SCREEN values(34,'17:30',01);
insert into SCREEN values(35,'20:30',01);
insert into SCREEN values(36,'08:30',02);
insert into SCREEN values(37,'11:30',02);
insert into SCREEN values(38,'14:30',02);
insert into SCREEN values(39,'17:30',02);
insert into SCREEN values(40,'20:30',02);
insert into SCREEN values(41,'08:30',03);
insert into SCREEN values(42,'11:30',03);
insert into SCREEN values(43,'14:30',03);
insert into SCREEN values(44,'17:30',03);
insert into SCREEN values(45,'20:30',03); --위례 cgv

insert into SCREEN values(46,'08:15',01);
insert into SCREEN values(47,'11:15',01);
insert into SCREEN values(48,'14:15',01);
insert into SCREEN values(49,'17:15',01);
insert into SCREEN values(50,'20:15',01);
insert into SCREEN values(51,'08:15',02);
insert into SCREEN values(52,'11:15',02);
insert into SCREEN values(53,'14:15',02);
insert into SCREEN values(54,'17:15',02);
insert into SCREEN values(55,'20:15',02); --위례 메가박스

insert into SCREEN values(56,'09:00',01);
insert into SCREEN values(57,'13:00',01);
insert into SCREEN values(58,'17:00',01);
insert into SCREEN values(59,'19:00',01);
insert into SCREEN values(60,'22:00',01);
insert into SCREEN values(61,'09:00',02);
insert into SCREEN values(62,'13:00',02);
insert into SCREEN values(63,'17:00',02);
insert into SCREEN values(64,'19:00',02);
insert into SCREEN values(65,'22:00',02); -- 의정부 cgv

insert into SCREEN values(66,'09:10',01);
insert into SCREEN values(67,'13:10',01);
insert into SCREEN values(68,'17:10',01);
insert into SCREEN values(69,'19:10',01);
insert into SCREEN values(70,'22:10',01);
insert into SCREEN values(71,'09:10',02);
insert into SCREEN values(72,'13:10',02);
insert into SCREEN values(73,'17:10',02);
insert into SCREEN values(74,'19:10',02);
insert into SCREEN values(75,'22:10',02);   -- 의정부 메가박스

insert into SCREEN values(76,'07:15',01);
insert into SCREEN values(77,'10:15',01);
insert into SCREEN values(78,'13:15',01);
insert into SCREEN values(79,'16:15',01);
insert into SCREEN values(80,'19:15',01);
insert into SCREEN values(81,'07:15',02);
insert into SCREEN values(82,'10:15',02);
insert into SCREEN values(83,'13:15',02);
insert into SCREEN values(84,'16:15',02);
insert into SCREEN values(85,'19:15',02);  --용인 cgv 

insert into SCREEN values(86,'08:25',01);
insert into SCREEN values(87,'11:25',01);
insert into SCREEN values(88,'14:25',01);
insert into SCREEN values(89,'17:25',01);
insert into SCREEN values(90,'20:25',01);
insert into SCREEN values(91,'08:25',02);
insert into SCREEN values(92,'11:25',02);
insert into SCREEN values(93,'14:25',02);
insert into SCREEN values(94,'17:25',02);
insert into SCREEN values(95,'20:25',02);   --용인 메가박스



drop table NOWSHOWING cascade constraint;
CREATE TABLE NOWSHOWING(
nsCode NUMBER primary key not null, --상영코드
movieCode NUMBER, 					-- 영화코드
theaterCode NUMBER, 				-- 극장코드
screenCode NUMBER, 					-- 스크린코드
showingDay VARCHAR2(100), 			--상영날짜
pchk VARCHAR2(2) default 'n' 		-- 상영코드 시간별제어
);


delete from NOWSHOWING;
insert into NOWSHOWING values(01,01,01,01,'03월 31일','n');
insert into NOWSHOWING values(02,01,01,02,'03월 31일','n');
insert into NOWSHOWING values(03,01,01,03,'03월 31일','n');
insert into NOWSHOWING values(04,01,01,04,'03월 31일','n');
insert into NOWSHOWING values(05,01,01,05,'03월 31일','n'); -- 강남 cgv 1관 스파이더맨
insert into NOWSHOWING values(06,02,01,06,'03월 31일','n');
insert into NOWSHOWING values(07,02,01,07,'03월 31일','n');
insert into NOWSHOWING values(08,02,01,08,'03월 31일','n');
insert into NOWSHOWING values(09,02,01,09,'03월 31일','n');
insert into NOWSHOWING values(10,02,01,10,'03월 31일','n'); -- 강남 cgv 2관 이터널스
insert into NOWSHOWING values(11,03,01,11,'03월 31일','n');
insert into NOWSHOWING values(12,03,01,12,'03월 31일','n');
insert into NOWSHOWING values(13,03,01,13,'03월 31일','n');
insert into NOWSHOWING values(14,03,01,14,'03월 31일','n');
insert into NOWSHOWING values(15,03,01,15,'03월 31일','n'); -- 강남 cgv 3관 베놈 2
insert into NOWSHOWING values(16,04,01,16,'03월 31일','n');
insert into NOWSHOWING values(17,04,01,17,'03월 31일','n');
insert into NOWSHOWING values(18,04,01,18,'03월 31일','n');
insert into NOWSHOWING values(19,04,01,19,'03월 31일','n');
insert into NOWSHOWING values(20,04,01,20,'03월 31일','n');  --강남 cgv 4관 듄    11월 30일

insert into NOWSHOWING values(21,01,01,01,'04월 01일','n');
insert into NOWSHOWING values(22,01,01,02,'04월 01일','n');
insert into NOWSHOWING values(23,01,01,03,'04월 01일','n');
insert into NOWSHOWING values(24,01,01,04,'04월 01일','n');
insert into NOWSHOWING values(25,01,01,05,'04월 01일','n'); -- 강남 cgv 1관 스파이더맨
insert into NOWSHOWING values(26,02,01,06,'04월 01일','n');
insert into NOWSHOWING values(27,02,01,07,'04월 01일','n');
insert into NOWSHOWING values(28,02,01,08,'04월 01일','n');
insert into NOWSHOWING values(29,02,01,09,'04월 01일','n');
insert into NOWSHOWING values(30,02,01,10,'04월 01일','n'); -- 강남 cgv 2관 이터널스
insert into NOWSHOWING values(31,03,01,11,'04월 01일','n');
insert into NOWSHOWING values(32,03,01,12,'04월 01일','n');
insert into NOWSHOWING values(33,03,01,13,'04월 01일','n');
insert into NOWSHOWING values(34,03,01,14,'04월 01일','n');
insert into NOWSHOWING values(35,03,01,15,'04월 01일','n'); -- 강남 cgv 3관 베놈 2
insert into NOWSHOWING values(36,04,01,16,'04월 01일','n');
insert into NOWSHOWING values(37,04,01,17,'04월 01일','n');
insert into NOWSHOWING values(38,04,01,18,'04월 01일','n');
insert into NOWSHOWING values(39,04,01,19,'04월 01일','n');
insert into NOWSHOWING values(40,04,01,20,'04월 01일','n');  --강남 cgv 4관 듄    12월 1일

insert into NOWSHOWING values(41,01,01,01,'04월 02일','n');
insert into NOWSHOWING values(42,01,01,02,'04월 02일','n');
insert into NOWSHOWING values(43,01,01,03,'04월 02일','n');
insert into NOWSHOWING values(44,01,01,04,'04월 02일','n');
insert into NOWSHOWING values(45,01,01,05,'04월 02일','n'); -- 강남 cgv 1관 스파이더맨
insert into NOWSHOWING values(46,02,01,06,'04월 02일','n');
insert into NOWSHOWING values(47,02,01,07,'04월 02일','n');
insert into NOWSHOWING values(48,02,01,08,'04월 02일','n');
insert into NOWSHOWING values(49,02,01,09,'04월 02일','n');
insert into NOWSHOWING values(50,02,01,10,'04월 02일','n'); -- 강남 cgv 2관 이터널스
insert into NOWSHOWING values(51,03,01,11,'04월 02일','n');
insert into NOWSHOWING values(52,03,01,12,'04월 02일','n');
insert into NOWSHOWING values(53,03,01,13,'04월 02일','n');
insert into NOWSHOWING values(54,03,01,14,'04월 02일','n');
insert into NOWSHOWING values(55,03,01,15,'04월 02일','n'); -- 강남 cgv 3관 베놈 2
insert into NOWSHOWING values(56,04,01,16,'04월 02일','n');
insert into NOWSHOWING values(57,04,01,17,'04월 02일','n');
insert into NOWSHOWING values(58,04,01,18,'04월 02일','n');
insert into NOWSHOWING values(59,04,01,19,'04월 02일','n');
insert into NOWSHOWING values(60,04,01,20,'04월 02일','n');  --강남 cgv 4관 듄    12월 2일

insert into NOWSHOWING values(61,01,01,01,'04월 03일','n');
insert into NOWSHOWING values(62,01,01,02,'04월 03일','n');
insert into NOWSHOWING values(63,01,01,03,'04월 03일','n');
insert into NOWSHOWING values(64,01,01,04,'04월 03일','n');
insert into NOWSHOWING values(65,01,01,05,'04월 03일','n'); -- 강남 cgv 1관 스파이더맨
insert into NOWSHOWING values(66,02,01,06,'04월 03일','n');
insert into NOWSHOWING values(67,02,01,07,'04월 03일','n');
insert into NOWSHOWING values(68,02,01,08,'04월 03일','n');
insert into NOWSHOWING values(69,02,01,09,'04월 03일','n');
insert into NOWSHOWING values(70,02,01,10,'04월 03일','n'); -- 강남 cgv 2관 이터널스
insert into NOWSHOWING values(71,03,01,11,'04월 03일','n');
insert into NOWSHOWING values(72,03,01,12,'04월 03일','n');
insert into NOWSHOWING values(73,03,01,13,'04월 03일','n');
insert into NOWSHOWING values(74,03,01,14,'04월 03일','n');
insert into NOWSHOWING values(75,03,01,15,'04월 03일','n'); -- 강남 cgv 3관 베놈 2
insert into NOWSHOWING values(76,04,01,16,'04월 03일','n');
insert into NOWSHOWING values(77,04,01,17,'04월 03일','n');
insert into NOWSHOWING values(78,04,01,18,'04월 03일','n');
insert into NOWSHOWING values(79,04,01,19,'04월 03일','n');
insert into NOWSHOWING values(80,04,01,20,'04월 03일','n');  --강남 cgv 4관 듄    12월 3일

insert into NOWSHOWING values(81,01,02,21,'03월 31일','n');
insert into NOWSHOWING values(82,01,02,22,'03월 31일','n');
insert into NOWSHOWING values(83,01,02,23,'03월 31일','n');
insert into NOWSHOWING values(84,01,02,24,'03월 31일','n');
insert into NOWSHOWING values(85,01,02,25,'03월 31일','n'); -- 강남 메가박스 1관 스파이더맨
insert into NOWSHOWING values(86,05,02,26,'03월 31일','n');
insert into NOWSHOWING values(87,05,02,27,'03월 31일','n');
insert into NOWSHOWING values(88,05,02,28,'03월 31일','n');
insert into NOWSHOWING values(89,05,02,29,'03월 31일','n');
insert into NOWSHOWING values(90,05,02,30,'03월 31일','n'); -- 강남 메가박스 2관 더 아담스 패밀리2   11월 30일

insert into NOWSHOWING values(91,01,02,21,'04월 01일','n');
insert into NOWSHOWING values(92,01,02,22,'04월 01일','n');
insert into NOWSHOWING values(93,01,02,23,'04월 01일','n');
insert into NOWSHOWING values(94,01,02,24,'04월 01일','n');
insert into NOWSHOWING values(95,01,02,25,'04월 01일','n'); -- 강남 메가박스 1관 스파이더맨
insert into NOWSHOWING values(96,05,02,26,'04월 01일','n');
insert into NOWSHOWING values(97,05,02,27,'04월 01일','n');
insert into NOWSHOWING values(98,05,02,28,'04월 01일','n');
insert into NOWSHOWING values(99,05,02,29,'04월 01일','n');
insert into NOWSHOWING values(100,05,02,30,'04월 01일','n'); -- 강남 메가박스 2관 더 아담스 패밀리2   12월 1일

insert into NOWSHOWING values(101,01,02,21,'04월 02일','n');
insert into NOWSHOWING values(102,01,02,22,'04월 02일','n');
insert into NOWSHOWING values(103,01,02,23,'04월 02일','n');
insert into NOWSHOWING values(104,01,02,24,'04월 02일','n');
insert into NOWSHOWING values(105,01,02,25,'04월 02일','n'); -- 강남 메가박스 1관 스파이더맨
insert into NOWSHOWING values(106,05,02,26,'04월 02일','n');
insert into NOWSHOWING values(107,05,02,27,'04월 02일','n');
insert into NOWSHOWING values(108,05,02,28,'04월 02일','n');
insert into NOWSHOWING values(109,05,02,29,'04월 02일','n');
insert into NOWSHOWING values(110,05,02,30,'04월 02일','n'); -- 강남 메가박스 2관 더 아담스 패밀리2   12월 2일

insert into NOWSHOWING values(111,01,02,21,'04월 03일','n');
insert into NOWSHOWING values(112,01,02,22,'04월 03일','n');
insert into NOWSHOWING values(113,01,02,23,'04월 03일','n');
insert into NOWSHOWING values(114,01,02,24,'04월 03일','n');
insert into NOWSHOWING values(115,01,02,25,'04월 03일','n'); -- 강남 메가박스 1관 스파이더맨
insert into NOWSHOWING values(116,05,02,26,'04월 03일','n');
insert into NOWSHOWING values(117,05,02,27,'04월 03일','n');
insert into NOWSHOWING values(118,05,02,28,'04월 03일','n');
insert into NOWSHOWING values(119,05,02,29,'04월 03일','n');
insert into NOWSHOWING values(120,05,02,30,'04월 03일','n'); -- 강남 메가박스 2관 더 아담스 패밀리2   12월 3일


insert into NOWSHOWING values(121,02,03,31,'03월 31일','n'); 
insert into NOWSHOWING values(122,02,03,32,'03월 31일','n');
insert into NOWSHOWING values(123,02,03,33,'03월 31일','n');
insert into NOWSHOWING values(124,02,03,34,'03월 31일','n');
insert into NOWSHOWING values(125,02,03,35,'03월 31일','n'); -- 위례 cgv 1관 이터널스
insert into NOWSHOWING values(126,03,03,36,'03월 31일','n'); 
insert into NOWSHOWING values(127,03,03,37,'03월 31일','n');
insert into NOWSHOWING values(128,03,03,38,'03월 31일','n');
insert into NOWSHOWING values(129,03,03,39,'03월 31일','n');
insert into NOWSHOWING values(130,03,03,40,'03월 31일','n'); -- 위례 cgv 2관 베놈 2
insert into NOWSHOWING values(131,06,03,41,'03월 31일','n'); 
insert into NOWSHOWING values(132,06,03,42,'03월 31일','n');
insert into NOWSHOWING values(133,06,03,43,'03월 31일','n');
insert into NOWSHOWING values(134,06,03,44,'03월 31일','n');
insert into NOWSHOWING values(135,06,03,45,'03월 31일','n'); -- 위례 cgv 3관 장르만 로맨스 11월 30일

insert into NOWSHOWING values(136,02,03,31,'04월 01일','n'); 
insert into NOWSHOWING values(137,02,03,32,'04월 01일','n');
insert into NOWSHOWING values(138,02,03,33,'04월 01일','n');
insert into NOWSHOWING values(139,02,03,34,'04월 01일','n');
insert into NOWSHOWING values(140,02,03,35,'04월 01일','n'); -- 위례 cgv 1관 이터널스
insert into NOWSHOWING values(141,03,03,36,'04월 01일','n'); 
insert into NOWSHOWING values(142,03,03,37,'04월 01일','n');
insert into NOWSHOWING values(143,03,03,38,'04월 01일','n');
insert into NOWSHOWING values(144,03,03,39,'04월 01일','n');
insert into NOWSHOWING values(145,03,03,40,'04월 01일','n'); -- 위례 cgv 2관 베놈 2
insert into NOWSHOWING values(146,06,03,41,'04월 01일','n'); 
insert into NOWSHOWING values(147,06,03,42,'04월 01일','n');
insert into NOWSHOWING values(148,06,03,43,'04월 01일','n');
insert into NOWSHOWING values(149,06,03,44,'04월 01일','n');
insert into NOWSHOWING values(150,06,03,45,'04월 01일','n'); -- 위례 cgv 3관 장르만 로맨스 12월 01일

insert into NOWSHOWING values(151,02,03,31,'04월 02일','n'); 
insert into NOWSHOWING values(152,02,03,32,'04월 02일','n');
insert into NOWSHOWING values(153,02,03,33,'04월 02일','n');
insert into NOWSHOWING values(154,02,03,34,'04월 02일','n');
insert into NOWSHOWING values(155,02,03,35,'04월 02일','n'); -- 위례 cgv 1관 이터널스
insert into NOWSHOWING values(156,03,03,36,'04월 02일','n'); 
insert into NOWSHOWING values(157,03,03,37,'04월 02일','n');
insert into NOWSHOWING values(158,03,03,38,'04월 02일','n');
insert into NOWSHOWING values(159,03,03,39,'04월 02일','n');
insert into NOWSHOWING values(160,03,03,40,'04월 02일','n'); -- 위례 cgv 2관 베놈 2
insert into NOWSHOWING values(161,06,03,41,'04월 02일','n'); 
insert into NOWSHOWING values(162,06,03,42,'04월 02일','n');
insert into NOWSHOWING values(163,06,03,43,'04월 02일','n');
insert into NOWSHOWING values(164,06,03,44,'04월 02일','n');
insert into NOWSHOWING values(165,06,03,45,'04월 02일','n'); -- 위례 cgv 3관 장르만 로맨스 12월 02일

insert into NOWSHOWING values(166,02,03,31,'04월 03일','n'); 
insert into NOWSHOWING values(167,02,03,32,'04월 03일','n');
insert into NOWSHOWING values(168,02,03,33,'04월 03일','n');
insert into NOWSHOWING values(169,02,03,34,'04월 03일','n');
insert into NOWSHOWING values(170,02,03,35,'04월 03일','n'); -- 위례 cgv 1관 이터널스
insert into NOWSHOWING values(171,03,03,36,'04월 03일','n'); 
insert into NOWSHOWING values(172,03,03,37,'04월 03일','n');
insert into NOWSHOWING values(173,03,03,38,'04월 03일','n');
insert into NOWSHOWING values(174,03,03,39,'04월 03일','n');
insert into NOWSHOWING values(175,03,03,40,'04월 03일','n'); -- 위례 cgv 2관 베놈 2
insert into NOWSHOWING values(176,06,03,41,'04월 03일','n'); 
insert into NOWSHOWING values(177,06,03,42,'04월 03일','n');
insert into NOWSHOWING values(178,06,03,43,'04월 03일','n');
insert into NOWSHOWING values(179,06,03,44,'04월 03일','n');
insert into NOWSHOWING values(180,06,03,45,'04월 03일','n'); -- 위례 cgv 3관 장르만 로맨스 12월 03일


insert into NOWSHOWING values(181,01,04,46,'03월 31일','n'); 
insert into NOWSHOWING values(182,01,04,47,'03월 31일','n');
insert into NOWSHOWING values(183,01,04,48,'03월 31일','n');
insert into NOWSHOWING values(184,01,04,49,'03월 31일','n');
insert into NOWSHOWING values(185,01,04,50,'03월 31일','n'); -- 위례 롯데 1관 스파이더맨
insert into NOWSHOWING values(186,04,04,51,'03월 31일','n'); 
insert into NOWSHOWING values(187,04,04,52,'03월 31일','n');
insert into NOWSHOWING values(188,04,04,53,'03월 31일','n');
insert into NOWSHOWING values(189,04,04,54,'03월 31일','n');
insert into NOWSHOWING values(190,04,04,55,'03월 31일','n'); -- 위례 롯데 2관 듄 11월 30일

insert into NOWSHOWING values(191,01,04,46,'04월 01일','n'); 
insert into NOWSHOWING values(192,01,04,47,'04월 01일','n');
insert into NOWSHOWING values(193,01,04,48,'04월 01일','n');
insert into NOWSHOWING values(194,01,04,49,'04월 01일','n');
insert into NOWSHOWING values(195,01,04,50,'04월 01일','n'); -- 위례 롯데 1관 스파이더맨
insert into NOWSHOWING values(196,04,04,51,'04월 01일','n'); 
insert into NOWSHOWING values(197,04,04,52,'04월 01일','n');
insert into NOWSHOWING values(198,04,04,53,'04월 01일','n');
insert into NOWSHOWING values(199,04,04,54,'04월 01일','n');
insert into NOWSHOWING values(200,04,04,55,'04월 01일','n'); -- 위례 롯데 2관 듄 12월 1일

insert into NOWSHOWING values(201,01,04,46,'04월 02일','n'); 
insert into NOWSHOWING values(202,01,04,47,'04월 02일','n');
insert into NOWSHOWING values(203,01,04,48,'04월 02일','n');
insert into NOWSHOWING values(204,01,04,49,'04월 02일','n');
insert into NOWSHOWING values(205,01,04,50,'04월 02일','n'); -- 위례 롯데 1관 스파이더맨
insert into NOWSHOWING values(206,04,04,51,'04월 02일','n'); 
insert into NOWSHOWING values(207,04,04,52,'04월 02일','n');
insert into NOWSHOWING values(208,04,04,53,'04월 02일','n');
insert into NOWSHOWING values(209,04,04,54,'04월 02일','n');
insert into NOWSHOWING values(210,04,04,55,'04월 02일','n'); -- 위례 롯데 2관 듄 12월 2일

insert into NOWSHOWING values(211,01,04,46,'04월 03일','n'); 
insert into NOWSHOWING values(212,01,04,47,'04월 03일','n');
insert into NOWSHOWING values(213,01,04,48,'04월 03일','n');
insert into NOWSHOWING values(214,01,04,49,'04월 03일','n');
insert into NOWSHOWING values(215,01,04,50,'04월 03일','n'); -- 위례 롯데 1관 스파이더맨
insert into NOWSHOWING values(216,04,04,51,'04월 03일','n'); 
insert into NOWSHOWING values(217,04,04,52,'04월 03일','n');
insert into NOWSHOWING values(218,04,04,53,'04월 03일','n');
insert into NOWSHOWING values(219,04,04,54,'04월 03일','n');
insert into NOWSHOWING values(220,04,04,55,'04월 03일','n'); -- 위례 롯데 2관 듄 12월 3일

--의정부 메가박스

insert into NOWSHOWING values(221,01,05,56,'03월 31일','n'); 
insert into NOWSHOWING values(222,01,05,57,'03월 31일','n');
insert into NOWSHOWING values(223,01,05,58,'03월 31일','n');
insert into NOWSHOWING values(224,01,05,59,'03월 31일','n');
insert into NOWSHOWING values(225,01,05,60,'03월 31일','n'); -- 의정부 메가 박스  1관 스파이더맨
insert into NOWSHOWING values(226,02,05,61,'03월 31일','n'); 
insert into NOWSHOWING values(227,02,05,62,'03월 31일','n');
insert into NOWSHOWING values(228,02,05,63,'03월 31일','n');
insert into NOWSHOWING values(229,02,05,64,'03월 31일','n');
insert into NOWSHOWING values(230,02,05,65,'03월 31일','n'); -- 의정부 메가박스 2관 듄 11월 30일

insert into NOWSHOWING values(231,01,05,56,'04월 01일','n'); 
insert into NOWSHOWING values(232,01,05,57,'04월 01일','n');
insert into NOWSHOWING values(233,01,05,58,'04월 01일','n');
insert into NOWSHOWING values(234,01,05,59,'04월 01일','n');
insert into NOWSHOWING values(235,01,05,60,'04월 01일','n'); -- 의정부 메가박스 1관 스파이더맨
insert into NOWSHOWING values(236,02,05,61,'04월 01일','n'); 
insert into NOWSHOWING values(237,02,05,62,'04월 01일','n');
insert into NOWSHOWING values(238,02,05,63,'04월 01일','n');
insert into NOWSHOWING values(239,02,05,64,'04월 01일','n');
insert into NOWSHOWING values(240,02,05,65,'04월 01일','n'); -- 의정부 메가박스 2관 듄 12월 1일

insert into NOWSHOWING values(241,01,05,56,'04월 02일','n'); 
insert into NOWSHOWING values(242,01,05,57,'04월 02일','n');
insert into NOWSHOWING values(243,01,05,58,'04월 02일','n');
insert into NOWSHOWING values(244,01,05,59,'04월 02일','n');
insert into NOWSHOWING values(245,01,05,60,'04월 02일','n'); -- 의정부 메가박스 1관 스파이더맨
insert into NOWSHOWING values(246,02,05,61,'04월 02일','n'); 
insert into NOWSHOWING values(247,02,05,62,'04월 02일','n');
insert into NOWSHOWING values(248,02,05,63,'04월 02일','n');
insert into NOWSHOWING values(249,02,05,64,'04월 02일','n');
insert into NOWSHOWING values(250,02,05,65,'04월 02일','n'); -- 의정부 메가박스 2관 듄 12월 2일

insert into NOWSHOWING values(251,01,05,56,'04월 03일','n'); 
insert into NOWSHOWING values(252,01,05,57,'04월 03일','n');
insert into NOWSHOWING values(253,01,05,58,'04월 03일','n');
insert into NOWSHOWING values(254,01,05,59,'04월 03일','n');
insert into NOWSHOWING values(255,01,05,60,'04월 03일','n'); --의정부 메가박스 1관 스파이더맨
insert into NOWSHOWING values(256,02,05,61,'04월 03일','n'); 
insert into NOWSHOWING values(257,02,05,62,'04월 03일','n');
insert into NOWSHOWING values(258,02,05,63,'04월 03일','n');
insert into NOWSHOWING values(259,02,05,64,'04월 03일','n');
insert into NOWSHOWING values(260,02,05,65,'04월 03일','n'); -- 의정부 메가박스  2관 듄 12월 3일


--- 의정부 cgv

insert into NOWSHOWING values(261,01,06,66,'03월 31일','n'); 
insert into NOWSHOWING values(262,01,06,67,'03월 31일','n');
insert into NOWSHOWING values(263,01,06,68,'03월 31일','n');
insert into NOWSHOWING values(264,01,06,69,'03월 31일','n');
insert into NOWSHOWING values(265,01,06,70,'03월 31일','n'); -- 의정부cgv  1관 스파이더맨
insert into NOWSHOWING values(266,02,06,71,'03월 31일','n'); 
insert into NOWSHOWING values(267,02,06,72,'03월 31일','n');
insert into NOWSHOWING values(268,02,06,73,'03월 31일','n');
insert into NOWSHOWING values(269,02,06,74,'03월 31일','n');
insert into NOWSHOWING values(270,02,06,75,'03월 31일','n'); -- 의정부cgv 2관 듄 

insert into NOWSHOWING values(271,01,06,66,'04월 01일','n'); 
insert into NOWSHOWING values(272,01,06,67,'04월 01일','n');
insert into NOWSHOWING values(273,01,06,68,'04월 01일','n');
insert into NOWSHOWING values(274,01,06,69,'04월 01일','n');
insert into NOWSHOWING values(275,01,06,70,'04월 01일','n'); -- 의정부 cgv 1관 스파이더맨
insert into NOWSHOWING values(276,02,06,71,'04월 01일','n'); 
insert into NOWSHOWING values(277,02,06,72,'04월 01일','n');
insert into NOWSHOWING values(278,02,06,73,'04월 01일','n');
insert into NOWSHOWING values(279,02,06,74,'04월 01일','n');
insert into NOWSHOWING values(280,02,06,75,'04월 01일','n'); -- 의정부 cgv 2관 듄 12월 1일

insert into NOWSHOWING values(281,01,06,66,'04월 02일','n'); 
insert into NOWSHOWING values(282,01,06,67,'04월 02일','n');
insert into NOWSHOWING values(283,01,06,68,'04월 02일','n');
insert into NOWSHOWING values(284,01,06,69,'04월 02일','n');
insert into NOWSHOWING values(285,01,06,70,'04월 02일','n'); -- 의정부 cgv 1관 스파이더맨
insert into NOWSHOWING values(286,02,06,71,'04월 02일','n'); 
insert into NOWSHOWING values(287,02,06,72,'04월 02일','n');
insert into NOWSHOWING values(288,02,06,73,'04월 02일','n');
insert into NOWSHOWING values(289,02,06,74,'04월 02일','n');
insert into NOWSHOWING values(290,02,06,75,'04월 02일','n'); -- 의정부 cgv 2관 듄 12월 2일

insert into NOWSHOWING values(291,01,06,66,'04월 03일','n'); 
insert into NOWSHOWING values(292,01,06,67,'04월 03일','n');
insert into NOWSHOWING values(293,01,06,68,'04월 03일','n');
insert into NOWSHOWING values(294,01,06,69,'04월 03일','n');
insert into NOWSHOWING values(295,01,06,70,'04월 03일','n'); --의정부 cgv 1관 스파이더맨
insert into NOWSHOWING values(296,02,06,71,'04월 03일','n'); 
insert into NOWSHOWING values(297,02,06,72,'04월 03일','n');
insert into NOWSHOWING values(298,02,06,73,'04월 03일','n');
insert into NOWSHOWING values(299,02,06,74,'04월 03일','n');
insert into NOWSHOWING values(300,02,06,75,'04월 03일','n'); -- 의정부 cgv 2관 듄 12월 3일

--용인 메가박스

insert into NOWSHOWING values(301,01,07,76,'03월 31일','n'); 
insert into NOWSHOWING values(302,01,07,77,'03월 31일','n');
insert into NOWSHOWING values(303,01,07,78,'03월 31일','n');
insert into NOWSHOWING values(304,01,07,79,'03월 31일','n');
insert into NOWSHOWING values(305,01,07,80,'03월 31일','n'); -- 용인 메가박스  1관 스파이더맨
insert into NOWSHOWING values(306,02,07,81,'03월 31일','n'); 
insert into NOWSHOWING values(307,02,07,82,'03월 31일','n');
insert into NOWSHOWING values(308,02,07,83,'03월 31일','n');
insert into NOWSHOWING values(309,02,07,84,'03월 31일','n');
insert into NOWSHOWING values(310,02,07,85,'03월 31일','n'); -- 용인 메가박스 2관 듄 

insert into NOWSHOWING values(311,01,07,76,'04월 01일','n'); 
insert into NOWSHOWING values(312,01,07,77,'04월 01일','n');
insert into NOWSHOWING values(313,01,07,78,'04월 01일','n');
insert into NOWSHOWING values(314,01,07,79,'04월 01일','n');
insert into NOWSHOWING values(315,01,07,80,'04월 01일','n'); -- 용인 메가박스  1관 스파이더맨
insert into NOWSHOWING values(316,02,07,81,'04월 01일','n'); 
insert into NOWSHOWING values(317,02,07,82,'04월 01일','n');
insert into NOWSHOWING values(318,02,07,83,'04월 01일','n');
insert into NOWSHOWING values(319,02,07,84,'04월 01일','n');
insert into NOWSHOWING values(320,02,07,85,'04월 01일','n'); -- 용인 메가박스2관 듄 12월 1일

insert into NOWSHOWING values(321,01,07,76,'04월 02일','n'); 
insert into NOWSHOWING values(322,01,07,77,'04월 02일','n');
insert into NOWSHOWING values(323,01,07,78,'04월 02일','n');
insert into NOWSHOWING values(324,01,07,79,'04월 02일','n');
insert into NOWSHOWING values(325,01,07,80,'04월 02일','n'); -- 용인 메가박스 1관 스파이더맨
insert into NOWSHOWING values(326,02,07,81,'04월 02일','n'); 
insert into NOWSHOWING values(327,02,07,82,'04월 02일','n');
insert into NOWSHOWING values(328,02,07,83,'04월 02일','n');
insert into NOWSHOWING values(329,02,07,84,'04월 02일','n');
insert into NOWSHOWING values(330,02,07,85,'04월 02일','n'); -- 용인 메가박스 2관 듄 12월 2일

insert into NOWSHOWING values(331,01,07,76,'04월 03일','n'); 
insert into NOWSHOWING values(332,01,07,77,'04월 03일','n');
insert into NOWSHOWING values(333,01,07,78,'04월 03일','n');
insert into NOWSHOWING values(334,01,07,79,'04월 03일','n');
insert into NOWSHOWING values(335,01,07,80,'04월 03일','n'); --용인 메가박스 1관 스파이더맨
insert into NOWSHOWING values(336,02,07,81,'04월 03일','n'); 
insert into NOWSHOWING values(337,02,07,82,'04월 03일','n');
insert into NOWSHOWING values(338,02,07,83,'04월 03일','n');
insert into NOWSHOWING values(339,02,07,84,'04월 03일','n');
insert into NOWSHOWING values(340,02,07,85,'04월 03일','n'); -- 용인 메가박스 2관 듄 12월 3일

--용인 cgv

insert into NOWSHOWING values(341,01,08,86,'03월 31일','n'); 
insert into NOWSHOWING values(342,01,08,87,'03월 31일','n');
insert into NOWSHOWING values(343,01,08,88,'03월 31일','n');
insert into NOWSHOWING values(344,01,08,89,'03월 31일','n');
insert into NOWSHOWING values(345,01,08,90,'03월 31일','n'); -- 용인 cgv  1관 스파이더맨
insert into NOWSHOWING values(346,02,08,91,'03월 31일','n'); 
insert into NOWSHOWING values(347,02,08,92,'03월 31일','n');
insert into NOWSHOWING values(348,02,08,93,'03월 31일','n');
insert into NOWSHOWING values(349,02,08,94,'03월 31일','n');
insert into NOWSHOWING values(350,02,08,95,'03월 31일','n'); -- 용인 cgv 2관 듄 

insert into NOWSHOWING values(351,01,08,86,'04월 01일','n'); 
insert into NOWSHOWING values(352,01,08,87,'04월 01일','n');
insert into NOWSHOWING values(353,01,08,88,'04월 01일','n');
insert into NOWSHOWING values(354,01,08,89,'04월 01일','n');
insert into NOWSHOWING values(355,01,08,90,'04월 01일','n'); -- 용인 cgv  1관 스파이더맨
insert into NOWSHOWING values(356,02,08,91,'04월 01일','n'); 
insert into NOWSHOWING values(357,02,08,92,'04월 01일','n');
insert into NOWSHOWING values(358,02,08,93,'04월 01일','n');
insert into NOWSHOWING values(359,02,08,94,'04월 01일','n');
insert into NOWSHOWING values(360,02,08,95,'04월 01일','n'); -- 용인 cgv 2관 듄 12월 1일

insert into NOWSHOWING values(361,01,08,86,'04월 02일','n'); 
insert into NOWSHOWING values(362,01,08,87,'04월 02일','n');
insert into NOWSHOWING values(363,01,08,88,'04월 02일','n');
insert into NOWSHOWING values(364,01,08,89,'04월 02일','n');
insert into NOWSHOWING values(365,01,08,90,'04월 02일','n'); -- 용인 cgv 1관 스파이더맨
insert into NOWSHOWING values(366,02,08,91,'04월 02일','n'); 
insert into NOWSHOWING values(367,02,08,92,'04월 02일','n');
insert into NOWSHOWING values(368,02,08,93,'04월 02일','n');
insert into NOWSHOWING values(369,02,08,94,'04월 02일','n');
insert into NOWSHOWING values(370,02,08,95,'04월 02일','n'); -- 용인 cgv 2관 듄 12월 2일

insert into NOWSHOWING values(371,01,08,76,'04월 03일','n'); 
insert into NOWSHOWING values(372,01,08,77,'04월 03일','n');
insert into NOWSHOWING values(373,01,08,78,'04월 03일','n');
insert into NOWSHOWING values(374,01,08,79,'04월 03일','n');
insert into NOWSHOWING values(375,01,08,80,'04월 03일','n'); --용인 cgv 1관 스파이더맨
insert into NOWSHOWING values(376,02,08,81,'04월 03일','n'); 
insert into NOWSHOWING values(377,02,08,82,'04월 03일','n');
insert into NOWSHOWING values(378,02,08,83,'04월 03일','n');
insert into NOWSHOWING values(379,02,08,84,'04월 03일','n');
insert into NOWSHOWING values(380,02,08,85,'04월 03일','n'); --용인 cgv 2관 스파이더맨
