DROP TABLE CDS;
DROP TABLE GAMES;
DROP TABLE BOOKS;
DROP TABLE PROVIDER;
DROP TABLE MEMBERS;
DROP TABLE BORROW;
DROP TABLE EQUIPMENT;
DROP TABLE STAFF_TYPE;
DROP TABLE MEMBER_TYPE; 
DROP TABLE SHELF;
DROP TABLE KEYS;
DROP TABLE ROOM;
DROP TABLE FINANCE;
DROP TABLE STAFF;

alter session set nls_language='ENGLISH';
alter session set nls_date_format='DD-MON-YYYY'; 

CREATE TABLE CDS
(CD_ID int NOT NULL,
NAME VARCHAR2(100),
CALL_NUM VARCHAR2(100),
CATEGORY VARCHAR2(50),
MATERIAL_ID int,
PRIMARY KEY (CD_ID)
);

INSERT INTO CDS VALUES
(201, 'Pablo Picasso 1881-1973 : Çarmıha geriliş', 'N6853.P5.P112 VCD', 'Documentary', 201);
INSERT INTO CDS VALUES
(202, 'Henri Matisse 1839-1906 : Kralın hüznü', 'ND553.M37.H51 VCD', 'Documentary', 202);
INSERT INTO CDS VALUES
(203, 'The square', 'PN1997.2 .S783 2018 DVD', 'Drama', 203);
INSERT INTO CDS VALUES
(204, 'The snowman', 'PN1997.2 .S674 2018 DVD', 'Fiction', 204);
INSERT INTO CDS VALUES
(205, 'Happy death day', 'PN1997.2 .H252 2018 DVD', 'Horror', 205);
INSERT INTO CDS VALUES
(206, 'It', 'PN1997.2 .I882 2018 DVD', 'Horror', 206);
INSERT INTO CDS VALUES
(207, 'Cars 3', 'PN1997.5 .C37 2017 DVD',  'Animation', 207);
INSERT INTO CDS VALUES
(208, 'Inside out', 'PN1997.5 .I57 2016 DVD',  'Animation', 208);
INSERT INTO CDS VALUES
(209, 'The zookeepers wife', 'PN1997 .Z662 2017 DVD',  'Historical', 209);
INSERT INTO CDS VALUES
(210, 'Silence', 'PN1997.2 .S574 2017 DVD', 'Historical', 210);
INSERT INTO CDS VALUES
(211, 'Crimson peak', 'PN1997.2 .C752 2017 DVD', 'Fantasy', 211);
INSERT INTO CDS VALUES
(212, 'The dark tower', 'PN1997.2 .D372 2017 DVD', 'Fantasy', 212);
INSERT INTO CDS VALUES
(213, 'Pablo Picasso 1881-1973 : Çarmıha geriliş', 'N6853.P5.P113 VCD', 'Documentary', 213);
INSERT INTO CDS VALUES
(214, 'Happy death day', 'PN1997.2 .H253 2018 DVD', 'Horror', 214);
INSERT INTO CDS VALUES
(215, 'Inside out', 'PN1997.5 .I58 2016 DVD',  'Animation', 215);
INSERT INTO CDS VALUES
(216, 'Inside out', 'PN1997.5 .I59 2016 DVD',  'Animation', 216);
INSERT INTO CDS VALUES
(217, 'Crimson peak', 'PN1997.2 .C753 2017 DVD', 'Fantasy', 217);

CREATE TABLE GAMES
(GAME_ID int NOT NULL,
NAME VARCHAR2(100),
CALL_NUM VARCHAR2(100),
CATEGORY VARCHAR2(50),
MATERIAL_ID int,
PRIMARY KEY (GAME_ID)
);

INSERT INTO GAMES VALUES
(101, '007 James Bond: Goldfinger', 'GA790', 'Adventure', 101);
INSERT INTO GAMES VALUES
(102, 'BadPlots', 'GA880', 'Card', 102);
INSERT INTO GAMES VALUES
(103, 'POTUS: Battle Inside the Trump White House', 'GB290', 'Card', 103);
INSERT INTO GAMES VALUES
(104, 'Fever', 'GC220', 'Dice', 104);
INSERT INTO GAMES VALUES
(105, 'Greed', 'GA235', 'Dice', 105);
INSERT INTO GAMES VALUES
(106, 'Spiel', 'GA237', 'Math', 106);
INSERT INTO GAMES VALUES
(107, '4th corner', 'GB233',  'Maze', 107);
INSERT INTO GAMES VALUES
(108, 'The $128,000 Question Game', 'GA255',  'Memory', 108);
INSERT INTO GAMES VALUES
(109, '1, 2, 3, Papagei', 'GB295',  'Memory', 109);
INSERT INTO GAMES VALUES
(110, 'The $tock Exchange Game', 'GC230', 'Strategy', 110);
INSERT INTO GAMES VALUES
(111, 'Chess',  'GB90', 'Strategy', 111);
INSERT INTO GAMES VALUES
(112, 'Go',  'GC28', 'Strategy', 112);
INSERT INTO GAMES VALUES
(113, '007 James Bond: Goldfinger', 'GA791', 'Adventure', 113);
INSERT INTO GAMES VALUES
(114, '007 James Bond: Goldfinger', 'GA792', 'Adventure', 114);
INSERT INTO GAMES VALUES
(115, 'Chess',  'GB91', 'Strategy', 115);
INSERT INTO GAMES VALUES
(116, '4th corner', 'GB234',  'Maze', 116);

CREATE TABLE BOOKS
(BOOK_ID int NOT NULL,
AUTHOR VARCHAR2(100),
EDITION int,
LANGUAGE VARCHAR2(50),
CALL_NUM VARCHAR2(50),
TITLE VARCHAR2(100),
ISBN VARCHAR2(100),
PUBLISHER VARCHAR2(50),
CATEGORY VARCHAR2(50),
MATERIAL_ID int,
PRIMARY KEY (BOOK_ID)
);

INSERT INTO BOOKS VALUES
(1, 'Erdogan, Asli', 9, 'Turkish', 'PL248.E736 B573 2017', 'Bir delinin guncesi', '9789752893191', 'Istanbul : Everest', 'Literature', 1);
INSERT INTO BOOKS VALUES
(2, 'London, Jack', NULL, 'English', 'PS3523 .O46 A6 2010 EB', 'The call of the wild and selected stories', '9781775419587', '[Waiheke Island] : Floating Press', 'Fiction', 2);
INSERT INTO BOOKS VALUES
(3, 'Beecher, Donald', 1, 'Italian', 'PQ4233 .R46 2008', 'Renaissance comedy : the Italian masters', '9781442688988', 'Toronto : University of Toronto Press', 'Comedy', 3);
INSERT INTO BOOKS VALUES
(4, 'Schiller, Friedrich', NULL, 'German', 'PT2473 .R3 2010 EB', 'The robbers', '9781775419730', '[Waiheke Island] : Floating Press', 'Fiction', 4);
INSERT INTO BOOKS VALUES
(5, 'Ingram, Kevin', 1, 'English', 'DS135 .S7 C583 2009 EB', 'The Conversos and Moriscos in late medieval Spain and beyond', '9789047428978', 'Leiden ; Boston : Brill', 'History', 5);
INSERT INTO BOOKS VALUES
(6, 'Burg, Mary Ann', 3, 'English', 'RA790.5', 'The behavioral health specialist in primary care : skills for integrated practice', '9780826129888', 'New York, NY : Springer Publishing Company', 'Medicine', 6);
INSERT INTO BOOKS VALUES
(7, 'Green, Keith Evan', 2, 'English', 'NA2543 .T43 G69 2016 EB', 'Architectural robotics : ecosystems of bits, bytes, and biology', '9780262334211', 'Cambridge, Massachusetts : The MIT Press', 'Biology', 7);
INSERT INTO BOOKS VALUES
(8, 'Heinz, Matthew', NULL, 'English', 'HQ77.9 .H44 2016 EB', 'Entering transmasculinity : the inevitability of discourse', '9781783205691', 'Bristol, UK : Intellect', 'Science', 8);
INSERT INTO BOOKS VALUES
(9, 'Helvétius', 5, 'French', 'B2043 .A2 1981', 'Correspondance générale d Helvétius', '9781442673502', 'Toronto : University of Toronto Press', 'Philosophy', 9);
INSERT INTO BOOKS VALUES
(10, 'Marx, Karl', 3, 'English', 'HB501.M36 1990 V.3', 'Capital : a critique of political economy', '9780140445701', 'London ; New York, N.Y., USA : Penguin Books', 'Economics', 10);
INSERT INTO BOOKS VALUES
(11, 'Helvétius', 5, 'French', 'B2043 .A3 1981', 'Correspondance générale d Helvétius', '9781442673502', 'Toronto : University of Toronto Press', 'Philosophy', 11);
INSERT INTO BOOKS VALUES
(12, 'Ingram, Kevin', 1, 'English', 'DS135 .S7 C584 2009 EB', 'The Conversos and Moriscos in late medieval Spain and beyond', '9789047428978', 'Leiden ; Boston : Brill', 'History', 12);
INSERT INTO BOOKS VALUES
(13, 'Erdogan, Asli', 9, 'Turkish', 'PL248.E736 B574 2017', 'Bir delinin guncesi', '9789752893191', 'Istanbul : Everest', 'Literature', 13);
INSERT INTO BOOKS VALUES
(14, 'Erdogan, Asli', 9, 'Turkish', 'PL248.E736 B575 2017', 'Bir delinin guncesi', '9789752893191', 'Istanbul : Everest', 'Literature', 14);

CREATE TABLE PROVIDER
(PROVIDER_ID int NOT NULL,
CONTACT VARCHAR2(50),
NAME VARCHAR2(50),
PRIMARY KEY (PROVIDER_ID)
);

INSERT INTO PROVIDER VALUES
(1, 'ALIBRIS@GMAIL.COM', 'ALIBRIS');
INSERT INTO PROVIDER VALUES
(2, 'BOOKTOPIA@GMAIL.COM', 'BOOKTOPIA');
INSERT INTO PROVIDER VALUES
(3, 'HALF@GMAIL.COM', 'HALF');
INSERT INTO PROVIDER VALUES
(4, 'ANGUSROBERTSON@GMAIL.COM', 'ANGUS & ROBERTSON');
INSERT INTO PROVIDER VALUES
(5, 'BARNESNOBLE@GMAIL.COM', 'BARNES & NOBLE');

CREATE TABLE ROOM (
    ROOM_ID int NOT NULL,
    ROOM_NAME varchar(100) NOT NULL,
    FLOOR int NOT NULL,
    ROOM_TYPE varchar(100) NOT NULL,
    PRIMARY KEY (ROOM_ID)
);

INSERT INTO ROOM VALUES (1, 'AP', 2, 'Reading room');
INSERT INTO ROOM VALUES (2, 'QZ', 2, 'Reading room');
INSERT INTO ROOM VALUES (3, 'Studying room 1', 2, 'Reading room');
INSERT INTO ROOM VALUES (4, 'Studying room 3', 2 , 'Reading room');
INSERT INTO ROOM VALUES (5, 'Studying room 2', 2, 'Reading room');
INSERT INTO ROOM VALUES (6, 'Studying room 4',2, 'Reading room');
INSERT INTO ROOM VALUES (7, 'Main', 1, 'Multimedia');
INSERT INTO ROOM VALUES (8, 'Multimedia 1', 1, 'Multimedia');
INSERT INTO ROOM VALUES (9, 'Multimedia 2', 1, 'Multimedia');
INSERT INTO ROOM VALUES (10, 'Game Salon 1', 1, 'Gaming room');
INSERT INTO ROOM VALUES (11, 'Game Salon 2', 1, 'Gaming room');
INSERT INTO ROOM VALUES (12, 'Computer lab', 1, 'Multimedia');
INSERT INTO ROOM VALUES (13, 'Studying room 5', 2, 'Reading room');
INSERT INTO ROOM VALUES (14, 'Studying room 6', 2, 'Reading room');
INSERT INTO ROOM VALUES (15, 'Game Salon 3', 1, 'Gaming room');


CREATE TABLE KEYS (
    KEY_ID int NOT NULL,
    MATERIAL_ID int NOT NULL,
    ROOM_ID int NOT NULL,
    PRIMARY KEY (KEY_ID)
);

INSERT INTO KEYS  VALUES (1, 1, 6);
INSERT INTO KEYS  VALUES (2, 5, 2);
INSERT INTO KEYS  VALUES (3, 7, 10);
INSERT INTO KEYS  VALUES (4, 3, 1);
INSERT INTO KEYS  VALUES (5, 7, 4);
INSERT INTO KEYS  VALUES (6, 6, 8);
INSERT INTO KEYS  VALUES (7, 2, 9);
INSERT INTO KEYS  VALUES (8, 4, 5);
INSERT INTO KEYS  VALUES (9, 9, 3);
INSERT INTO KEYS  VALUES (10, 12, 11);
INSERT INTO KEYS  VALUES (11, 15, 13);
INSERT INTO KEYS  VALUES (12, 14, 10);
INSERT INTO KEYS  VALUES (13, 11, 10);
INSERT INTO KEYS  VALUES (14, 13, 12);
INSERT INTO KEYS  VALUES (15, 15, 14);

CREATE TABLE SHELF (
    SHELF_ID int NOT NULL,
    CAPACITY int NOT NULL,
    CATEGORY varchar(100) NOT NULL,
    ROOM_ID int NOT NULL,
    PRIMARY KEY (SHELF_ID),
    FOREIGN KEY (ROOM_ID) REFERENCES ROOM (ROOM_ID)
);

INSERT INTO SHELF VALUES (1, 10 , 'Drama', 1);
INSERT INTO SHELF VALUES (2, 10 , 'Math', 2);
INSERT INTO SHELF VALUES (3, 20 , 'History', 8);
INSERT INTO SHELF VALUES (4, 20 , 'Science', 2);
INSERT INTO SHELF VALUES (5, 20 , 'Romance', 14);
INSERT INTO SHELF VALUES (6, 20 , 'Action and Adventure', 13);
INSERT INTO SHELF VALUES (7, 50 , 'Art', 12);
INSERT INTO SHELF VALUES (8, 50 , 'Poetry', 5);
INSERT INTO SHELF VALUES (9, 50 , 'Comics', 2);
INSERT INTO SHELF VALUES (10, 80 , 'Journals', 11);
INSERT INTO SHELF VALUES (11, 80 , 'Computer Engineering', 7);
INSERT INTO SHELF VALUES (12, 20 , 'Electirical Engineering', 15);
INSERT INTO SHELF VALUES (13, 20 , 'Chemical Engineering', 9);
INSERT INTO SHELF VALUES (14, 20 , 'Biographies', 4);
INSERT INTO SHELF VALUES (15, 20 , 'Fantasy', 3);

CREATE TABLE MEMBER_TYPE (
    MEMBER_TYPE_ID int NOT NULL,
    MEMBER_TYPE varchar(100) NOT NULL,
    PRIMARY KEY (MEMBER_TYPE_ID )
);
INSERT INTO MEMBER_TYPE VALUES (1, 'Student');
INSERT INTO MEMBER_TYPE VALUES (2, 'Faculty members');
INSERT INTO MEMBER_TYPE VALUES (3, 'Researcher asistans');
INSERT INTO MEMBER_TYPE VALUES (4, 'Adminisrative staff');
INSERT INTO MEMBER_TYPE VALUES (5, 'Lecturer');
INSERT INTO MEMBER_TYPE VALUES (6, 'Part-Time Lecturer');
INSERT INTO MEMBER_TYPE VALUES (7, 'Professor');
INSERT INTO MEMBER_TYPE VALUES (8, 'Assistant Professor');
INSERT INTO MEMBER_TYPE VALUES (9, 'Associate Professor');
INSERT INTO MEMBER_TYPE VALUES (10, 'Rector');

CREATE TABLE STAFF_TYPE(
    STAFF_TYPE_ID int NOT NULL,
    STAFF_TYPE varchar(100) NOT NULL,
    PRIMARY KEY (STAFF_TYPE_ID)   
);

INSERT INTO STAFF_TYPE VALUES (1, 'Admin');
INSERT INTO STAFF_TYPE VALUES (2, 'Director');
INSERT INTO STAFF_TYPE VALUES (3, 'Archivist');
INSERT INTO STAFF_TYPE VALUES (4, 'Systems & Reference Librarian');
INSERT INTO STAFF_TYPE VALUES (5, 'Web Services Team Leader & Reference Librarian');
INSERT INTO STAFF_TYPE VALUES (6, 'Information Resources Assistant');
INSERT INTO STAFF_TYPE VALUES (7, 'Collection Development Librarian & Reference Team Leader');
INSERT INTO STAFF_TYPE VALUES (8, 'Reference Librarian & Head of Circulation');
INSERT INTO STAFF_TYPE VALUES (9, 'Liaison Coordinator & Reference Librarian');
INSERT INTO STAFF_TYPE VALUES (10, 'Assistant of the Library');

CREATE TABLE MEMBERS 
(
    MEMBER_ID INT NOT NULL,
    NAME VARCHAR2(100) NOT NULL,
    SEX VARCHAR2(20),
    DATE_OF_BIRTH DATE NOT NULL,
    PHONE_NO VARCHAR2(50) NOT NULL,
    DEPARTMENT VARCHAR2(50),
    MEMBER_TYPE_ID INT NOT NULL,
    LOGIN_ID INT NOT NULL,
    PRIMARY KEY (MEMBER_ID)
);

INSERT INTO MEMBERS VALUES 
(1, 'AHMET', 'MALE', TO_DATE('2-APR-1981', 'DD-MON-YYYY'), '5415893240', 'COMPUTER ENGINEERING', 7, 10002);
INSERT INTO MEMBERS VALUES 
(2, 'ALI', 'MALE', TO_DATE('4-MAR-1999', 'DD-MON-YYYY'), '5315593441', 'MECHANICAL ENGINEERING', 3, 10007);
INSERT INTO MEMBERS VALUES 
(3, 'ZEHRA', 'FEMALE', TO_DATE('22-DEC-1997', 'DD-MON-YYYY'), '5345993299', 'COMPUTER ENGINEERING', 1, 10005);
INSERT INTO MEMBERS VALUES 
(4, 'EYLUL', 'FEMALE', TO_DATE('19-FEB-1989', 'DD-MON-YYYY'), '5445395271', 'ARCHITECTURE', 3, 10008);
INSERT INTO MEMBERS VALUES 
(5, 'FURKAN', 'MALE', TO_DATE('7-JAN-1995', 'DD-MON-YYYY'), '5419993247', 'ELECTRICAL ENGINEERING', 2, 10014);
INSERT INTO MEMBERS VALUES 
(6, 'KAAN', 'MALE', TO_DATE('27-FEB-1991', 'DD-MON-YYYY'), '5393743258', 'ARCHITECTURE', 3, 10017);
INSERT INTO MEMBERS VALUES 
(7, 'MIRAY', 'FEMALE', TO_DATE('21-JAN-1984', 'DD-MON-YYYY'), '5352343683', 'ELECTRICAL ENGINEERING', 7, 10019);
INSERT INTO MEMBERS VALUES 
(8, 'YIGIT', 'MALE', TO_DATE('7-DEC-1992', 'DD-MON-YYYY'), '5363457649', 'PREPARATORY SCHOOL', 1, 10021);
INSERT INTO MEMBERS VALUES 
(9, 'BERKAY', 'MALE', TO_DATE('30-JUN-1975', 'DD-MON-YYYY'), '5458913621', 'ELECTRICAL ENGINEERING', 8, 10035);
INSERT INTO MEMBERS VALUES 
(10, 'SELMA', 'FEMALE', TO_DATE('8-APR-1971', 'DD-MON-YYYY'), '5399988105', 'COMPUTER ENGINEERING', 9, 10115);
INSERT INTO MEMBERS VALUES 
(11, 'ULAS', 'MALE', TO_DATE('11-JAN-1996', 'DD-MON-YYYY'), '5307873255', 'PREPARATORY SCHOOL', 1, 10133);
INSERT INTO MEMBERS VALUES 
(12, 'MERVE', 'FEMALE', TO_DATE('01-NOV-1988', 'DD-MON-YYYY'), '5373963941', 'MECHANICAL ENGINEERING', 2, 10105);
INSERT INTO MEMBERS VALUES 
(13, 'ERHAN', 'MALE', TO_DATE('18-MAR-1986', 'DD-MON-YYYY'), '5449833344', 'COMPUTER ENGINEERING', 3, 10198);
INSERT INTO MEMBERS VALUES 
(14, 'EMRE', 'MALE', TO_DATE('28-APR-1998', 'DD-MON-YYYY'), '5357558887', 'CIVIL ENGINEERING', 1, 10074);
INSERT INTO MEMBERS VALUES 
(15, 'RIDVAN', 'MALE', TO_DATE('17-DEC-1997', 'DD-MON-YYYY'), '5408755588', 'CIVIL ENGINEERING', 1, 10167);

CREATE TABLE STAFF
(
    STAFF_ID INT NOT NULL,
    NAME VARCHAR2(100) NOT NULL,
    SALARY INT NOT NULL,
    ADDRESS VARCHAR2(100) NOT NULL,
    SEX VARCHAR2(20),
    DATE_OF_BIRTH DATE NOT NULL,
    PHONE_NO VARCHAR2(50) NOT NULL,
    STAFF_TYPE_ID INT NOT NULL,
    LOGIN_ID INT NOT NULL,
    PRIMARY KEY (STAFF_ID)
);

INSERT INTO STAFF VALUES
(1, 'BELGIN', 5000, 'GULBAHCE 1', 'FEMALE', TO_DATE('17-DEC-1987', 'DD-MON-YYYY'), '5408756728', 1, 12001);
INSERT INTO STAFF VALUES
(2, 'EMRE', 3000, 'ALTINTAS 5', 'MALE', TO_DATE('23-JAN-1983', 'DD-MON-YYYY'), '5342786223', 2, 12002);
INSERT INTO STAFF VALUES
(3, 'BORA', 2000, 'BADEMLER 3', 'MALE', TO_DATE('28-DEC-1981', 'DD-MON-YYYY'), '5468346194', 10, 12003);
INSERT INTO STAFF VALUES
(4, 'ZEHRA', 3400, 'BALIKLIOVA 7', 'FEMALE', TO_DATE('1-JUN-1978', 'DD-MON-YYYY'), '5304600128', 3, 12004);
INSERT INTO STAFF VALUES
(5, 'ANIL', 2100, 'CAMLICAY 1', 'MALE', TO_DATE('12-AUG-1979', 'DD-MON-YYYY'), '5393746119', 10, 12005);
INSERT INTO STAFF VALUES
(6, 'HAKAN', 3800, 'GULBAHCE 4', 'MALE', TO_DATE('15-FEB-1988', 'DD-MON-YYYY'), '5383746122', 5, 12006);
INSERT INTO STAFF VALUES
(7, 'ELIF', 3300, 'GULBAHCE 18', 'FEMALE', TO_DATE('21-MAR-1977', 'DD-MON-YYYY'), '5492746531', 4, 12007);
INSERT INTO STAFF VALUES
(8, 'OSMAN', 3000, 'BADEMLER 27', 'MALE', TO_DATE('17-JAN-1983', 'DD-MON-YYYY'), '5408951272', 2, 12008);
INSERT INTO STAFF VALUES
(9, 'TOLGA', 4000, 'ALTINTAS 12', 'MALE', TO_DATE('28-DEC-1974', 'DD-MON-YYYY'), '5342766645', 7, 12009);
INSERT INTO STAFF VALUES
(10, 'NESLI', 2000, 'BALIKLIOVA 21', 'FEMALE', TO_DATE('19-SEP-1980', 'DD-MON-YYYY'), '5409116715', 10, 12010);

CREATE TABLE EQUIPMENT (
    EQUIPMENT_ID int NOT NULL,
    EQUIPMENT_NAME varchar(100) NOT NULL,
    ROOM_ID int NOT NULL,
    PRIMARY KEY (EQUIPMENT_ID),
    FOREIGN KEY (ROOM_ID) REFERENCES ROOM(ROOM_ID)
);
INSERT INTO EQUIPMENT VALUES (1, 'Table',  2);
INSERT INTO EQUIPMENT VALUES (2, 'Chair',  5);
INSERT INTO EQUIPMENT VALUES (3, 'Armchair',  8);
INSERT INTO EQUIPMENT VALUES (4, 'Computer', 15);
INSERT INTO EQUIPMENT VALUES (5, 'Triple socket', 14);
INSERT INTO EQUIPMENT VALUES (6, 'Boarding table', 3);
INSERT INTO EQUIPMENT VALUES (7, 'Computer cabinet', 6);
INSERT INTO EQUIPMENT VALUES (8, 'Computer cable', 10);
INSERT INTO EQUIPMENT VALUES (9, 'Ethernet cable', 13);
INSERT INTO EQUIPMENT VALUES (10, 'Bookcase', 12);
INSERT INTO EQUIPMENT VALUES (11, 'Headphones', 4);
INSERT INTO EQUIPMENT VALUES (12, 'Game timer', 11);
INSERT INTO EQUIPMENT VALUES (13, 'Table lamp', 9);
INSERT INTO EQUIPMENT VALUES (14, 'Cleaning kit', 1);
INSERT INTO EQUIPMENT VALUES (15, 'Loudspeaker', 7);                                                                                                                                                                        

CREATE TABLE BORROW (
    BORROW_ID int NOT NULL,
    MATERIAL_ID int NOT NULL,
    MEMBER_ID int NOT NULL,
    STAFF_ID int NOT NULL,
    CATEGORY varchar(100) NOT NULL,
    BORROWED_FROM_DATE DATE NOT NULL,
    BORROWED_TO_DATE DATE NOT NULL,
    RETURN_DATE DATE NULL,
    PRIMARY KEY (BORROW_ID)
);

INSERT INTO BORROW VALUES (1, 12, 7, 3, 'CD', TO_DATE('22-FEB-2018', 'DD-MON-YYYY'), TO_DATE('25-FEB-2018', 'DD-MON-YYYY'), TO_DATE('24-FEB-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (2, 8, 8, 5, 'Book', TO_DATE('02-JAN-2018', 'DD-MON-YYYY'), TO_DATE('12-JAN-2018', 'DD-MON-YYYY'), TO_DATE('14-JAN-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (3, 15, 13, 10, 'Book', TO_DATE('3-OCT-2018', 'DD-MON-YYYY'), TO_DATE('6-OCT-2018', 'DD-MON-YYYY'), TO_DATE('4-OCT-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (4, 2, 10, 10, 'Game', TO_DATE('15-DEC-2018', 'DD-MON-YYYY'), TO_DATE('25-DEC-2018', 'DD-MON-YYYY'), TO_DATE('22-DEC-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (5, 1, 3, 5, 'Game', TO_DATE('03-FEB-2018', 'DD-MON-YYYY'), TO_DATE('22-FEB-2018', 'DD-MON-YYYY'), TO_DATE('22-FEB-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (6, 6, 2, 5, 'Book', TO_DATE('20-DEC-2018', 'DD-MON-YYYY'), TO_DATE('26-DEC-2018', 'DD-MON-YYYY'), TO_DATE('28-DEC-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (7, 2, 15, 3, 'Key', TO_DATE('20-FEB-2018', 'DD-MON-YYYY'), TO_DATE('20-FEB-2018', 'DD-MON-YYYY'), TO_DATE('20-FEB-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (8, 11, 7, 5, 'Key', TO_DATE('12-FEB-2018', 'DD-MON-YYYY'), TO_DATE('22-FEB-2018', 'DD-MON-YYYY'), TO_DATE('22-FEB-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (9, 2, 1, 10, 'Game', TO_DATE('15-APR-2018', 'DD-MON-YYYY'), TO_DATE('25-APR-2018', 'DD-MON-YYYY'), TO_DATE('20-APR-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (10, 4, 13, 3, 'CD', TO_DATE('1-SEP-2018', 'DD-MON-YYYY'), TO_DATE('5-SEP-2018', 'DD-MON-YYYY'), TO_DATE('7-SEP-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (11, 2, 13, 10, 'Key', TO_DATE('10-JAN-2018', 'DD-MON-YYYY'), TO_DATE('15-JAN-2018', 'DD-MON-YYYY'), TO_DATE('15-JAN-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (12, 10, 12, 5, 'Book', TO_DATE('12-FEB-2018', 'DD-MON-YYYY'), TO_DATE('19-FEB-2018', 'DD-MON-YYYY'), TO_DATE('22-FEB-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (13, 12, 15, 3, 'Key', TO_DATE('14-FEB-2018', 'DD-MON-YYYY'), TO_DATE('23-FEB-2018', 'DD-MON-YYYY'), TO_DATE('20-FEB-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (14, 9, 5, 10, 'CD', TO_DATE('7-OCT-2018', 'DD-MON-YYYY'), TO_DATE('23-OCT-2018', 'DD-MON-YYYY'), TO_DATE('22-OCT-2018', 'DD-MON-YYYY'));
INSERT INTO BORROW VALUES (15, 3, 7, 5, 'CD', TO_DATE('28-SEP-2018', 'DD-MON-YYYY'), TO_DATE('30-SEP-2018', 'DD-MON-YYYY'), TO_DATE('21-SEP-2018', 'DD-MON-YYYY'));

CREATE TABLE FINANCE(
    TRANSACTION_ID int NOT NULL,
    TYPE varchar(100) NULL,
    AMOUNT int NULL,
    DATES DATE NOT NULL,
    PRIMARY KEY (TRANSACTION_ID)   
);
INSERT INTO FINANCE VALUES (2, 'Salary of asisstans', 1500,TO_DATE('05-DEC-2018', 'DD-MON-YYYY'));
INSERT INTO FINANCE VALUES (3, 'Government assistance', 7000, TO_DATE('01-DEC-2018', 'DD-MON-YYYY'));
INSERT INTO FINANCE VALUES (4, 'Donation', 1800, TO_DATE('03-DEC-2018', 'DD-MON-YYYY'));
INSERT INTO FINANCE VALUES (5, 'Penalty of gameboard', 10, TO_DATE('26-DEC-2018', 'DD-MON-YYYY'));
INSERT INTO FINANCE VALUES (6, 'Penalty of book', 5, TO_DATE('27-DEC-2018', 'DD-MON-YYYY'));
INSERT INTO FINANCE VALUES (7, 'Penalty of room', 20, TO_DATE('28-DEC-2018', 'DD-MON-YYYY'));
INSERT INTO FINANCE VALUES (8, 'Penalty of CD', 15, TO_DATE('29-DEC-2018', 'DD-MON-YYYY'));
INSERT INTO FINANCE VALUES (9, 'Cleaning expense', 700,TO_DATE('04-DEC-2018', 'DD-MON-YYYY'));
INSERT INTO FINANCE VALUES (10, 'Salary of tecnicians', 850, TO_DATE('06-DEC-2018', 'DD-MON-YYYY'));
